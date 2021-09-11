unit Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.Edit, FMX.Layouts,
  FMX.Ani, FMX.Effects, FMX.Menus, FMX.MultiView, uIEMParametrosCalcular,
  FMX.EditBox, FMX.NumberBox;

type
  TfrmPrincipal = class(TForm)
    rctFundo: TRectangle;
    gbDadosEntrada: TGroupBox;
    edtMomentoInerciaTransmissao: TNumberBox;
    lvlMomentoInerciaTransmissao: TLabel;
    lyMomentoInerciaTransmissao: TLayout;
    lblMomentoInerciaTransmissao: TLabel;
    rctBtnCalcular: TRectangle;
    btnCalcular: TSpeedButton;
    rctLimpar: TRectangle;
    btmLimpar: TSpeedButton;
    dbDadosSaida: TGroupBox;
    lyTempoAceleracaoLimiteSaida: TLayout;
    lvlTempoAceleracaoLimiteSaida: TLabel;
    edtTempoAceleracaoLimiteSaida: TNumberBox;
    lblTempoAceleracaoLimiteSaida: TLabel;
    menu: TMultiView;
    rctNavBar: TRectangle;
    swEff: TShadowEffect;
    btnChamaMenu: TSpeedButton;
    btnFechar: TSpeedButton;
    rctMenu: TRectangle;
    btnMenuCalcular: TSpeedButton;
    lblTitle: TLabel;
    lyRendimentoTransmissaoEntrada: TLayout;
    lvlRendimentoTransmissao: TLabel;
    edtRendimentoTransmissao: TNumberBox;
    lblRendimentoTransmissao: TLabel;
    lyRelacaoTransmissaoEntrada: TLayout;
    lvlRelacaoTransmissao: TLabel;
    edtRelacaoTransmissao: TNumberBox;
    lblRelacaoTransmissao: TLabel;
    lyMomentoInerciaEntrada: TLayout;
    lvlMomentoInercia: TLabel;
    edtMomentoInercia: TNumberBox;
    lblMomentoInercia: TLabel;
    lyConjugadoPartidaEntrada: TLayout;
    lvlConjugadoPartida: TLabel;
    edtConjugadoPartida: TNumberBox;
    lblConjugadoPartida: TLabel;
    lyConjugadoNominalEntrada: TLayout;
    lvlConjugadoNominal: TLabel;
    edtConjugadoNominal: TNumberBox;
    lblConjugadoNominal: TLabel;
    lyVelocidadeNominalEntrada: TLayout;
    lvlVelocidadeNominal: TLabel;
    edtVelocidadeNominal: TNumberBox;
    lblVelocidadeNominal: TLabel;
    lyTempoRotorBloqueado: TLayout;
    lvlTempoRotorBloqueadoSaida: TLabel;
    edtTempoRotorBloqueadoSaida: TNumberBox;
    lblTempoRotorBloqueadoSaida: TLabel;
    lyTempoAceleracaoSaida: TLayout;
    lvlTempoAceleracaoSaida: TLabel;
    edtTempoAceleracaoSaida: TNumberBox;
    lblTempoAceleracaoSaida: TLabel;
    lyConjugadoNominalSaida: TLayout;
    lvlConjugadoNominalSaida: TLabel;
    edtConjugadoNominalSaida: TNumberBox;
    lblConjugadoNominalSaida: TLabel;
    lyVelocidadeNominalSaida: TLayout;
    lvlVelocidadeNominalSaida: TLabel;
    edtVelocidadeNominalSaida: TNumberBox;
    lblVelocidadeNominalSaida: TLabel;
    lyPotenciaNominalSaida: TLayout;
    lvlPotenciaNominalSaida: TLabel;
    edtPotenciaNominalSaida: TNumberBox;
    lblPotenciaNominalSaida: TLabel;
    lytBotoes: TLayout;
    swFundo: TShadowEffect;
    procedure btnChamaMenuClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btmLimparClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure numberEnter(Sender: TObject);
    procedure numberClick(Sender: TObject);
  private
    function GetParametrosCalcular: IEMParametrosCalcular;
    { Private declarations }
  public
    isDraging: boolean;
    X0, Y0: single;
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uEMValoresCalculados, uIEMValoresCalculados, uEMCalcular, uEMParametrosCalcular;

{$R *.fmx}

procedure TfrmPrincipal.btmLimparClick(Sender: TObject);
begin
  // Limpa todos os inputs da tela

  // Entradas
  edtVelocidadeNominal.Text := EmptyStr;
  edtConjugadoNominal.Text := EmptyStr;
  edtConjugadoPartida.Text := EmptyStr;
  edtMomentoInercia.Text := EmptyStr;
  edtRelacaoTransmissao.Text := EmptyStr;
  edtRendimentoTransmissao.Text := EmptyStr;
  edtMomentoInerciaTransmissao.Text := EmptyStr;

  //Saídas
  edtPotenciaNominalSaida.Text := EmptyStr;
  edtVelocidadeNominalSaida.Text := EmptyStr;
  edtConjugadoNominalSaida.Text := EmptyStr;
  edtTempoAceleracaoSaida.Text := EmptyStr;
  edtTempoRotorBloqueadoSaida.Text := EmptyStr;
  edtTempoAceleracaoLimiteSaida.Text := EmptyStr;

  edtVelocidadeNominal.SetFocus;
end;

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
  AoValoresCalculados: IEMValoresCalculados;
begin
  AoValoresCalculados := TEMCalcular.New(GetParametrosCalcular).Calcular;

  edtPotenciaNominalSaida.Value := AoValoresCalculados.GetPotenciaNominal;
  edtVelocidadeNominalSaida.Value := AoValoresCalculados.GetVelocidadeNominal;
  edtConjugadoNominalSaida.Value := AoValoresCalculados.GetConjugadoNominal;
  edtTempoAceleracaoSaida.Value := AoValoresCalculados.GetTempoAceleracao;
  edtTempoRotorBloqueadoSaida.Value := AoValoresCalculados.GetTempoRotorBloqueado;
  edtTempoAceleracaoLimiteSaida.Value := AoValoresCalculados.GetTempoAceleracaoLimite;
end;

function TfrmPrincipal.GetParametrosCalcular: IEMParametrosCalcular;
begin
  Result := TEMParametrosCalcular.New(edtVelocidadeNominal.Value,
                                      edtConjugadoNominal.Value,
                                      edtConjugadoPartida.Value,
                                      edtMomentoInercia.Value,
                                      edtRelacaoTransmissao.Value,
                                      edtRendimentoTransmissao.Value,
                                      edtMomentoInerciaTransmissao.Value);
end;

procedure TfrmPrincipal.btnChamaMenuClick(Sender: TObject);
begin
  menu.ShowMaster;
end;

procedure TfrmPrincipal.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.numberClick(Sender: TObject);
begin
  (Sender as TNumberBox).SelectAll;
end;

procedure TfrmPrincipal.numberEnter(Sender: TObject);
begin
  (Sender as TNumberBox).SelectAll;
end;

// --------Funcões para movimentar a tela sem barra de titulo no windows ----//

procedure TfrmPrincipal.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  isDraging := True;
  X0 := X;
  Y0 := Y;
end;

procedure TfrmPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Single);
begin
  if isDraging then
  begin
    frmPrincipal.Left := Trunc(frmPrincipal.Left + X - X0);
    frmPrincipal.Top := Trunc(frmPrincipal.Top + Y - Y0);
  end;
end;

procedure TfrmPrincipal.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  isDraging := False;
end;

// ------------- FIM Funcões para movimentar a tela ------------------------//



end.
