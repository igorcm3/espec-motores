//---------------------------------------------------------------------------

#ifndef PrincipalH
#define PrincipalH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.TitleBarCtrls.hpp>
#include <Vcl.WinXCtrls.hpp>
#include <Vcl.Imaging.pngimage.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Samples.Spin.hpp>
//---------------------------------------------------------------------------
class TFrmPrincipal : public TForm
{
__published:	// IDE-managed Components
	TActivityIndicator *load;
	TSplitView *menuSp;
	TPanel *pnTitulo;
	TImage *imgMenu;
	TPanel *pnConteudo;
	TPanel *pnBtnCalcularMenu;
	TSpeedButton *btnCalcularMenu;
	TPageControl *pControl;
	TTabSheet *tabCalculo;
	TTabSheet *TabSheet2;
	TLabel *lblPn;
	TSpinEdit *SpinEdit1;
	TLabel *Label1;
	TLabel *Label2;
	TSpinEdit *SpinEdit2;
	TPanel *pnBtnRealizaCalculo;
	TSpeedButton *btnRealizaCalculo;
	void __fastcall imgMenuClick(TObject *Sender);
	void __fastcall btnCalcularMenuClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall btnRealizaCalculoClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFrmPrincipal(TComponent* Owner);
    void inverteMenu();
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmPrincipal *FrmPrincipal;
//---------------------------------------------------------------------------
#endif
