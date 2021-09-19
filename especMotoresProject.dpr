program especMotoresProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  uIEMCalcular in 'uIEMCalcular.pas',
  uIEMValoresCalculados in 'uIEMValoresCalculados.pas',
  uIEMParametrosCalcular in 'uIEMParametrosCalcular.pas',
  uEMCalcular in 'uEMCalcular.pas',
  uEMValoresCalculados in 'uEMValoresCalculados.pas',
  uEMParametrosCalcular in 'uEMParametrosCalcular.pas',
  uMemTableHelper in 'uMemTableHelper.pas',
  OpenViewURL in 'OpenViewURL.pas',
  Planilhas in 'Planilhas.pas' {frmPlanilhas},
  Sobre in 'Sobre.pas' {frmSobre};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmPlanilhas, frmPlanilhas);
  Application.CreateForm(TfrmSobre, frmSobre);
  Application.Run;
end.
