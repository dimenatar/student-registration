//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
#include "Applicants.h"
#include "Edit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TMainForm *MainForm;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::FormClose(TObject *Sender, TCloseAction &Action)
{
Application->Terminate();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::LabelBookListClick(TObject *Sender)
{
MainForm->Hide();
ApplicantsForm->Show();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::LabelGenreListClick(TObject *Sender)
{
MainForm->Hide();
EditForm->Show();
}
//---------------------------------------------------------------------------
