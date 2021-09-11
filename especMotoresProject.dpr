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
  uEMParametrosCalcular in 'uEMParametrosCalcular.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
