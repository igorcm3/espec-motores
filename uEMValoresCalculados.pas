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
  public
    class function New(AnPotenciaNominal, AnVelocNominal, AnConjugadoNominal, AnTempoAceleracao,
      AnTempoRotorBloqueado, AnTempoAceleracaoLimite: Extended): IEMValoresCalculados;
    constructor Create(AnPotenciaNominal, AnVelocNominal, AnConjugadoNominal,
      AnTempoAceleracao, AnTempoRotorBloqueado, AnTempoAceleracaoLimite: Extended);
  end;

implementation

{ TEMValoresCalculados }

constructor TEMValoresCalculados.Create(AnPotenciaNominal, AnVelocNominal, AnConjugadoNominal,
  AnTempoAceleracao, AnTempoRotorBloqueado, AnTempoAceleracaoLimite: Extended);
begin
  inherited Create();
  FnPotenciaNominal := AnPotenciaNominal;
  FnVelocidadeNominal := AnVelocNominal;
  FnConjugadoNominal := AnConjugadoNominal;
  FnTempoAceleracao := AnTempoAceleracao;
  FnTempoRotorBloqueado := AnTempoRotorBloqueado;
  FnTempoAceleracaoLimite := AnTempoAceleracaoLimite;
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

class function TEMValoresCalculados.New(AnPotenciaNominal, AnVelocNominal, AnConjugadoNominal,
  AnTempoAceleracao, AnTempoRotorBloqueado, AnTempoAceleracaoLimite: Extended): IEMValoresCalculados;
begin
  Result := TEMValoresCalculados.Create(AnPotenciaNominal,
                                        AnVelocNominal,
                                        AnConjugadoNominal,
                                        AnTempoAceleracao,
                                        AnTempoRotorBloqueado,
                                        AnTempoAceleracaoLimite);
end;

end.

