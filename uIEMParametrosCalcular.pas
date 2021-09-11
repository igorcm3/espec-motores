unit uIEMParametrosCalcular;

interface

type
  IEMParametrosCalcular = Interface
    ['{3054F025-9B18-4AFC-9392-1248BB279315}']
    function GetVelocidadeNominal: Extended;
    function GetConjugadoNominal: Extended;
    function GetConjugadoPartida: Extended;
    function GetMomentoInercia: Extended;
    function GetRelacaoTransmissao: Extended;
    function GetRendimentoTransmissao: Extended;
    function GetMomentoInerciaTransmissao: Extended;
  end;

implementation

end.

