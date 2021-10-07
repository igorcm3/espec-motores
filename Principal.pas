unit Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.Edit, FMX.Layouts,
  FMX.Ani, FMX.Effects, FMX.Menus, FMX.MultiView, uIEMParametrosCalcular,
  FMX.EditBox, FMX.NumberBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.BatchMove.DataSet, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.Text, FireDAC.FMXUI.Wait, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, uIEMValoresCalculados, FMX.frxClass;

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
    btnPlanilhas: TSpeedButton;
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
    btnSobre: TSpeedButton;
    bmReaderDoisPolos: TFDBatchMoveTextReader;
    bmDoisPolos: TFDBatchMove;
    bmTableDoisPolos: TFDMemTable;
    bmWriterDoisPolos: TFDBatchMoveDataSetWriter;
    bmQuatroPolos: TFDBatchMove;
    bmReaderQuatroPolos: TFDBatchMoveTextReader;
    bmTableQuatroPolos: TFDMemTable;
    bmWriterQuatroPolos: TFDBatchMoveDataSetWriter;
    bmSeisPolos: TFDBatchMove;
    bmReaderSeisPolos: TFDBatchMoveTextReader;
    bmTableSeisPolos: TFDMemTable;
    bmWriterSeisPolos: TFDBatchMoveDataSetWriter;
    bmOitoPolos: TFDBatchMove;
    bmReaderOitoPolos: TFDBatchMoveTextReader;
    bmTableOitoPolos: TFDMemTable;
    bmWriterOitoPolos: TFDBatchMoveDataSetWriter;
    lyAviso: TLayout;
    lblAviso: TLabel;
    imgAlerta: TImage;
    imgSucesso: TImage;
    lblTituloInfExtra: TLabel;
    lblInfExtra: TLabel;
    lblCaptionInfExtra: TLabel;
    lyInformacoesExtras: TLayout;
    frxRel: TfrxReport;
    rctRelatorio: TRectangle;
    btnRelatorio: TSpeedButton;
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
    procedure btnPlanilhasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSobreClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    FoValoresCalculados: IEMValoresCalculados;
    function GetParametrosCalcular: IEMParametrosCalcular;
    function ValidarParametros: Boolean;
    procedure FocaComponente(AoNumberBox: TNumberBox);
    procedure ValidarMotorAcionaCarga;
    procedure CarregarInformacoesExtras;
    procedure AddInfLabel(AcTitle: String; AnValue: Extended);
    procedure LimparInformacoesExtras;
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
  uEMValoresCalculados, uEMCalcular, uEMParametrosCalcular,
  Planilhas, Sobre;

{$R *.fmx}

procedure TfrmPrincipal.btmLimparClick(Sender: TObject);
var
  i: Integer;
begin
  lyAviso.Visible := False;
  lyInformacoesExtras.Visible := False;

  LimparInformacoesExtras;

  for i := frmPrincipal.ComponentCount -1 downto 0 do begin
    if (frmPrincipal.Components[i] is TNumberBox) then begin
       (frmPrincipal.Components[i] as TNumberBox).ResetFocus;
       (frmPrincipal.Components[i] as TNumberBox).Value := 0;
    end;
  end;

  edtVelocidadeNominal.SetFocus;
end;

procedure TfrmPrincipal.LimparInformacoesExtras;
begin
  lblCaptionInfExtra.Text := '';
  lblInfExtra.Text := '';
end;

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  LimparInformacoesExtras;

  edtVelocidadeNominal.SetFocus;

  if (not ValidarParametros) then
    Exit;

  try
    FoValoresCalculados := TEMCalcular.New(GetParametrosCalcular).Calcular;

    edtPotenciaNominalSaida.Value := FoValoresCalculados.GetPotenciaNominal;
    edtVelocidadeNominalSaida.Value := FoValoresCalculados.GetVelocidadeNominal;
    edtConjugadoNominalSaida.Value := FoValoresCalculados.GetConjugadoNominal;
    edtTempoAceleracaoSaida.Value := FoValoresCalculados.GetTempoAceleracao;
    edtTempoRotorBloqueadoSaida.Value := FoValoresCalculados.GetTempoRotorBloqueado;
    edtTempoAceleracaoLimiteSaida.Value := FoValoresCalculados.GetTempoAceleracaoLimite;

    CarregarInformacoesExtras;
    ValidarMotorAcionaCarga;
  except
    on E: Exception do begin
      MessageDlg(e.Message, TMsgDlgType.mtError, [TMsgDlgBtn.mbok], 0);
      btmLimparClick(Self);
    end;
  end;
end;

procedure TfrmPrincipal.ValidarMotorAcionaCarga;
begin
  lyAviso.Visible := True;

  imgAlerta.Visible := (not FoValoresCalculados.GetMotorAcionaCarga);
  imgSucesso.Visible := (FoValoresCalculados.GetMotorAcionaCarga);

  if (FoValoresCalculados.GetMotorAcionaCarga) then
    lblAviso.Text := 'Motor Aciona a Carga'
  else
    lblAviso.Text := 'Problemas de Prote��o';
end;

procedure TfrmPrincipal.CarregarInformacoesExtras;
begin
  lyInformacoesExtras.Visible := True;

  AddInfLabel('N�mero de Polos:', FoValoresCalculados.GetNumeroPolos);
  AddInfLabel('Pot�ncia Nominal Carga (Pc):', FoValoresCalculados.GetPotenciaNominalCarga);
  AddInfLabel('Pot�ncia Nominal Carga rad/s (Wc):', FoValoresCalculados.GetPotenciaNominalCargaRadianos);
  AddInfLabel('Conjugado Resistente M�dio (Crmed):', FoValoresCalculados.GetConjugadoResistenteMedio);
  AddInfLabel('Conjugado Motor M�dio (Cmmed):', FoValoresCalculados.GetConjugadoMotorMedio);
  AddInfLabel('Momento In�rcia Motor (Jm):', FoValoresCalculados.GetMomentoInerciaMotor);
  AddInfLabel('In�rcia Acoplamento (Jac):', FoValoresCalculados.GetInerciaAcoplamento);
  AddInfLabel('Momento In�rcia Carga Referido ao Motor (Jce):', FoValoresCalculados.GetMomentoInerciaReferidoMotor);
end;

procedure TfrmPrincipal.AddInfLabel(AcTitle: String; AnValue: Extended);
begin
  lblCaptionInfExtra.Text := lblCaptionInfExtra.Text + AcTitle + sLineBreak;
  lblInfExtra.Text := lblInfExtra.Text + FormatFloat('0.####', AnValue) + sLineBreak;
end;

function TfrmPrincipal.GetParametrosCalcular: IEMParametrosCalcular;
begin
  Result := TEMParametrosCalcular.New(edtVelocidadeNominal.Value,
                                      edtConjugadoNominal.Value,
                                      edtConjugadoPartida.Value,
                                      edtMomentoInercia.Value,
                                      edtRelacaoTransmissao.Value,
                                      edtRendimentoTransmissao.Value,
                                      edtMomentoInerciaTransmissao.Value,
                                      bmTableDoisPolos,
                                      bmTableQuatroPolos,
                                      bmTableSeisPolos,
                                      bmTableOitoPolos);
end;

procedure TfrmPrincipal.btnChamaMenuClick(Sender: TObject);
begin
  menu.ShowMaster;
end;

procedure TfrmPrincipal.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.btnPlanilhasClick(Sender: TObject);
var
  formPlanilhas: TfrmPlanilhas;
begin
  formPlanilhas := TfrmPlanilhas.Create(nil);
  formPlanilhas.AbrirForm(bmTableDoisPolos, bmTableQuatroPolos, bmTableSeisPolos, bmTableOitoPolos);
end;

procedure TfrmPrincipal.btnRelatorioClick(Sender: TObject);
var
  caminhoArquivo: String;
begin
  caminhoArquivo := StringReplace(ExtractFilePath(GetCurrentDir), 'Win32\', 'Relatorio.fr3', []);

  with frxRel do begin
    LoadFromFile(caminhoArquivo);

    //Entrada
    Variables.Variables['VelocidadeNominalEntrada'] := edtVelocidadeNominal.Value;
    Variables.Variables['ConjugadoNominalEntrada'] := edtConjugadoNominal.Value;
    Variables.Variables['ConjugadoPartidaEntrada'] := edtConjugadoPartida.Value;
    Variables.Variables['MomentoInerciaEntrada'] := edtMomentoInercia.Value;
    Variables.Variables['RelacaoTransmissaoEntrada'] := edtRelacaoTransmissao.Value;
    Variables.Variables['RendimentoTransmissaoEntrada'] := edtRendimentoTransmissao.Value;
    Variables.Variables['InerciaTransmissaoEntrada'] := edtMomentoInerciaTransmissao.Value;

    //Sa�da
    Variables.Variables['PotenciaNominalSaida'] := edtPotenciaNominalSaida.Value;
    Variables.Variables['VelocNominalSaida'] := edtVelocidadeNominalSaida.Value;
    Variables.Variables['ConjugNominalSaida'] := edtConjugadoNominalSaida.Value;
    Variables.Variables['TempoAcSaida'] := edtTempoAceleracaoSaida.Value;
    Variables.Variables['RotorBloqSaida'] := edtTempoRotorBloqueadoSaida.Value;
    Variables.Variables['TempoAcLimSaida'] := edtTempoAceleracaoLimiteSaida.Value;

    //Outras Informa��es
    Variables.Variables['PotenciaNominalCarga'] := FoValoresCalculados.GetPotenciaNominalCarga;
    Variables.Variables['PotenciaNominalCargaRads'] := FoValoresCalculados.GetPotenciaNominalCargaRadianos;
    Variables.Variables['ConjugadoResMedio'] := FoValoresCalculados.GetConjugadoResistenteMedio;
  end;

  frxRel.ShowReport;
end;

procedure TfrmPrincipal.btnSobreClick(Sender: TObject);
var
  formSobre: TfrmSobre;
begin
  formSobre := TfrmSobre.Create(nil);
  try
    formSobre.ShowModal;
  finally
    freeAndNil(formSobre);
  end;
end;

procedure TfrmPrincipal.numberClick(Sender: TObject);
begin
  (Sender as TNumberBox).SelectAll;
end;

procedure TfrmPrincipal.numberEnter(Sender: TObject);
begin
  (Sender as TNumberBox).SelectAll;
end;

function TfrmPrincipal.ValidarParametros: Boolean;
const
  msgPlanilha = 'A planilha de "%s" n�o foi encontrada na pasta do projeto!';
  msgValorNaoInformado = 'O valor referente ao campo "%s" n�o foi informado!';

var
  cMsg: String;
begin
  Result := True;

  try
    cMsg := EmptyStr;

    if (not bmTableDoisPolos.Active) or (bmTableDoisPolos.IsEmpty) then begin
      cMsg := Format(msgPlanilha, ['Dois Polos']);
      Exit;
    end;

    if (not bmTableQuatroPolos.Active) or (bmTableQuatroPolos.IsEmpty) then begin
      cMsg := Format(msgPlanilha, ['Quatro Polos']);
      Exit;
    end;

    if (not bmTableSeisPolos.Active) or (bmTableSeisPolos.IsEmpty) then begin
      cMsg := Format(msgPlanilha, ['Seis Polos']);
      Exit;
    end;

    if (not bmTableOitoPolos.Active) or (bmTableOitoPolos.IsEmpty) then begin
      cMsg := Format(msgPlanilha, ['Oito Polos']);
      Exit;
    end;

    if (edtVelocidadeNominal.Value = 0) then begin
      cMsg := Format(msgValorNaoInformado, [lvlVelocidadeNominal.Text]);
      FocaComponente(edtVelocidadeNominal);
      Exit;
    end;

    if (edtConjugadoNominal.Value = 0) then begin
      cMsg := Format(msgValorNaoInformado, [lvlConjugadoNominal.Text]);
      FocaComponente(edtConjugadoNominal);
      Exit;
    end;

    if (edtConjugadoPartida.Value = 0) then begin
      cMsg := Format(msgValorNaoInformado, [lvlConjugadoPartida.Text]);
      FocaComponente(edtConjugadoPartida);
      Exit;
    end;

    if (edtMomentoInercia.Value = 0) then begin
      cMsg := Format(msgValorNaoInformado, [lvlMomentoInercia.Text]);
      FocaComponente(edtMomentoInercia);
      Exit;
    end;

    if (edtRelacaoTransmissao.Value = 0) then begin
      cMsg := Format(msgValorNaoInformado, [lvlRelacaoTransmissao.Text]);
      FocaComponente(edtRelacaoTransmissao);
      Exit;
    end;

    if (edtRendimentoTransmissao.Value = 0) then begin
      cMsg := Format(msgValorNaoInformado, [lvlRendimentoTransmissao.Text]);
      FocaComponente(edtRendimentoTransmissao);
      Exit;
    end;

    if (edtMomentoInerciaTransmissao.Value = 0) then begin
      cMsg := Format(msgValorNaoInformado, [lvlMomentoInerciaTransmissao.Text]);
      FocaComponente(edtMomentoInerciaTransmissao);
      Exit;
    end;

  finally
    if (cMsg <> EmptyStr) then begin
      Result := False;
      MessageDlg(cMsg,TMsgDlgType.mtwarning, [TMsgDlgBtn.mbok], 0);
    end;
  end;
end;

procedure TfrmPrincipal.FocaComponente(AoNumberBox: TNumberBox);
begin
  if (AoNumberBox.CanFocus) then
    AoNumberBox.SetFocus;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  caminhoArquivo: String;
begin
  FoValoresCalculados := TEMValoresCalculados.New();

  lyInformacoesExtras.Visible := False;
  lyAviso.Visible := False;

  caminhoArquivo := StringReplace(ExtractFilePath(GetCurrentDir), 'Win32\', 'Arquivos\CSV\', []);

  try
    bmReaderDoisPolos.FileName := caminhoArquivo + 'DoisPolos.csv';
    bmDoisPolos.GuessFormat;
    bmDoisPolos.Execute;
  except
  end;

  try
    bmReaderQuatroPolos.FileName := caminhoArquivo + 'QuatroPolos.csv';
    bmQuatroPolos.GuessFormat;
    bmQuatroPolos.Execute;
  except
  end;

  try
    bmReaderSeisPolos.FileName := caminhoArquivo + 'SeisPolos.csv';
    bmSeisPolos.GuessFormat;
    bmSeisPolos.Execute;
  except
  end;

  try
    bmReaderOitoPolos.FileName := caminhoArquivo + 'OitoPolos.csv';
    bmOitoPolos.GuessFormat;
    bmOitoPolos.Execute;
  except
  end;
end;

// --------Func�es para movimentar a tela sem barra de titulo no windows ----//

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

// ------------- FIM Func�es para movimentar a tela ------------------------//

end.
