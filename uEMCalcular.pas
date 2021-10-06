unit uEMCalcular;

interface

uses
  uIEMValoresCalculados, uIEMCalcular, uIEMParametrosCalcular, FireDAC.Comp.Client;

type
  TEMCalcular = class(TInterfacedObject, IEMCalcular)
  private
    FoParamsCalculados: IEMValoresCalculados;
    FoParamsCalcular: IEMParametrosCalcular;
    function Calcular: IEMValoresCalculados;
    procedure SetConjugadoNominal;
    procedure SetPotenciaNominal;
    procedure SetTempoAceleracao;
    procedure SetTempoAceleracaoLimite;
    procedure SetTempoRotorBloqueado;
    procedure SetVelocNominal;
    procedure SetNumeroPolos;
    procedure SetDadosTabelados;
    function GetTable: TFDMemTable;
  public
    class function New(AoParamsCalcular: IEMParametrosCalcular): IEMCalcular;
    constructor Create(AoParamsCalcular: IEMParametrosCalcular);
  end;

implementation

uses
  uEMValoresCalculados, SysUtils;

{ TEMCalcular }

function TEMCalcular.Calcular: IEMValoresCalculados;
begin
  SetPotenciaNominal;
  SetVelocNominal;
  SetNumeroPolos;
  SetDadosTabelados;
  SetConjugadoNominal;
  SetTempoAceleracao;
  SetTempoRotorBloqueado;
  SetTempoAceleracaoLimite;

  Result := FoParamsCalculados;
end;

procedure TEMCalcular.SetNumeroPolos;
var
  nSincCalc, nSinc2, nSinc4, nSinc6, nSinc8: Extended;
  p: Integer;
begin
  nSinc2 := 3600; //(120*60)/2
  nSinc4 := 1800; //(120*60)/4
  nSinc6 := 1200; //(120*60)/6
  nSinc8 := 900; //(120*60)/8

  nSincCalc := FoParamsCalculados.GetVelocidadeNominal;

  if (nSincCalc <= nSinc8) then
    p := 8
  else if ((nSincCalc > nSinc8) and (nSincCalc <= nSinc6)) then
    p := 6
  else if ((nSincCalc > nSinc6) and (nSincCalc <= nSinc4)) then
    p := 4
  else if ((nSincCalc > nSinc4) and (nSincCalc <= nSinc2)) then
    p := 2
  else
    raise Exception.Create('Polo não encontrado!');

  FoParamsCalculados.SetNumeroPolos(p);
end;

procedure TEMCalcular.SetPotenciaNominal;
var
  pn, wc, pc: Extended;
begin
  // wc= nc*2*pi/60 wc em rad/s
  wc := ((FoParamsCalcular.GetVelocidadeNominal / 60) * 2 * System.Pi);

  // Pc = wc * Ccn
  pc := (wc * FoParamsCalcular.GetConjugadoNominal);

  // Pn = Pc / ηac/100        ηac = rendimento do motor
  // Dividido por mil para deixar kw
  pn := (pc / (FoParamsCalcular.GetRendimentoTransmissao / 100)) / 1000;

  FoParamsCalculados.SetPotenciaNominalCargaRadianos(wc);
  FoParamsCalculados.SetPotenciaNominalCarga(pc);
  FoParamsCalculados.SetPotenciaNominal(pn);
end;

procedure TEMCalcular.SetVelocNominal;
var
  nm: Extended;
begin
  // Nm = z * Nc
  nm := (FoParamsCalcular.GetRelacaoTransmissao * FoParamsCalcular.GetVelocidadeNominal);

  FoParamsCalculados.SetVelocidadeNominal(nm);
end;

procedure TEMCalcular.SetConjugadoNominal;
  var Cn: Extended;
begin
  // Cn (dado tabelado) = Pn/Wn
  // Cn (dado tabelado) = Pn/2 * pi * nn

  //FoParamsCalculados.SetConjugadoNominal(GetTable.FieldByName('CONJUGADONOMINAL').AsFloat);

  Cn := FoParamsCalcular.GetConjugadoNominal / ((FoParamsCalcular.GetRendimentoTransmissao/100) * FoParamsCalcular.GetRelacaoTransmissao);
  FoParamsCalculados.SetConjugadoNominal(Cn);
end;

function TEMCalcular.GetTable: TFDMemTable;
var
  nPolos: Integer;
begin
  nPolos := FoParamsCalculados.GetNumeroPolos;

  if (nPolos = 2) then
    Result := FoParamsCalcular.GetTableDoisPolos
  else if (nPolos = 4) then
    Result := FoParamsCalcular.GetTableQuatroPolos
  else if (nPolos = 6) then
    Result := FoParamsCalcular.GetTableSeisPolos
  else if (nPolos = 8) then
    Result := FoParamsCalcular.GetTableOitoPolos
  else
    raise Exception.Create('Tabela não encontrada!');
end;

procedure TEMCalcular.SetDadosTabelados;
var
  oTable: TFDMemTable;
  nPotenciaCatalogo: Extended;
begin
  oTable := GetTable;
  nPotenciaCatalogo := 0;

  oTable.First;
  while (not oTable.Eof) do begin
    if (oTable.FieldByName('POTENCIAWTS').AsFloat >= FoParamsCalculados.GetPotenciaNominal) then begin
      nPotenciaCatalogo := oTable.FieldByName('POTENCIAWTS').AsFloat;
      break;
    end;

    oTable.Next;
  end;

  if (nPotenciaCatalogo = 0) then begin
    oTable.First;
    raise Exception.Create('Não foi encontrado um motor na lista especificada!');
  end;

  oTable.Locate('POTENCIAWTS', nPotenciaCatalogo, []);

  FoParamsCalculados.SetPotenciaNominal(nPotenciaCatalogo);
end;

procedure TEMCalcular.SetTempoAceleracao;
var
  Cmmed, Ccmed, CRMed, Jce, Jm, Jac, TempoAcel: Extended;
  oTable: TFDMemTable;
begin
  oTable := GetTable;

  // Cmmed = 0,45 * (Cp/Cn + CMax/Cn) * Cn * 9,81 [Nm] FoParamsCalcular.Get + ...
  Cmmed := (0.45) *
           (oTable.FieldByName('CONJUGADOROTORBLOQUEADO').AsFloat + oTable.FieldByName('CONJUGADOMAXIMO').AsFloat) *
           (oTable.FieldByName('CONJUGADONOMINAL').AsFloat) *
           (9.81);
  Ccmed := ((2 * 0.1*FoParamsCalcular.GetConjugadoNominal) + FoParamsCalcular.GetConjugadoNominal) / 3;

  // CRMed = CRmed = Cmmed/z [Nm]
  CRMed := (Ccmed / FoParamsCalcular.GetRelacaoTransmissao);

  Jm := oTable.FieldByName('MOMENTOINERCIA').AsFloat;

  Jce := (FoParamsCalcular.GetMomentoInercia) /
         (FoParamsCalcular.GetRelacaoTransmissao * FoParamsCalcular.GetRelacaoTransmissao);

  Jac := FoParamsCalcular.GetMomentoInerciaTransmissao;

  //Verificar se precisar calcular o JAC (ACOPLAMENTO)
  //Verificar se transmissão = acoplamento

  // TA = 2 * PI * n/60 * ((Jm + Jce) / (Cmmmed - CRMed))
  //TempoAcel := (2 * System.Pi) *
  //             (FoParamsCalculados.GetVelocidadeNominal / 60) *
  //             ((Jm + Jce + Jac) / (Cmmed - CRMed));
  TempoAcel := ((FoParamsCalculados.GetVelocidadeNominal * 2 * System.Pi)/60) * ((Jm + Jac + Jce) / (Cmmed - CRMed));

  FoParamsCalculados.SetConjugadoCargaMedio(Ccmed);
  FoParamsCalculados.SetConjugadoMotorMedio(Cmmed);
  FoParamsCalculados.SetConjugadoResistenteMedio(CRMed);
  FoParamsCalculados.SetMomentoInerciaMotor(Jm);
  FoParamsCalculados.SetMomentoInerciaReferidoMotor(Jce);
  FoParamsCalculados.SetInerciaAcoplamento(Jac);
  FoParamsCalculados.SetTempoAceleracao(TempoAcel);
end;

procedure TEMCalcular.SetTempoRotorBloqueado;
begin
  FoParamsCalculados.SetTempoRotorBloqueado(GetTable.FieldByName('TEMPOMAXIMOROTORBLOQQUENTE').AsFloat);
end;

procedure TEMCalcular.SetTempoAceleracaoLimite;
begin
  FoParamsCalculados.SetTempoAceleracaoLimite(FoParamsCalculados.GetTempoRotorBloqueado * 0.8);
end;

constructor TEMCalcular.Create(AoParamsCalcular: IEMParametrosCalcular);
begin
  inherited Create();
  FoParamsCalcular := AoParamsCalcular;
  FoParamsCalculados := TEMValoresCalculados.New();
end;

class function TEMCalcular.New(AoParamsCalcular: IEMParametrosCalcular): IEMCalcular;
begin
  Result := TEMCalcular.Create(AoParamsCalcular);
end;

end.

