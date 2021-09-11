unit uEMParametrosCalcular;

interface

uses
  uIEMParametrosCalcular;

type
  TEMParametrosCalcular = class(TInterfacedObject, IEMParametrosCalcular)
  private
    FnVelocidadeNominal: Extended;
    FnConjugadoNominal: Extended;
    FnConjugadoPartida: Extended;
    FnMomentoInercia: Extended;
    FnRelacaoTransmissao: Extended;
    FnRendimentoTransmissao: Extended;
    FnMomentoInerciaTransmissao: Extended;
    function GetVelocidadeNominal: Extended;
    function GetConjugadoNominal: Extended;
    function GetConjugadoPartida: Extended;
    function GetMomentoInercia: Extended;
    function GetRelacaoTransmissao: Extended;
    function GetRendimentoTransmissao: Extended;
    function GetMomentoInerciaTransmissao: Extended;
  public
    class function New(AnVelocNominal, AnConjugadoNominal, AnConjugadoPartida,
      AnMomentoInercia, AnRelacaoTransmissao, AnRendimentoTransmissao,
      AnMomentoInerciaTransmissao: Extended): IEMParametrosCalcular;
    constructor Create(AnVelocNominal, AnConjugadoNominal, AnConjugadoPartida,
      AnMomentoInercia, AnRelacaoTransmissao, AnRendimentoTransmissao,
      AnMomentoInerciaTransmissao: Extended);
  end;

implementation

{ TEMParametrosCalcular }

constructor TEMParametrosCalcular.Create(AnVelocNominal, AnConjugadoNominal,
  AnConjugadoPartida, AnMomentoInercia, AnRelacaoTransmissao, AnRendimentoTransmissao,
  AnMomentoInerciaTransmissao: Extended);
begin
  inherited Create();
  FnVelocidadeNominal := AnVelocNominal;
  FnConjugadoNominal := AnConjugadoNominal;
  FnConjugadoPartida := AnConjugadoPartida;
  FnMomentoInercia := AnMomentoInercia;
  FnRelacaoTransmissao := AnRelacaoTransmissao;
  FnRendimentoTransmissao := AnRendimentoTransmissao;
  FnMomentoInerciaTransmissao := AnMomentoInerciaTransmissao;
end;

function TEMParametrosCalcular.GetConjugadoNominal: Extended;
begin
  Result := FnConjugadoNominal;
end;

function TEMParametrosCalcular.GetConjugadoPartida: Extended;
begin
  Result := FnConjugadoPartida;
end;

function TEMParametrosCalcular.GetMomentoInercia: Extended;
begin
  Result := FnMomentoInercia;
end;

function TEMParametrosCalcular.GetMomentoInerciaTransmissao: Extended;
begin
  Result := FnMomentoInerciaTransmissao;
end;

function TEMParametrosCalcular.GetRelacaoTransmissao: Extended;
begin
  Result := FnRelacaoTransmissao;
end;

function TEMParametrosCalcular.GetRendimentoTransmissao: Extended;
begin
  Result := FnRendimentoTransmissao;
end;

function TEMParametrosCalcular.GetVelocidadeNominal: Extended;
begin
  Result := FnVelocidadeNominal;
end;

class function TEMParametrosCalcular.New(AnVelocNominal, AnConjugadoNominal, AnConjugadoPartida,
  AnMomentoInercia, AnRelacaoTransmissao, AnRendimentoTransmissao,
  AnMomentoInerciaTransmissao: Extended): IEMParametrosCalcular;
begin
  Result := TEMParametrosCalcular.Create(AnVelocNominal,
                                         AnConjugadoNominal,
                                         AnConjugadoPartida,
                                         AnMomentoInercia,
                                         AnRelacaoTransmissao,
                                         AnRendimentoTransmissao,
                                         AnMomentoInerciaTransmissao);
end;

end.

