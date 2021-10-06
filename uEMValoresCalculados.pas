unit uEMValoresCalculados;

interface

uses
  uIEMValoresCalculados;

type
  TEMValoresCalculados = class(TInterfacedObject, IEMValoresCalculados)
  private
    FnPotenciaNominal: Extended;
    FnVelocidadeNominal: Extended;
    FnConjugadoNominal: Extended;
    FnTempoAceleracao: Extended;
    FnTempoRotorBloqueado: Extended;
    FnTempoAceleracaoLimite: Extended;
    FnNumeroPolos: Integer;
    FnPotenciaNominalCarga: Extended;
    FnPotenciaNominalCargaRadianos: Extended;
    FnConjugadoResistenteMedio: Extended;
    FnConjugadoCargaMedio: Extended;
    FnConjugadoMotorMedio: Extended;
    FnMomentoInerciaMotor: Extended;
    FnInerciaAcoplamento: Extended;
    FnMomentoInerciaReferidoMotor: Extended;
    function GetPotenciaNominal: Extended;
    function GetVelocidadeNominal: Extended;
    function GetConjugadoNominal: Extended;
    function GetTempoAceleracao: Extended;
    function GetTempoRotorBloqueado: Extended;
    function GetTempoAceleracaoLimite: Extended;
    function GetMotorAcionaCarga: Boolean;
    function GetNumeroPolos: Integer;
    function GetPotenciaNominalCarga: Extended;
    function GetPotenciaNominalCargaRadianos: Extended;
    function GetConjugadoResistenteMedio: Extended;
    function GetConjugadoCargaMedio: Extended;
    function GetConjugadoMotorMedio: Extended;
    function GetMomentoInerciaMotor: Extended;
    function GetInerciaAcoplamento: Extended;
    function GetMomentoInerciaReferidoMotor: Extended;
    procedure SetNumeroPolos(AoValue: Integer);
    procedure SetPotenciaNominalCarga(AoValue: Extended);
    procedure SetPotenciaNominalCargaRadianos(AoValue: Extended);
    procedure SetConjugadoResistenteMedio(AoValue: Extended);
    procedure SetConjugadoCargaMedio(AoValue: Extended);
    procedure SetConjugadoMotorMedio(AoValue: Extended);
    procedure SetMomentoInerciaMotor(AoValue: Extended);
    procedure SetInerciaAcoplamento(AoValue: Extended);
    procedure SetMomentoInerciaReferidoMotor(AoValue: Extended);
    procedure SetPotenciaNominal(AoValue: Extended);
    procedure SetVelocidadeNominal(AoValue: Extended);
    procedure SetConjugadoNominal(AoValue: Extended);
    procedure SetTempoAceleracao(AoValue: Extended);
    procedure SetTempoRotorBloqueado(AoValue: Extended);
    procedure SetTempoAceleracaoLimite(AoValue: Extended);
  public
    class function New(): IEMValoresCalculados;
    constructor Create();
  end;

implementation

{ TEMValoresCalculados }

constructor TEMValoresCalculados.Create();
begin
  inherited Create();
  FnPotenciaNominal := 0;
  FnVelocidadeNominal := 0;
  FnConjugadoNominal := 0;
  FnTempoAceleracao := 0;
  FnTempoRotorBloqueado := 0;
  FnTempoAceleracaoLimite := 0;
  FnNumeroPolos := 0;
  FnPotenciaNominalCarga := 0;
  FnPotenciaNominalCargaRadianos := 0;
  FnConjugadoResistenteMedio := 0;
  FnConjugadoCargaMedio := 0;
  FnConjugadoMotorMedio := 0;
  FnMomentoInerciaMotor := 0;
  FnInerciaAcoplamento := 0;
  FnMomentoInerciaReferidoMotor := 0;
end;

function TEMValoresCalculados.GetConjugadoMotorMedio: Extended;
begin
  Result := FnConjugadoMotorMedio;
end;

function TEMValoresCalculados.GetConjugadoNominal: Extended;
begin
  Result := FnConjugadoNominal;
end;

function TEMValoresCalculados.GetConjugadoResistenteMedio: Extended;
begin
  Result := FnConjugadoResistenteMedio;
end;

function TEMValoresCalculados.GetConjugadoCargaMedio: Extended;
begin
  Result := FnConjugadoCargaMedio;
end;

function TEMValoresCalculados.GetInerciaAcoplamento: Extended;
begin
  Result := FnInerciaAcoplamento;
end;

function TEMValoresCalculados.GetMomentoInerciaMotor: Extended;
begin
  Result := FnMomentoInerciaMotor;
end;

function TEMValoresCalculados.GetMomentoInerciaReferidoMotor: Extended;
begin
  Result := FnMomentoInerciaReferidoMotor;
end;

function TEMValoresCalculados.GetMotorAcionaCarga: Boolean;
begin
  Result := (GetTempoAceleracao < 0.8 * GetTempoRotorBloqueado);
end;

function TEMValoresCalculados.GetNumeroPolos: Integer;
begin
  Result := FnNumeroPolos;
end;

function TEMValoresCalculados.GetPotenciaNominal: Extended;
begin
  Result := FnPotenciaNominal;
end;

function TEMValoresCalculados.GetPotenciaNominalCarga: Extended;
begin
  Result := FnPotenciaNominalCarga;
end;

function TEMValoresCalculados.GetPotenciaNominalCargaRadianos: Extended;
begin
  Result := FnPotenciaNominalCargaRadianos;
end;

function TEMValoresCalculados.GetTempoAceleracao: Extended;
begin
  Result := FnTempoAceleracao;
end;

function TEMValoresCalculados.GetTempoAceleracaoLimite: Extended;
begin
  Result := FnTempoAceleracaoLimite;
end;

function TEMValoresCalculados.GetTempoRotorBloqueado: Extended;
begin
  Result := FnTempoRotorBloqueado;
end;

function TEMValoresCalculados.GetVelocidadeNominal: Extended;
begin
  Result := FnVelocidadeNominal;
end;

class function TEMValoresCalculados.New(): IEMValoresCalculados;
begin
  Result := TEMValoresCalculados.Create();
end;

procedure TEMValoresCalculados.SetConjugadoCargaMedio(AoValue: Extended);
begin
  FnConjugadoCargaMedio := AoValue;
end;

procedure TEMValoresCalculados.SetConjugadoMotorMedio(AoValue: Extended);
begin
  FnConjugadoMotorMedio := AoValue;
end;

procedure TEMValoresCalculados.SetConjugadoNominal(AoValue: Extended);
begin
  FnConjugadoNominal := AoValue;
end;

procedure TEMValoresCalculados.SetConjugadoResistenteMedio(AoValue: Extended);
begin
  FnConjugadoResistenteMedio := AoValue;
end;

procedure TEMValoresCalculados.SetInerciaAcoplamento(AoValue: Extended);
begin
  FnInerciaAcoplamento := AoValue;
end;

procedure TEMValoresCalculados.SetMomentoInerciaMotor(AoValue: Extended);
begin
  FnMomentoInerciaMotor := AoValue;
end;

procedure TEMValoresCalculados.SetMomentoInerciaReferidoMotor(AoValue: Extended);
begin
  FnMomentoInerciaReferidoMotor := AoValue;
end;

procedure TEMValoresCalculados.SetNumeroPolos(AoValue: Integer);
begin
  FnNumeroPolos := AoValue;
end;

procedure TEMValoresCalculados.SetPotenciaNominal(AoValue: Extended);
begin
  FnPotenciaNominal := AoValue;
end;

procedure TEMValoresCalculados.SetPotenciaNominalCarga(AoValue: Extended);
begin
  FnPotenciaNominalCarga := AoValue;
end;

procedure TEMValoresCalculados.SetPotenciaNominalCargaRadianos(AoValue: Extended);
begin
  FnPotenciaNominalCargaRadianos := AoValue;
end;

procedure TEMValoresCalculados.SetTempoAceleracao(AoValue: Extended);
begin
  FnTempoAceleracao := AoValue;
end;

procedure TEMValoresCalculados.SetTempoAceleracaoLimite(AoValue: Extended);
begin
  FnTempoAceleracaoLimite := AoValue;
end;

procedure TEMValoresCalculados.SetTempoRotorBloqueado(AoValue: Extended);
begin
  FnTempoRotorBloqueado := AoValue;
end;

procedure TEMValoresCalculados.SetVelocidadeNominal(AoValue: Extended);
begin
  FnVelocidadeNominal := AoValue;
end;

end.

