//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Authorization.h"
#include "Registration.h"
#include "Main.h"
#include "Start.h"
#include "Applicants.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TAuthorizationForm *AuthorizationForm;


int userAge;
bool a = false;
bool IsClosedEye = true;
//---------------------------------------------------------------------------
__fastcall TAuthorizationForm::TAuthorizationForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TAuthorizationForm::loginEditClick(TObject *Sender)
{
	if (loginEdit->Text == "�����") {
		loginEdit->Text = "";
		loginEdit->Font->Color = clBlack;
	}
	if (passwordEdit->Text == "") {
		passwordEdit->Text = "������";
		passwordEdit->Font->Color = clSilver;
		passwordEdit->PasswordChar = 0;
		ButtonVisible->Enabled=false;
        Eye->Enabled=false;

	}
}
//---------------------------------------------------------------------------
void __fastcall TAuthorizationForm::FormActivate(TObject *Sender)
{
	loginEdit->Enabled = true;
	passwordEdit->Enabled = true;
}
//---------------------------------------------------------------------------
void __fastcall TAuthorizationForm::loginEditMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
     	if (loginEdit->Text == "�����") {
		loginEdit->Text = "";
		loginEdit->Font->Color = clBlack;
	}
	if (passwordEdit->Text == "") {
		passwordEdit->Text = "������";
		passwordEdit->Font->Color = clSilver;
		passwordEdit->PasswordChar = 0;
		ButtonVisible->Enabled=false;
		Eye->Enabled=false;
	}
}
//---------------------------------------------------------------------------
void __fastcall TAuthorizationForm::passwordEditMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	if (loginEdit->Text == "") {
		loginEdit->Text = "�����";
		loginEdit->Font->Color = clSilver;
	}
	if (passwordEdit->Text == "������") {
		passwordEdit->Text = "";
		passwordEdit->Font->Color = clBlack;
		passwordEdit->PasswordChar = '*';
		ButtonVisible->Enabled=true;
		Eye->Enabled=true;
	}
}
//---------------------------------------------------------------------------
void __fastcall TAuthorizationForm::passwordEditClick(TObject *Sender)
{
	if (loginEdit->Text == "") {
		loginEdit->Text = "�����";
		loginEdit->Font->Color = clSilver;
	}
	if (passwordEdit->Text == "������") {
		passwordEdit->Text = "";
		passwordEdit->Font->Color = clBlack;
		passwordEdit->PasswordChar = '*';
		ButtonVisible->Enabled=true;
        Eye->Enabled=true;
	}
}
//---------------------------------------------------------------------------
void __fastcall TAuthorizationForm::ButtonVisibleClick(TObject *Sender)
{
	if (a == false) {
		passwordEdit->PasswordChar = 0;
		a = true;
	}
	else {
		if (a == true) {
			passwordEdit->PasswordChar = '*';
			a = false;
		}
	}



}
//---------------------------------------------------------------------------
void __fastcall TAuthorizationForm::FormClose(TObject *Sender, TCloseAction &Action)

{
Application->Terminate();
}
//---------------------------------------------------------------------------
void __fastcall TAuthorizationForm::LabelRegistrationClick(TObject *Sender)
{
	RegistrationForm->Show();
	AuthorizationForm->Hide();

	loginEdit->Text="�����";
	passwordEdit->Text = "������";
	passwordEdit->PasswordChar = 0;
	ButtonVisible->Enabled=false;
	Eye->Enabled=false;

    loginEdit->Enabled = false;
	passwordEdit->Enabled = false;

}
//---------------------------------------------------------------------------
void __fastcall TAuthorizationForm::enterButtonClick(TObject *Sender)
{

	ADOTableAuthorization->Open();
	AnsiString al = loginEdit->Text, ap = passwordEdit->Text, bl, bp;
	ADOTableAuthorization->First();
	while (!ADOTableAuthorization->Eof) {
		bl = ADOTableAuthorization->FieldByName("Login")->AsString;
		bp = ADOTableAuthorization->FieldByName("Pass")->AsString;
		if ((al == bl) && (ap == bp)) {
            ShowMessage("����������� �������");
			ApplicantsForm->Show();
			AuthorizationForm->Hide();

			break;
		}
		ADOTableAuthorization->Next();
	}
	if ((al != bl) || (ap != bp) || loginEdit->Text == "�����" ||
		passwordEdit->Text == "������" || loginEdit->Text == "" ||
		passwordEdit->Text == "") {
		ShowMessage("������ �����������");
		if (loginEdit->Text == "") {
			loginEdit->Text = "�����";
			loginEdit->Font->Color = clSilver;
		}
		if (passwordEdit->Text == "")
		{
		passwordEdit->Text = "������";
		passwordEdit->Font->Color = clSilver;
		passwordEdit->PasswordChar = 0;
		Eye->Enabled=false;
		}
	}
	else
	{
			loginEdit->Text="�����";
			passwordEdit->Text = "������";
			passwordEdit->PasswordChar = 0;
			ButtonVisible->Enabled=false;
			Eye->Enabled=false;

            loginEdit->Enabled = false;
	passwordEdit->Enabled = false;


    }


}
//---------------------------------------------------------------------------
void __fastcall TAuthorizationForm::LabelBackClick(TObject *Sender)
{
AuthorizationForm->Hide();
StartForm->Show();
loginEdit->Enabled = false;
	passwordEdit->Enabled = false;

}
//---------------------------------------------------------------------------

void __fastcall TAuthorizationForm::loginEditExit(TObject *Sender)
{
    	if (loginEdit->Text == "") {
		loginEdit->Text = "�����";
		loginEdit->Font->Color = clSilver;
	}
}
//---------------------------------------------------------------------------

void __fastcall TAuthorizationForm::passwordEditExit(TObject *Sender)
{
	if (passwordEdit->Text == "") {
		passwordEdit->Text = "������";
		passwordEdit->Font->Color = clSilver;
		passwordEdit->PasswordChar = 0;
		ButtonVisible->Enabled=false;
        Eye->Enabled=false;
	}
}
//---------------------------------------------------------------------------


void __fastcall TAuthorizationForm::EyeClick(TObject *Sender)
{
    if (IsClosedEye)
{
Eye->Picture->LoadFromFile(GetCurrentDir() + "\\visible(1).png");
IsClosedEye = false;
passwordEdit->PasswordChar = '\0';
}
else
{
	Eye->Picture->LoadFromFile(GetCurrentDir() + "\\visible(2).png");
	IsClosedEye = true;
	passwordEdit->PasswordChar = '*';
}
}
//---------------------------------------------------------------------------

