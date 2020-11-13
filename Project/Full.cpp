//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Full.h"
#include "Applicants.h"
#include "Add.h"
#include "QuestionFull.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFullForm *FullForm;

int pick=0;
//---------------------------------------------------------------------------
__fastcall TFullForm::TFullForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFullForm::EditPoiskFullMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	if (EditPoiskFull->Text == "������� ������� �����������") {
		EditPoiskFull->Text = "";
		EditPoiskFull->Font->Color = clBlack;
	}
	ButtonPoiskFull->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TFullForm::EditPoiskFullExit(TObject *Sender)
{
		if (EditPoiskFull->Text == "") {
		EditPoiskFull->Text = "������� ������� �����������";
		EditPoiskFull->Font->Color = clSilver;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFullForm::ButtonBackClick(TObject *Sender)
{
FullForm->Hide();
ApplicantsForm->Show();

	/*ApplicantsForm->DataSourceApplicants->DataSet = ApplicantsForm->ADOTableApplicants;
		ApplicantsForm->DataSourceKD->DataSet = ApplicantsForm->ADOTableKD;
		ApplicantsForm->DataSourcePed->DataSet = ApplicantsForm->ADOTablePed;
		ApplicantsForm->DataSourceEl->DataSet = ApplicantsForm->ADOTableEl;    */

if(ApplicantsForm->EditPoisk->Text!="" || ApplicantsForm->EditPoisk->Text!="������� ������� �����������")
{
	ApplicantsForm->DataSourceApplicants->DataSet = ApplicantsForm->ADOQueryApplicants;

	ApplicantsForm->ADOQueryApplicants->Active = false;
	ApplicantsForm->ADOQueryApplicants->SQL->Text = "Select * from ApplicantsPoit where Surname=" +
		QuotedStr(ApplicantsForm->EditPoisk->Text);

   ApplicantsForm->ADOQueryApplicants->Active = true;

	if (ApplicantsForm->ADOQueryApplicants->FieldByName("id")->IsNull) {
		//ShowMessage("�� ������ ���������� � ����� ��������");
		ApplicantsForm->ADOQueryApplicants->Active = false;
		ApplicantsForm->ADOQueryApplicants->SQL->Text = "Select * from ApplicantsPoit";
		ApplicantsForm->ADOQueryApplicants->Active = true;

		ApplicantsForm->EditPoisk->Text = "������� ������� �����������";
	   ApplicantsForm->EditPoisk->Font->Color = clGray;

	   ApplicantsForm->ButtonPoisk->Enabled=false;
	}
}
 /*
if(ApplicantsForm->ADOQueryKD->FieldByName("id")->IsNull)
	ApplicantsForm->DataSourceKD->DataSet = ApplicantsForm->ADOTableKD;*/
/////////////////
	ApplicantsForm->DataSourceApplicants->DataSet = ApplicantsForm->ADOQueryApplicants;

		ApplicantsForm->ADOQueryApplicants->Close();
		ApplicantsForm->ADOQueryApplicants->SQL->Text = "Select * from ApplicantsPoit";
		ApplicantsForm->ADOQueryApplicants->Open();

		ApplicantsForm->EditPoisk->Text = "������� ������� �����������";
	   ApplicantsForm->EditPoisk->Font->Color = clGray;

	   ApplicantsForm->ButtonPoisk->Enabled=false;
///////////////
	ApplicantsForm->DataSourceKD->DataSet = ApplicantsForm->ADOQueryKD;

		ApplicantsForm->ADOQueryKD->Close();
		ApplicantsForm->ADOQueryKD->SQL->Text = "Select * from ApplicantsKd";
		ApplicantsForm->ADOQueryKD->Open();

		ApplicantsForm->EditPoiskKD->Text = "������� ������� �����������";
	   ApplicantsForm->EditPoiskKD->Font->Color = clGray;

	   ApplicantsForm->ButtonPoiskKD->Enabled=false;
//////////////
	ApplicantsForm->DataSourcePed->DataSet = ApplicantsForm->ADOQueryPed;

		ApplicantsForm->ADOQueryPed->Close();
		ApplicantsForm->ADOQueryPed->SQL->Text = "Select * from ApplicantsPed";
		ApplicantsForm->ADOQueryPed->Open();

		ApplicantsForm->EditPoiskPed->Text = "������� ������� �����������";
	   ApplicantsForm->EditPoiskPed->Font->Color = clGray;

	   ApplicantsForm->ButtonPoiskPed->Enabled=false;
///////////////////
	ApplicantsForm->DataSourceEl->DataSet = ApplicantsForm->ADOQueryEl;

		ApplicantsForm->ADOQueryEl->Close();
		ApplicantsForm->ADOQueryEl->SQL->Text = "Select * from ApplicantsEl";
		ApplicantsForm->ADOQueryEl->Open();

		ApplicantsForm->EditPoiskEl->Text = "������� ������� �����������";
	   ApplicantsForm->EditPoiskEl->Font->Color = clGray;

	   ApplicantsForm->ButtonPoiskEl->Enabled=false;



}
//---------------------------------------------------------------------------

void __fastcall TFullForm::ButtonPoiskFullClick(TObject *Sender)
{
	DataSourceFull->DataSet = ADOQueryFull;

	ADOQueryFull->Active = false;
	ADOQueryFull->SQL->Text = "Select * from Applicants where Surname=" +
		QuotedStr(EditPoiskFull->Text);
	ADOQueryFull->Active = true;

	if (ADOQueryFull->FieldByName("id")->IsNull) {
		ShowMessage("�� ������ ���������� � ����� ��������");
		ADOQueryFull->Active = false;
		ADOQueryFull->SQL->Text = "Select * from Applicants";
		ADOQueryFull->Active = true;

		EditPoiskFull->Text = "������� ������� �����������";
		EditPoiskFull->Font->Color = clGray;

        ButtonPoiskFull->Enabled=false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFullForm::ButtonSbrosFullClick(TObject *Sender)
{
DataSourceFull->DataSet = ADOQueryFull;

		ADOQueryFull->Active = false;
		ADOQueryFull->SQL->Text = "Select * from Applicants";
		ADOQueryFull->Active = true;

	EditPoiskFull->Text = "������� ������� �����������";
	EditPoiskFull->Font->Color = clGray;
    DateTimePicker->Date=StrToDate("01.01.2020");
	DateTimePicker1->Date=Now();


	if (EditPoiskFull->Text=="������� ������� �����������" || EditPoiskFull->Text=="") {
		ButtonPoiskFull->Enabled=false;
	}
	else
	{
		ButtonPoiskFull->Enabled=true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFullForm::FormClose(TObject *Sender, TCloseAction &Action)
{
Application->Terminate();
}
//---------------------------------------------------------------------------

void __fastcall TFullForm::FormActivate(TObject *Sender)
{
DateTimePicker->Enabled=true;
DateTimePicker1->Enabled=true;

DateTimePicker->MaxDate=Now();
DateTimePicker1->MaxDate=Now();



DateTimePicker->Date=StrToDate("01.01.2020");
DateTimePicker1->Date=Now();



ADOConnectionFull->Connected=false;
ADOConnectionFull->Connected=true;
ADOTableFull->Active=false;
ADOTableFull->Active=true;


}
//---------------------------------------------------------------------------

void __fastcall TFullForm::ButtonDateClick(TObject *Sender)
{
DataSourceFull->DataSet = ADOQueryFull;


ADOQueryFull->Close();
ADOQueryFull->SQL->Clear();
ADOQueryFull->SQL->Add("SELECT * FROM Applicants WHERE [Application date] between :Date1 and :Date2");
ADOQueryFull->Parameters->ParamByName("Date1")->Value = StrToDate(DateTimePicker->Date);
ADOQueryFull->Parameters->ParamByName("Date2")->Value = StrToDate(DateTimePicker1->Date);
ADOQueryFull->Open();

	if (ADOQueryFull->FieldByName("id")->IsNull) {
		ShowMessage("��� ������������, �������� ������ � ��� �����");
		ADOQueryFull->Active = false;
		ADOQueryFull->SQL->Text = "Select * from Applicants";
		ADOQueryFull->Active = true;

		DateTimePicker->Date=StrToDate("01.01.2020");
		DateTimePicker1->Date=Now();

		ButtonPoiskFull->Enabled=false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFullForm::ButtonDeleteClick(TObject *Sender)
{

QuestionFullForm->Show();
FullForm->Enabled=false;
}
//---------------------------------------------------------------------------

