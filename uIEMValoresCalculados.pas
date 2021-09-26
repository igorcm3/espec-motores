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
    function GetMotorAcionaCarga: Boolean;
    procedure SetPotenciaNominal(AoValue: Extended);
    procedure SetVelocidadeNominal(AoValue: Extended);
    procedure SetConjugadoNominal(AoValue: Extended);
    procedure SetTempoAceleracao(AoValue: Extended);
    procedure SetTempoRotorBloqueado(AoValue: Extended);
    procedure SetTempoAceleracaoLimite(AoValue: Extended);
  end;

implementation

end.

