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
    function GetPotenciaNominal: Extended;
    function GetVelocidadeNominal: Extended;
    function GetConjugadoNominal: Extended;
    function GetTempoAceleracao: Extended;
    function GetTempoRotorBloqueado: Extended;
    function GetTempoAceleracaoLimite: Extended;
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
end;

function TEMValoresCalculados.GetConjugadoNominal: Extended;
begin
  Result := FnConjugadoNominal;
end;

function TEMValoresCalculados.GetPotenciaNominal: Extended;
begin
  Result := FnPotenciaNominal;
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

procedure TEMValoresCalculados.SetConjugadoNominal(AoValue: Extended);
begin
  FnConjugadoNominal := AoValue;
end;

procedure TEMValoresCalculados.SetPotenciaNominal(AoValue: Extended);
begin
  FnPotenciaNominal := AoValue;
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

