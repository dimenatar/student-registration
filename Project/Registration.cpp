//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Registration.h"
#include "Authorization.h"
#include "Applicants.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TRegistrationForm *RegistrationForm;

bool a2 = false;
bool IsClosedEye = true;
//---------------------------------------------------------------------------
__fastcall TRegistrationForm::TRegistrationForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TRegistrationForm::FormClose(TObject *Sender, TCloseAction &Action)

{
Application->Terminate();
}
//---------------------------------------------------------------------------
void __fastcall TRegistrationForm::SurnameEditMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
    if (loginEdit->Text == "") {
		loginEdit->Text = "�����";
		loginEdit->Font->Color = clSilver;
	}
	if (passwordEdit->Text == "") {
		passwordEdit->Text = "������";
		passwordEdit->Font->Color = clSilver;
		passwordEdit->PasswordChar = 0;
	}
	if (SurnameEdit->Text == "�������") {
		SurnameEdit->Text = "";
		SurnameEdit->Font->Color = clBlack;
	}
	if (NameEdit->Text == "") {
		NameEdit->Text = "���";
		NameEdit->Font->Color = clSilver;
	}
}
//---------------------------------------------------------------------------
void __fastcall TRegistrationForm::NameEditMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	if (loginEdit->Text == "") {
		loginEdit->Text = "�����";
		loginEdit->Font->Color = clSilver;
	}
	if (passwordEdit->Text == "") {
		passwordEdit->Text = "������";
		passwordEdit->Font->Color = clSilver;
		passwordEdit->PasswordChar = 0;
		ButtonVisible->Enabled=false;
        Eye->Enabled=false;
	}
	if (SurnameEdit->Text == "") {
		SurnameEdit->Text = "�������";
		SurnameEdit->Font->Color = clSilver;
	}
	if (NameEdit->Text == "���") {
		NameEdit->Text = "";
		NameEdit->Font->Color = clBlack;
	}

}
//---------------------------------------------------------------------------
void __fastcall TRegistrationForm::loginEditMouseDown(TObject *Sender, TMouseButton Button,
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
	if (SurnameEdit->Text == "") {
		SurnameEdit->Text = "�������";
		SurnameEdit->Font->Color = clSilver;
	}
	if (NameEdit->Text == "") {
		NameEdit->Text = "���";
		NameEdit->Font->Color = clSilver;
	}

}
//---------------------------------------------------------------------------
void __fastcall TRegistrationForm::passwordEditMouseDown(TObject *Sender, TMouseButton Button,
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
        Eye->Enabled=false;
	}
	if (SurnameEdit->Text == "") {
		SurnameEdit->Text = "�������";
		SurnameEdit->Font->Color = clSilver;
	}
	if (NameEdit->Text == "") {
		NameEdit->Text = "���";
		NameEdit->Font->Color = clSilver;
	}

}

//---------------------------------------------------------------------------
void __fastcall TRegistrationForm::FormActivate(TObject *Sender)
{
	loginEdit->Enabled = true;
	passwordEdit->Enabled = true;
	SurnameEdit->Enabled = true;
	NameEdit->Enabled = true;

}
//---------------------------------------------------------------------------
void __fastcall TRegistrationForm::LabelAuthorizationClick(TObject *Sender)
{
	AuthorizationForm->Show();
	RegistrationForm->Hide();

	loginEdit->Text="�����";
	passwordEdit->Text = "������";
	passwordEdit->PasswordChar = 0;
	ButtonVisible->Enabled=false;
    Eye->Enabled=false;
	SurnameEdit->Text="�������";
	NameEdit->Text="���";

	loginEdit->Enabled = false;
	passwordEdit->Enabled = false;
	SurnameEdit->Enabled = false;
	NameEdit->Enabled = false;
}
//---------------------------------------------------------------------------
void __fastcall TRegistrationForm::registrationButtonClick(TObject *Sender)
{
	if (loginEdit->Text == "" || passwordEdit->Text == "" ||
		SurnameEdit->Text == "" || NameEdit->Text == "" ||
		loginEdit->Text == "�����" ||
		passwordEdit->Text == "������" || SurnameEdit->Text == "�������" ||
		NameEdit->Text == "���" ) {
		ShowMessage("������� �� ��� ������");
	}
	else {
		ADOTableRegistration->Open();
		ADOTableRegistration->First();

		bool log = false;
		while (!ADOTableRegistration->Eof) {

			if (loginEdit->Text == ADOTableRegistration->FieldByName("Login")
				->AsString) {
				log = true;
			}

			ADOTableRegistration->Next();
		}

		if (log == false) {
			ADOQueryRegistration->Parameters->ParamByName("Log")->Value =
				loginEdit->Text;
			ADOQueryRegistration->Parameters->ParamByName("Pass")->Value =
				passwordEdit->Text;
			ADOQueryRegistration->Parameters->ParamByName("Surname")->Value =
				SurnameEdit->Text;
			ADOQueryRegistration->Parameters->ParamByName("Name")->Value =
				NameEdit->Text;
			ADOQueryRegistration->ExecSQL();
			ShowMessage("����������� �������");
			RegistrationForm->Hide();
			ApplicantsForm->Show();

			AuthorizationForm->ADOConnectionAuthorization->Connected=false;
			AuthorizationForm->ADOConnectionAuthorization->Connected=true;
			AuthorizationForm->ADOTableAuthorization->Active=false;
            AuthorizationForm->ADOTableAuthorization->Active=true;

            	loginEdit->Text="�����";
			passwordEdit->Text = "������";
			passwordEdit->PasswordChar = 0;
			ButtonVisible->Enabled=false;
            Eye->Enabled=false;
			SurnameEdit->Text="�������";
			NameEdit->Text="���";

            loginEdit->Enabled = false;
			passwordEdit->Enabled = false;
			SurnameEdit->Enabled = false;
			NameEdit->Enabled = false;
		}
		else {
			ShowMessage("����� ����� ��� ����������");
		}
	}



}
//---------------------------------------------------------------------------
void __fastcall TRegistrationForm::ButtonVisibleClick(TObject *Sender)
{
	if (a2 == false) {
		passwordEdit->PasswordChar = 0;
		a2 = true;
	}
	else {
		if (a2 == true) {
			passwordEdit->PasswordChar = '*';
			a2 = false;
		}
	}
}
//---------------------------------------------------------------------------
void __fastcall TRegistrationForm::passwordEditChange(TObject *Sender)
{
if(passwordEdit->Text!="������")
{
	ButtonVisible->Enabled=true;
	Eye->Enabled=true;
}
else
{
	 ButtonVisible->Enabled=false;
     Eye->Enabled=false;
}
}
//---------------------------------------------------------------------------


void __fastcall TRegistrationForm::SurnameEditExit(TObject *Sender)
{
	if (SurnameEdit->Text == "") {
		SurnameEdit->Text = "�������";
		SurnameEdit->Font->Color = clSilver;
	}
}
//---------------------------------------------------------------------------

void __fastcall TRegistrationForm::NameEditExit(TObject *Sender)
{
   	if (NameEdit->Text == "") {
		NameEdit->Text = "���";
		NameEdit->Font->Color = clSilver;
	}
}
//---------------------------------------------------------------------------

void __fastcall TRegistrationForm::loginEditExit(TObject *Sender)
{
    	if (loginEdit->Text == "") {
		loginEdit->Text = "�����";
		loginEdit->Font->Color = clSilver;
	}
}
//---------------------------------------------------------------------------

void __fastcall TRegistrationForm::passwordEditExit(TObject *Sender)
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


void __fastcall TRegistrationForm::EyeClick(TObject *Sender)
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

