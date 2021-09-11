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
  {----------- 1 - Velocidade do motor e número de polos ----------------------}
  {  Rotação nominal da carga [Nm]  }
  // Cnc - Conjudado nominal da carga =

  {----------- 2 - Determinação de Potencia nominal da carga ------------------}
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

