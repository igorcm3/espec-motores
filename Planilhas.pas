unit Planilhas;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.Edit, FMX.Layouts,
  FMX.Ani, FMX.Effects, FMX.Menus, FMX.MultiView, uIEMParametrosCalcular,
  FMX.EditBox, FMX.NumberBox, System.Rtti, FMX.Grid.Style, FMX.ScrollBox,
  FMX.Grid, FireDAC.Comp.Client;

type
  TfrmPlanilhas = class(TForm)
    rctFundo: TRectangle;
    rctNavBar: TRectangle;
    swEff: TShadowEffect;
    btnFechar: TSpeedButton;
    lblTitle: TLabel;
    swFundo: TShadowEffect;
    tcPlanilhas: TTabControl;
    tiDoisPolos: TTabItem;
    tiQuatroPolos: TTabItem;
    tiSeisPolos: TTabItem;
    tiOitoPolos: TTabItem;
    grdDoisPolos: TStringGrid;
    grdQuatroPolos: TStringGrid;
    grdSeisPolos: TStringGrid;
    grdOitoPolos: TStringGrid;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AbrirForm(AoTableDoisPolos, AoTableQuatroPolos, AoTableSeisPolos,
      AoTableOitoPolos: TFDMemTable);
    { Public declarations }
  end;

var
  frmPlanilhas: TfrmPlanilhas;

implementation

uses
  uMemTableHelper;

{$R *.fmx}

procedure TfrmPlanilhas.AbrirForm(AoTableDoisPolos, AoTableQuatroPolos, AoTableSeisPolos,
  AoTableOitoPolos: TFDMemTable);
begin
  try
    AoTableDoisPolos.AlimentarGrid(grdDoisPolos);
    AoTableQuatroPolos.AlimentarGrid(grdQuatroPolos);
    AoTableSeisPolos.AlimentarGrid(grdSeisPolos);
    AoTableOitoPolos.AlimentarGrid(grdOitoPolos);
  except
  end;

  Self.ShowModal;
end;

procedure TfrmPlanilhas.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
