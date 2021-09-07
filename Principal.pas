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
    GroupBox1: TGroupBox;
    edtPotencia: TEdit;
    lvlPotencia: TLabel;
    lytPotencia: TLayout;
    lblPotenciaMedida: TLabel;
    rctBtnCalcular: TRectangle;
    btnCalcular: TSpeedButton;
    rctLimpar: TRectangle;
    btmLimpar: TSpeedButton;
    GroupBox2: TGroupBox;
    Layout1: TLayout;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    menu: TMultiView;
    rctNavBar: TRectangle;
    ShadowEffect1: TShadowEffect;
    btnChamaMenu: TSpeedButton;
    btnFechar: TSpeedButton;
    rctMenu: TRectangle;
    btnMenuCalcular: TSpeedButton;
    lblTitle: TLabel;
    procedure btnChamaMenuClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.btnChamaMenuClick(Sender: TObject);
begin
  menu.ShowMaster;
end;

procedure TfrmPrincipal.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;


end.