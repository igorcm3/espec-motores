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
  end;

implementation

end.

