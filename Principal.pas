unit Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.Edit, FMX.Layouts,
  FMX.Ani, FMX.Effects, FMX.Menus, FMX.MultiView;

type
  TfrmPrincipal = class(TForm)
    rctFundo: TRectangle;
    gbDadosEntrada: TGroupBox;
    edtMomentoInerciaTransmissao: TEdit;
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
    edtTempoAceleracaoLimiteSaida: TEdit;
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
    edtRendimentoTransmissao: TEdit;
    lblRendimentoTransmissao: TLabel;
    lyRelacaoTransmissaoEntrada: TLayout;
    lvlRelacaoTransmissao: TLabel;
    edtRelacaoTransmissao: TEdit;
    lblRelacaoTransmissao: TLabel;
    lyMomentoInerciaEntrada: TLayout;
    lvlMomentoInercia: TLabel;
    edtMomentoInercia: TEdit;
    lblMomentoInercia: TLabel;
    lyConjugadoPartidaEntrada: TLayout;
    lvlConjugadoPartida: TLabel;
    edtConjugadoPartida: TEdit;
    lblConjugadoPartida: TLabel;
    lyConjugadoNominalEntrada: TLayout;
    lvlConjugadoNominal: TLabel;
    edtConjugadoNominal: TEdit;
    lblConjugadoNominal: TLabel;
    lyVelocidadeNominalEntrada: TLayout;
    lvlVelocidadeNominal: TLabel;
    edtVelocidadeNominal: TEdit;
    lblVelocidadeNominal: TLabel;
    lyTempoRotorBloqueado: TLayout;
    lvlTempoRotorBloqueadoSaida: TLabel;
    edtTempoRotorBloqueadoSaida: TEdit;
    lblTempoRotorBloqueadoSaida: TLabel;
    lyTempoAceleracaoSaida: TLayout;
    lvlTempoAceleracaoSaida: TLabel;
    edtTempoAceleracaoSaida: TEdit;
    lblTempoAceleracaoSaida: TLabel;
    lyConjugadoNominalSaida: TLayout;
    lvlConjugadoNominalSaida: TLabel;
    edtConjugadoNominalSaida: TEdit;
    lblConjugadoNominalSaida: TLabel;
    lyVelocidadeNominalSaida: TLayout;
    lvlVelocidadeNominalSaida: TLabel;
    edtVelocidadeNominalSaida: TEdit;
    lblVelocidadeNominalSaida: TLabel;
    lyPotenciaNominalSaida: TLayout;
    lvlPotenciaNominalSaida: TLabel;
    edtPotenciaNominalSaida: TEdit;
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
  private
    { Private declarations }
  public
    isDraging: boolean;
    X0, Y0: single;
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

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

procedure TfrmPrincipal.btnChamaMenuClick(Sender: TObject);
begin
  menu.ShowMaster;
end;

procedure TfrmPrincipal.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
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
