unit Sobre;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.Edit, FMX.Layouts,
  FMX.Ani, FMX.Effects;

type
  TfrmSobre = class(TForm)
    rctFundo: TRectangle;
    rctNavBar: TRectangle;
    swEff: TShadowEffect;
    btnFechar: TSpeedButton;
    lblTitle: TLabel;
    swFundo: TShadowEffect;
    imgIgor: TImage;
    imgRodrigo: TImage;
    imgWillian: TImage;
    lblIgor: TLabel;
    lblRodrigo: TLabel;
    lblWillian: TLabel;
    retIgor1: TRectangle;
    retRodrigo1: TRectangle;
    retWillian1: TRectangle;
    retIgor2: TRectangle;
    retRodrigo2: TRectangle;
    retWillian2: TRectangle;
    lblMateria: TLabel;
    imgInstaRodrigo: TImage;
    imgFbRodrigo: TImage;
    imgLinkedinRodrigo: TImage;
    imgInstaIgor: TImage;
    imgFbIgor: TImage;
    imgLinkedinIgor: TImage;
    imgFbWillian: TImage;
    imgLinkedinWillian: TImage;
    imgInstaWillian: TImage;
    retMarconi2: TRectangle;
    imgMarconi: TImage;
    retMarconi1: TRectangle;
    lblMarconi: TLabel;
    imgInstagramMarconi: TImage;
    imgFbMarconi: TImage;
    imgLinkedinMarconi: TImage;
    lblAcadIgor: TLabel;
    lblAcadRodrigo: TLabel;
    lblAcadWillian: TLabel;
    lblProfMarconi: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure imgInstaIgorClick(Sender: TObject);
    procedure imgInstaRodrigoClick(Sender: TObject);
    procedure imgInstaWillianClick(Sender: TObject);
    procedure imgFbIgorClick(Sender: TObject);
    procedure imgFbRodrigoClick(Sender: TObject);
    procedure imgFbWillianClick(Sender: TObject);
    procedure imgLinkedinWillianClick(Sender: TObject);
    procedure imgLinkedinIgorClick(Sender: TObject);
    procedure imgLinkedinRodrigoClick(Sender: TObject);
    procedure imgInstagramMarconiClick(Sender: TObject);
    procedure imgFbMarconiClick(Sender: TObject);
    procedure imgLinkedinMarconiClick(Sender: TObject);
  private
    { Private declarations }
  public
    isDraging: boolean;
    X0, Y0: single;
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

uses
  OpenViewURL;

{$R *.fmx}

procedure TfrmSobre.imgInstaWillianClick(Sender: TObject);
begin
  OpenURL('https://www.instagram.com/willianbettoni/');
end;

procedure TfrmSobre.imgLinkedinIgorClick(Sender: TObject);
begin
  OpenURL('https://www.linkedin.com/in/igor-corona-de-matos-1b4812157/');
end;

procedure TfrmSobre.imgLinkedinRodrigoClick(Sender: TObject);
begin
  MessageDlg('Sem LinkedIn!', TMsgDlgType.mtwarning, [TMsgDlgBtn.mbok], 0);
end;

procedure TfrmSobre.imgLinkedinWillianClick(Sender: TObject);
begin
  OpenURL('https://www.linkedin.com/in/willian-bettoni-88846215b/');
end;

procedure TfrmSobre.imgInstaRodrigoClick(Sender: TObject);
begin
  OpenURL('https://www.instagram.com/rodrigo.flamia/');
end;

procedure TfrmSobre.imgInstagramMarconiClick(Sender: TObject);
begin
  OpenURL('https://www.instagram.com/marconijanuario/');
end;

procedure TfrmSobre.imgFbMarconiClick(Sender: TObject);
begin
  MessageDlg('Sem Facebook!', TMsgDlgType.mtwarning, [TMsgDlgBtn.mbok], 0);
end;

procedure TfrmSobre.imgLinkedinMarconiClick(Sender: TObject);
begin
  OpenURL('https://www.linkedin.com/in/marconijan');
end;

procedure TfrmSobre.imgFbIgorClick(Sender: TObject);
begin
  OpenURL('https://www.facebook.com/igor.c.matos/');
end;

procedure TfrmSobre.imgFbRodrigoClick(Sender: TObject);
begin
  OpenURL('https://www.facebook.com/flamia.rodrigo/');
end;

procedure TfrmSobre.imgFbWillianClick(Sender: TObject);
begin
  OpenURL('https://www.facebook.com/willian.bettoni/');
end;

procedure TfrmSobre.imgInstaIgorClick(Sender: TObject);
begin
  OpenURL('https://www.instagram.com/igorcm3/');
end;

procedure TfrmSobre.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

end.
