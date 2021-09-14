unit uEMCalcular;

interface

uses
  uIEMValoresCalculados, uIEMCalcular, uIEMParametrosCalcular;

type
  TEMCalcular = class(TInterfacedObject, IEMCalcular)
  private
    FoParamsCalcular: IEMParametrosCalcular;
    function Calcular: IEMValoresCalculados;
    function GetConjugadoNominal: Extended;
    function GetPotenciaNominal: Extended;
    function GetTempoAceleracao: Extended;
    function GetTempoAceleracaoLimite: Extended;
    function GetTempoRotorBloqueado: Extended;
    function GetVelocNominal: Extended;
  public
    class function New(AoParamsCalcular: IEMParametrosCalcular): IEMCalcular;
    constructor Create(AoParamsCalcular: IEMParametrosCalcular);
  end;

implementation

uses
  uEMValoresCalculados;

{ TEMCalcular }

function TEMCalcular.Calcular: IEMValoresCalculados;
begin


  { OBS DA AULA
    vel estiamda do motor
    mostrar num polos na saida
  }

  {----------- 1 - Velocidade do motor e n�mero de polos ----------------------}
  {  Rota��o nominal da carga [Nm]  }
  // Cnc - Conjudado nominal da carga =

  // Fe = 60 Hz
  // Npolos = criar algoritmo com a equacao nSinc = 120 * Fe / P
  // onde P � o numero de polos
  // nSinc usar a vel sincrona do motor Nm = z * Nc (onde Nc � um dado de entrada)
  // Professor usou ===> polos = (120*Fe)/Nm
  // arredondar o polo para baixo, deixar int


  {----------- 2 - Determina��o de Potencia nominal da carga ------------------}
  // Pc = wc * Ccn
  // wc= nc*2*pi/60 wc em rad/s

  {----------- 3 - Determina��o de Potencia nominal do motor ------------------}
  // Pn = Pc / Bac%/100        Bac% = rendimento do motor


  // Pn vai dar um valor em watts, divide por mil pra ficar kW
  // Acha o valor mais proximo na tabela (acahr num polos, pra saber qual tabela),
  // ai pega os valores tabulados de Cp/Cn e Cmax/Cn e de inercia Jn em km^2


   {----------- 4 - Determina��o do conjugado m�dio do motor ------------------}
   // Cmmed = 0,45 * (Cp/Cn + CMax/Cn) * Cn * 9,81        [Nm]
   // CRMed = Cmmed* R ou CRmed = Cmmed/z                 [Nm]


  {----------- 5 - N�o copiei ------------------}
  {----------- 6 - Refletir momentos de in�rcia para o eixo do motor ----------}
  {----------- 7 - Calcular momentos de in�rcia totais  -----------------------}
  {----------- 8 - Calcular tempo de acelera��o  ------------------------------}


  Result := TEMValoresCalculados.New(GetPotenciaNominal,
                                     GetVelocNominal,
                                     GetConjugadoNominal,
                                     GetTempoAceleracao,
                                     GetTempoRotorBloqueado,
                                     GetTempoAceleracaoLimite);
end;

function TEMCalcular.GetPotenciaNominal: Extended;
begin

end;

function TEMCalcular.GetVelocNominal: Extended;
begin

end;

function TEMCalcular.GetConjugadoNominal: Extended;
begin

end;

function TEMCalcular.GetTempoAceleracao: Extended;
begin

end;

function TEMCalcular.GetTempoRotorBloqueado: Extended;
begin

end;

function TEMCalcular.GetTempoAceleracaoLimite: Extended;
begin

end;

constructor TEMCalcular.Create(AoParamsCalcular: IEMParametrosCalcular);
begin
  inherited Create();
  FoParamsCalcular := AoParamsCalcular;
end;

class function TEMCalcular.New(AoParamsCalcular: IEMParametrosCalcular): IEMCalcular;
begin
  Result := TEMCalcular.Create(AoParamsCalcular);
end;


end.

