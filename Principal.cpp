//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Principal.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFrmPrincipal *FrmPrincipal;
//---------------------------------------------------------------------------
__fastcall TFrmPrincipal::TFrmPrincipal(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFrmPrincipal::imgMenuClick(TObject *Sender)
{
	inverteMenu();
}
//---------------------------------------------------------------------------

void TFrmPrincipal::inverteMenu(){
	if( menuSp->Opened)
		menuSp->Close();
	else
		menuSp->Open();
}

void __fastcall TFrmPrincipal::btnCalcularMenuClick(TObject *Sender)
{
	//ShowMessage("Teste");
	pControl->ActivePage = tabCalculo;
	tabCalculo->Visible = true;
    inverteMenu();
}
//---------------------------------------------------------------------------

void __fastcall TFrmPrincipal::FormShow(TObject *Sender)
{
	int i = 0;
	for (i = 0; i<= pControl->PageCount - 1; i++) {
		pControl->Pages[i]->TabVisible = false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFrmPrincipal::btnRealizaCalculoClick(TObject *Sender)
{
    // Realiza o calculo de especificação do motor
}
//---------------------------------------------------------------------------

