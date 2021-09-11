unit uIEMValoresCalculados;

interface

type
  IEMValoresCalculados = Interface
    ['{7882E3A3-52B4-42E3-9495-02DDAF79DF1D}']
    function GetPotenciaNominal: Extended;
    function GetVelocidadeNominal: Extended;
    function GetConjugadoNominal: Extended;
    function GetTempoAceleracao: Extended;
    function GetTempoRotorBloqueado: Extended;
    function GetTempoAceleracaoLimite: Extended;
  end;

implementation

end.

