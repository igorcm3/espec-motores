program especMotoresProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  Principal in 'Principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
