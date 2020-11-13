//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <sstream>
#include "math.h"

#include "Applicants.h"
#include "Main.h"
#include "Add.h"
#include "Full.h"
#include "Question.h"
#include "QuestionFull.h"
#include "EditMark.h"
#include "Edit.h"

#include "Authorization.h"
#include "Mesta.h"
#include "Registration.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TApplicantsForm *ApplicantsForm;

double markPoit;
double markKd;
double markPed;
double markEl;
String s;

//---------------------------------------------------------------------------
__fastcall TApplicantsForm::TApplicantsForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::EditPoiskMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	if (EditPoisk->Text == "������� ������� �����������") {
		EditPoisk->Text = "";
		EditPoisk->Font->Color = clBlack;
	}
	ButtonPoisk->Enabled=true;
}
//---------------------------------------------------------------------------


void __fastcall TApplicantsForm::EditPoiskExit(TObject *Sender)
{
		if (EditPoisk->Text == "") {
		EditPoisk->Text = "������� ������� �����������";
		EditPoisk->Font->Color = clSilver;
	}
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::ButtonPoiskClick(TObject *Sender)
{
	DataSourceApplicants->DataSet = ADOQueryApplicants;

	ADOQueryApplicants->Active = false;
	ADOQueryApplicants->SQL->Text = "Select * from ApplicantsPoit where Surname=" +
		QuotedStr(EditPoisk->Text);
        ADOQueryApplicantsSpeciality->Visible=false;
	ADOQueryApplicants->Active = true;

	if (ADOQueryApplicants->FieldByName("id")->IsNull) {
		ShowMessage("�� ������ ���������� � ����� ��������");
		ADOQueryApplicants->Active = false;
		ADOQueryApplicants->SQL->Text = "Select * from ApplicantsPoit";
		ADOQueryApplicants->Active = true;

		EditPoisk->Text = "������� ������� �����������";
		EditPoisk->Font->Color = clGray;

        ButtonPoisk->Enabled=false;
	}

}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::ButtonSbrosClick(TObject *Sender)
{
DataSourceApplicants->DataSet = ADOQueryApplicants;

		ADOQueryApplicants->Active = false;
		ADOQueryApplicants->SQL->Text = "Select * from ApplicantsPoit";
		ADOQueryApplicants->Active = true;

	EditPoisk->Text = "������� ������� �����������";
	EditPoisk->Font->Color = clGray;


			if (EditPoisk->Text=="������� ������� �����������" || EditPoisk->Text=="") {
		ButtonPoisk->Enabled=false;
	}
	else
	{
		ButtonPoisk->Enabled=true;
	}
}
//---------------------------------------------------------------------------


void __fastcall TApplicantsForm::EditPoiskKDMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	if (EditPoiskKD->Text == "������� ������� �����������") {
		EditPoiskKD->Text = "";
		EditPoiskKD->Font->Color = clBlack;
	}
	ButtonPoiskKD->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::EditPoiskKDExit(TObject *Sender)
{
		if (EditPoiskKD->Text == "") {
		EditPoiskKD->Text = "������� ������� �����������";
		EditPoiskKD->Font->Color = clSilver;
	}
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::ButtonPoiskKDClick(TObject *Sender)
{
	DataSourceKD->DataSet = ADOQueryKD;

	ADOQueryKD->Active = false;
	ADOQueryKD->SQL->Text = "Select * from ApplicantsKd where Surname=" +
		QuotedStr(EditPoiskKD->Text);
	ADOQueryKD->Active = true;


	if (ADOQueryKD->FieldByName("id")->IsNull) {
		ShowMessage("�� ������ ���������� � ����� ��������");
		ADOQueryKD->Active = false;
		ADOQueryKD->SQL->Text = "Select * from ApplicantsKd";
		ADOQueryKD->Active = true;

		EditPoiskKD->Text = "������� ������� �����������";
		EditPoiskKD->Font->Color = clGray;

		ButtonPoiskKD->Enabled=false;
	}

}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::ButtonSbrosKDClick(TObject *Sender)
{
	DataSourceKD->DataSet = ADOQueryKD;

		ADOQueryKD->Active = false;
		ADOQueryKD->SQL->Text = "Select * from ApplicantsKd";
		ADOQueryKD->Active = true;

	EditPoiskKD->Text = "������� ������� �����������";
	EditPoiskKD->Font->Color = clGray;


			if (EditPoiskKD->Text=="������� ������� �����������" || EditPoiskKD->Text=="") {
		ButtonPoiskKD->Enabled=false;
	}
	else
	{
		ButtonPoiskKD->Enabled=true;
	}
}
//---------------------------------------------------------------------------


void __fastcall TApplicantsForm::EditPoiskPedMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	if (EditPoiskPed->Text == "������� ������� �����������") {
		EditPoiskPed->Text = "";
		EditPoiskPed->Font->Color = clBlack;
	}
	ButtonPoiskPed->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::EditPoiskPedExit(TObject *Sender)
{
		if (EditPoiskPed->Text == "") {
		EditPoiskPed->Text = "������� ������� �����������";
		EditPoiskPed->Font->Color = clSilver;
	}
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::ButtonPoiskPedClick(TObject *Sender)
{
	DataSourcePed->DataSet = ADOQueryPed;

	ADOQueryPed->Active = false;
	ADOQueryPed->SQL->Text = "Select * from ApplicantsPed where Surname=" +
		QuotedStr(EditPoiskPed->Text);
	ADOQueryPed->Active = true;


	if (ADOQueryPed->FieldByName("id")->IsNull) {
		ShowMessage("�� ������ ���������� � ����� ��������");
		ADOQueryPed->Active = false;
		ADOQueryPed->SQL->Text = "Select * from ApplicantsPed";
		ADOQueryPed->Active = true;

		EditPoiskPed->Text = "������� ������� �����������";
		EditPoiskPed->Font->Color = clGray;

		ButtonPoiskPed->Enabled=false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::ButtonSbrosPedClick(TObject *Sender)
{
DataSourceApplicants->DataSet = ADOQueryApplicants;

		ADOQueryPed->Active = false;
		ADOQueryPed->SQL->Text = "Select * from ApplicantsPed";
		ADOQueryPed->Active = true;

	EditPoiskPed->Text = "������� ������� �����������";
	EditPoiskPed->Font->Color = clGray;


	if (EditPoiskPed->Text=="������� ������� �����������" || EditPoiskPed->Text=="") {
		ButtonPoiskPed->Enabled=false;
	}
	else
	{
		ButtonPoiskPed->Enabled=true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::EditPoiskElMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	if (EditPoiskEl->Text == "������� ������� �����������") {
		EditPoiskEl->Text = "";
		EditPoiskEl->Font->Color = clBlack;
	}
	ButtonPoiskEl->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::EditPoiskElExit(TObject *Sender)
{
		if (EditPoiskEl->Text == "") {
		EditPoiskEl->Text = "������� ������� �����������";
		EditPoiskEl->Font->Color = clSilver;
	}
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::ButtonPoiskElClick(TObject *Sender)
{
	DataSourceEl->DataSet = ADOQueryEl;

	ADOQueryEl->Active = false;
	ADOQueryEl->SQL->Text = "Select * from ApplicantsEl where Surname=" +
		QuotedStr(EditPoiskEl->Text);
	ADOQueryEl->Active = true;


	if (ADOQueryEl->FieldByName("id")->IsNull) {
		ShowMessage("�� ������ ���������� � ����� ��������");
		ADOQueryEl->Active = false;
		ADOQueryEl->SQL->Text = "Select * from ApplicantsEl";
		ADOQueryEl->Active = true;

		EditPoiskEl->Text = "������� ������� �����������";
		EditPoiskEl->Font->Color = clGray;

		ButtonPoiskEl->Enabled=false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::ButtonSbrosElClick(TObject *Sender)
{
	DataSourceEl->DataSet = ADOQueryEl;

		ADOQueryEl->Active = false;
		ADOQueryEl->SQL->Text = "Select * from ApplicantsEl";
		ADOQueryEl->Active = true;

	EditPoiskEl->Text = "������� ������� �����������";
	EditPoiskEl->Font->Color = clGray;


			if (EditPoiskEl->Text=="������� ������� �����������" || EditPoiskEl->Text=="") {
		ButtonPoiskEl->Enabled=false;
	}
	else
	{
		ButtonPoiskEl->Enabled=true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::FormClose(TObject *Sender, TCloseAction &Action)

{
Application->Terminate();

}
//---------------------------------------------------------------------------


void __fastcall TApplicantsForm::ButtonBackClick(TObject *Sender)
{
ApplicantsForm->Hide();
AuthorizationForm->Show();
}
//---------------------------------------------------------------------------


void __fastcall TApplicantsForm::ButtonAddClick(TObject *Sender)
{
//ApplicantsForm->Hide();
AddToForm->Show();
}
//---------------------------------------------------------------------------





void __fastcall TApplicantsForm::FormActivate(TObject *Sender)
{
//ADODataSet1->FieldByName('Average mark')->DisplayFormat = '0.00';

	  /*	ADOConnectionApplicants->Connected=false;
		ADOConnectionApplicants->Connected=true;
		ADOTableApplicants->Active=false;
		ADOTableApplicants->Active=true;

		ADOConnectionKD->Connected=false;
		ADOConnectionKD->Connected=true;
		ADOTableKD->Active=false;
		ADOTableKD->Active=true;

		ADOConnectionPed->Connected=false;
		ADOConnectionPed->Connected=true;
		ADOTablePed->Active=false;
		ADOTablePed->Active=true;

		ADOConnectionEl->Connected=false;
		ADOConnectionEl->Connected=true;
		ADOTableEl->Active=false;
		ADOTableEl->Active=true; */


		MarkForm->ADOTableMark->Open();
        MarkForm->ADOTableMark->First();
		while(!MarkForm->ADOTableMark->Eof)
		{
		   if(MarkForm->ADOTableMark->FieldByName("Speciality")->Value=="����")
		   {
				markPoit = MarkForm->ADOTableMark->FieldByName("Passing score")->AsFloat;
				LabelPoit->Caption = FloatToStr( RoundTo(markPoit, -1) );
		   }
		   MarkForm->ADOTableMark->Next();

		   if(MarkForm->ADOTableMark->FieldByName("Speciality")->Value=="��")
		   {
				markKd = MarkForm->ADOTableMark->FieldByName("Passing score")->AsFloat;
				LabelKd->Caption = FloatToStr( RoundTo(markKd, -1) );
		   }
		   MarkForm->ADOTableMark->Next();

		   if(MarkForm->ADOTableMark->FieldByName("Speciality")->Value=="����������")
		   {
				markPed = MarkForm->ADOTableMark->FieldByName("Passing score")->AsFloat;
				LabelPed->Caption = FloatToStr( RoundTo(markPed, -1) );
		   }
		   MarkForm->ADOTableMark->Next();

		   if(MarkForm->ADOTableMark->FieldByName("Speciality")->Value=="����������������")
		   {
				markEl = MarkForm->ADOTableMark->FieldByName("Passing score")->AsFloat;
				LabelEl->Caption = FloatToStr( RoundTo(markEl, -1) );
		   }
		   MarkForm->ADOTableMark->Next();
		}
        MarkForm->ADOTableMark->Close();
}
//---------------------------------------------------------------------------



void __fastcall TApplicantsForm::Button1Click(TObject *Sender)
{
ApplicantsForm->Hide();
FullForm->Show();

if(FullForm->EditPoiskFull->Text!="" || FullForm->EditPoiskFull->Text!="������� ������� �����������")
{
	FullForm->DataSourceFull->DataSet = FullForm->ADOQueryFull;

	FullForm->ADOQueryFull->Active = false;
	FullForm->ADOQueryFull->SQL->Text = "Select * from Applicants where Surname=" +
		QuotedStr(FullForm->EditPoiskFull->Text);
	FullForm->ADOQueryFull->Active = true;

	if (FullForm->ADOQueryFull->FieldByName("id")->IsNull) {
		//ShowMessage("�� ������ ���������� � ����� ��������");
		FullForm->ADOQueryFull->Active = false;
		FullForm->ADOQueryFull->SQL->Text = "Select * from Applicants";
		FullForm->ADOQueryFull->Active = true;

		FullForm->EditPoiskFull->Text = "������� ������� �����������";
		FullForm->EditPoiskFull->Font->Color = clGray;

        FullForm->ButtonPoiskFull->Enabled=false;
	}
}
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::ButtonDeleteClick(TObject *Sender)
{
QuestionForm->Show();
ApplicantsForm->Enabled=false;

/*
if(PageControlApplicants->ActivePage==POITSheet)
{
ADOTableApplicants->Delete();
DataSourceKD->DataSet->Close();
DataSourcePed->DataSet->Close();
DataSourceEl->DataSet->Close();
DataSourceKD->DataSet->Open();
DataSourcePed->DataSet->Open();
DataSourceEl->DataSet->Open();
}
//

if(PageControlApplicants->ActivePage==KDSheet)
{
ADOTableKD->Delete();
DataSourceApplicants->DataSet->Close();
DataSourcePed->DataSet->Close();
DataSourceEl->DataSet->Close();
DataSourceApplicants->DataSet->Open();
DataSourcePed->DataSet->Open();
DataSourceEl->DataSet->Open();
}
//

if(PageControlApplicants->ActivePage==PedSheet)
{
ADOTablePed->Delete();
DataSourceApplicants->DataSet->Close();
DataSourceKD->DataSet->Close();
DataSourceEl->DataSet->Close();
DataSourceApplicants->DataSet->Open();
DataSourceKD->DataSet->Open();
DataSourceEl->DataSet->Open();
}
//

if(PageControlApplicants->ActivePage==TabSheetEl)
{
ADOTableEl->Delete();
DataSourceApplicants->DataSet->Close();
DataSourceKD->DataSet->Close();
DataSourcePed->DataSet->Close();
DataSourceApplicants->DataSet->Open();
DataSourceKD->DataSet->Open();
DataSourcePed->DataSet->Open();
}
ShowMessage("���������� ��� ������"); */
}
//---------------------------------------------------------------------------


void __fastcall TApplicantsForm::MarkButtonClick(TObject *Sender)
{
   MarkForm->Show();
}
//---------------------------------------------------------------------------

void __fastcall TApplicantsForm::Button2Click(TObject *Sender)
{
MestaForm->Show();
}
//---------------------------------------------------------------------------



