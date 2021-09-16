unit uEMParametrosCalcular;

interface

uses
  uIEMParametrosCalcular, FireDAC.Comp.Client;

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
    FoTableDoisPolos: TFDMemTable;
    FoTableQuatroPolos: TFDMemTable;
    FoTableSeisPolos: TFDMemTable;
    FoTableOitoPolos: TFDMemTable;
    function GetVelocidadeNominal: Extended;
    function GetConjugadoNominal: Extended;
    function GetConjugadoPartida: Extended;
    function GetMomentoInercia: Extended;
    function GetRelacaoTransmissao: Extended;
    function GetRendimentoTransmissao: Extended;
    function GetMomentoInerciaTransmissao: Extended;
    function GetTableDoisPolos: TFDMemTable;
    function GetTableQuatroPolos: TFDMemTable;
    function GetTableSeisPolos: TFDMemTable;
    function GetTableOitoPolos: TFDMemTable;
  public
    class function New(AnVelocNominal, AnConjugadoNominal, AnConjugadoPartida,
      AnMomentoInercia, AnRelacaoTransmissao, AnRendimentoTransmissao,
      AnMomentoInerciaTransmissao: Extended; AoTableDoisPolos, AoTableQuatroPolos,
      AoTableSeisPolos, AoTableOitoPolos: TFDMemTable): IEMParametrosCalcular;
    constructor Create(AnVelocNominal, AnConjugadoNominal, AnConjugadoPartida,
      AnMomentoInercia, AnRelacaoTransmissao, AnRendimentoTransmissao,
      AnMomentoInerciaTransmissao: Extended; AoTableDoisPolos, AoTableQuatroPolos,
      AoTableSeisPolos, AoTableOitoPolos: TFDMemTable);
  end;

implementation

{ TEMParametrosCalcular }

constructor TEMParametrosCalcular.Create(AnVelocNominal, AnConjugadoNominal,
  AnConjugadoPartida, AnMomentoInercia, AnRelacaoTransmissao, AnRendimentoTransmissao,
  AnMomentoInerciaTransmissao: Extended; AoTableDoisPolos, AoTableQuatroPolos,
  AoTableSeisPolos, AoTableOitoPolos: TFDMemTable);
begin
  inherited Create();
  FnVelocidadeNominal := AnVelocNominal;
  FnConjugadoNominal := AnConjugadoNominal;
  FnConjugadoPartida := AnConjugadoPartida;
  FnMomentoInercia := AnMomentoInercia;
  FnRelacaoTransmissao := AnRelacaoTransmissao;
  FnRendimentoTransmissao := AnRendimentoTransmissao;
  FnMomentoInerciaTransmissao := AnMomentoInerciaTransmissao;
  FoTableDoisPolos := AoTableDoisPolos;
  FoTableQuatroPolos := AoTableQuatroPolos;
  FoTableSeisPolos := AoTableSeisPolos;
  FoTableOitoPolos := AoTableOitoPolos;
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

function TEMParametrosCalcular.GetTableDoisPolos: TFDMemTable;
begin
  Result := FoTableDoisPolos;
end;

function TEMParametrosCalcular.GetTableOitoPolos: TFDMemTable;
begin
  Result := FoTableOitoPolos;
end;

function TEMParametrosCalcular.GetTableQuatroPolos: TFDMemTable;
begin
  Result := FoTableQuatroPolos;
end;

function TEMParametrosCalcular.GetTableSeisPolos: TFDMemTable;
begin
  Result := FoTableSeisPolos;
end;

function TEMParametrosCalcular.GetVelocidadeNominal: Extended;
begin
  Result := FnVelocidadeNominal;
end;

class function TEMParametrosCalcular.New(AnVelocNominal, AnConjugadoNominal, AnConjugadoPartida,
  AnMomentoInercia, AnRelacaoTransmissao, AnRendimentoTransmissao,
  AnMomentoInerciaTransmissao: Extended; AoTableDoisPolos, AoTableQuatroPolos,
  AoTableSeisPolos, AoTableOitoPolos: TFDMemTable): IEMParametrosCalcular;
begin
  Result := TEMParametrosCalcular.Create(AnVelocNominal,
                                         AnConjugadoNominal,
                                         AnConjugadoPartida,
                                         AnMomentoInercia,
                                         AnRelacaoTransmissao,
                                         AnRendimentoTransmissao,
                                         AnMomentoInerciaTransmissao,
                                         AoTableDoisPolos,
                                         AoTableQuatroPolos,
                                         AoTableSeisPolos,
                                         AoTableOitoPolos);
end;

end.

