//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Start.h"
#include "Authorization.h"
#include "EditMark.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TStartForm *StartForm;

double markPoitS;
double markKdS;
double markPedS;
double markElS;
//---------------------------------------------------------------------------
__fastcall TStartForm::TStartForm(TComponent* Owner)
	: TForm(Owner)
{/*
PageControlApplicants->Anchors = PageControlApplicants->Anchors <<akLeft
                                      <<akTop
									  <<akBottom
									  <<akRight;
DBGridPoit->Anchors = DBGridPoit->Anchors <<akLeft
                                      <<akTop
									  <<akRight;
LabelAuth->Anchors = LabelAuth->Anchors <<akLeft
                                      <<akTop
									  <<akBottom
									  <<akRight; */
}
//---------------------------------------------------------------------------
void __fastcall TStartForm::EditPoiskMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	if (EditPoisk->Text == "Введите фамилию абитуриента") {
		EditPoisk->Text = "";
		EditPoisk->Font->Color = clBlack;
	}
	ButtonPoisk->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TStartForm::FormActivate(TObject *Sender)
{
/*
		DataSourceApplicants->DataSet=ADOQueryApplicants;
		ADOQueryApplicants->Active = false;
		ADOQueryApplicants->SQL->Text = "Select * from ApplicantsPoit";
		ADOQueryApplicants->Active = true;

		DataSourceKD->DataSet=ADOQueryKD;
		ADOQueryKD->Active = false;
		ADOQueryKD->SQL->Text = "Select * from ApplicantsKd";
		ADOQueryKD->Active = true;	 */

        ADOTableApplicantsSurname->DisplayLabel="Фамилия";


		ADOConnectionApplicants->Connected=false;
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
		ADOTableEl->Active=true;

		MarkForm->ADOTableMark->Open();
        MarkForm->ADOTableMark->First();
		while(!MarkForm->ADOTableMark->Eof)
		{
		   if(MarkForm->ADOTableMark->FieldByName("Speciality")->Value=="ПОИТ")
		   {
				markPoitS = MarkForm->ADOTableMark->FieldByName("Passing score")->AsFloat;
				LabelPoit->Caption = FloatToStr( RoundTo(markPoitS, -1) );
		   }
		   MarkForm->ADOTableMark->Next();

		   if(MarkForm->ADOTableMark->FieldByName("Speciality")->Value=="КД")
		   {
				markKdS = MarkForm->ADOTableMark->FieldByName("Passing score")->AsFloat;
				LabelKd->Caption = FloatToStr( RoundTo(markKdS, -1) );
		   }
		   MarkForm->ADOTableMark->Next();

		   if(MarkForm->ADOTableMark->FieldByName("Speciality")->Value=="Педагогика")
		   {
				markPedS = MarkForm->ADOTableMark->FieldByName("Passing score")->AsFloat;
				LabelPed->Caption = FloatToStr( RoundTo(markPedS, -1) );
		   }
		   MarkForm->ADOTableMark->Next();

		   if(MarkForm->ADOTableMark->FieldByName("Speciality")->Value=="Электроснабжение")
		   {
				markElS = MarkForm->ADOTableMark->FieldByName("Passing score")->AsFloat;
				LabelEl->Caption = FloatToStr( RoundTo(markElS, -1) );
		   }
		   MarkForm->ADOTableMark->Next();
		}
        MarkForm->ADOTableMark->Close();

}
//---------------------------------------------------------------------------

void __fastcall TStartForm::ButtonPoiskClick(TObject *Sender)
{
	DataSourceApplicants->DataSet = ADOQueryApplicants;

	ADOQueryApplicants->Active = false;
	ADOQueryApplicants->SQL->Text = "Select * from ApplicantsPoit where Surname=" +
		QuotedStr(EditPoisk->Text);
	ADOQueryApplicants->Active = true;

	if (ADOQueryApplicants->FieldByName("id")->IsNull) {
		ShowMessage("Не найден абитуриент с такой фамилией");
		ADOQueryApplicants->Active = false;
		ADOQueryApplicants->SQL->Text = "Select * from ApplicantsPoit";
		ADOQueryApplicants->Active = true;

		EditPoisk->Text = "Введите фамилию абитуриента";
		EditPoisk->Font->Color = clGray;

        ButtonPoisk->Enabled=false;
	}


}
//---------------------------------------------------------------------------

void __fastcall TStartForm::ButtonSbrosClick(TObject *Sender)
{ 	DataSourceApplicants->DataSet = ADOQueryApplicants;

		ADOQueryApplicants->Active = false;
		ADOQueryApplicants->SQL->Text = "Select * from ApplicantsPoit";
		ADOQueryApplicants->Active = true;



        //DataSourceApplicants->DataSet = ADOQueryApplicants;

	EditPoisk->Text = "Введите фамилию абитуриента";
	EditPoisk->Font->Color = clGray;


			if (EditPoisk->Text=="Введите фамилию абитуриента" || EditPoisk->Text=="") {
		ButtonPoisk->Enabled=false;
	}
	else
	{
		ButtonPoisk->Enabled=true;
	}

     DataSourceApplicants->DataSet = ADOQueryApplicants;

		ADOQueryApplicants->Active = false;
		ADOQueryApplicants->SQL->Text = "Select * from ApplicantsPoit";
		ADOQueryApplicants->Active = true;

	EditPoisk->Text = "Введите фамилию абитуриента";
	EditPoisk->Font->Color = clGray;


			if (EditPoisk->Text=="Введите фамилию абитуриента" || EditPoisk->Text=="") {
		ButtonPoisk->Enabled=false;
	}
	else
	{
		ButtonPoisk->Enabled=true;
	}

        DataSourceApplicants->DataSet = ADOTableApplicants;
		//ADOTableApplicantsSurname->DisplayLabel="Фамилия";
}
//---------------------------------------------------------------------------

void __fastcall TStartForm::ButtonPoiskKDClick(TObject *Sender)
{
	DataSourceKD->DataSet = ADOQueryKD;

	ADOQueryKD->Active = false;
	ADOQueryKD->SQL->Text = "Select * from ApplicantsKd where Surname=" +
		QuotedStr(EditPoiskKD->Text);
	ADOQueryKD->Active = true;


	if (ADOQueryKD->FieldByName("id")->IsNull) {
		ShowMessage("Не найден абитуриент с такой фамилией");
		ADOQueryKD->Active = false;
		ADOQueryKD->SQL->Text = "Select * from ApplicantsKd";
		ADOQueryKD->Active = true;

		EditPoiskKD->Text = "Введите фамилию абитуриента";
		EditPoiskKD->Font->Color = clGray;

		ButtonPoiskKD->Enabled=false;
	}


}
//---------------------------------------------------------------------------

void __fastcall TStartForm::EditPoiskKDMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	if (EditPoiskKD->Text == "Введите фамилию абитуриента") {
		EditPoiskKD->Text = "";
		EditPoiskKD->Font->Color = clBlack;
	}
	ButtonPoiskKD->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TStartForm::EditPoiskExit(TObject *Sender)
{
		if (EditPoisk->Text == "") {
		EditPoisk->Text = "Введите фамилию абитуриента";
		EditPoisk->Font->Color = clSilver;
	}
	//ButtonPoisk->Enabled=false;
}
//---------------------------------------------------------------------------

void __fastcall TStartForm::EditPoiskKDExit(TObject *Sender)
{
		if (EditPoiskKD->Text == "") {
		EditPoiskKD->Text = "Введите фамилию абитуриента";
		EditPoiskKD->Font->Color = clSilver;
	}
	//ButtonPoiskKD->Enabled=false;
}
//---------------------------------------------------------------------------





void __fastcall TStartForm::ButtonSbrosKDClick(TObject *Sender)
{
	DataSourceKD->DataSet = ADOQueryKD;

		ADOQueryKD->Active = false;
		ADOQueryKD->SQL->Text = "Select * from ApplicantsKd";
		ADOQueryKD->Active = true;

	EditPoiskKD->Text = "Введите фамилию абитуриента";
	EditPoiskKD->Font->Color = clGray;


			if (EditPoiskKD->Text=="Введите фамилию абитуриента" || EditPoiskKD->Text=="") {
		ButtonPoiskKD->Enabled=false;
	}
	else
	{
		ButtonPoiskKD->Enabled=true;
	}
}
//---------------------------------------------------------------------------




void __fastcall TStartForm::EditPoiskPedMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	if (EditPoiskPed->Text == "Введите фамилию абитуриента") {
		EditPoiskPed->Text = "";
		EditPoiskPed->Font->Color = clBlack;
	}
	ButtonPoiskPed->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TStartForm::EditPoiskPedExit(TObject *Sender)
{
		if (EditPoiskPed->Text == "") {
		EditPoiskPed->Text = "Введите фамилию абитуриента";
		EditPoiskPed->Font->Color = clSilver;
	}
}
//---------------------------------------------------------------------------

void __fastcall TStartForm::ButtonPoiskPedClick(TObject *Sender)
{
	DataSourcePed->DataSet = ADOQueryPed;

	ADOQueryPed->Active = false;
	ADOQueryPed->SQL->Text = "Select * from ApplicantsPed where Surname=" +
		QuotedStr(EditPoiskPed->Text);
	ADOQueryPed->Active = true;


	if (ADOQueryPed->FieldByName("id")->IsNull) {
		ShowMessage("Не найден абитуриент с такой фамилией");
		ADOQueryPed->Active = false;
		ADOQueryPed->SQL->Text = "Select * from ApplicantsPed";
		ADOQueryPed->Active = true;

		EditPoiskPed->Text = "Введите фамилию абитуриента";
		EditPoiskPed->Font->Color = clGray;

		ButtonPoiskPed->Enabled=false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TStartForm::ButtonSbrosPedClick(TObject *Sender)
{
	DataSourcePed->DataSet = ADOQueryPed;

		ADOQueryPed->Active = false;
		ADOQueryPed->SQL->Text = "Select * from ApplicantsPed";
		ADOQueryPed->Active = true;

	EditPoiskPed->Text = "Введите фамилию абитуриента";
	EditPoiskPed->Font->Color = clGray;


			if (EditPoiskPed->Text=="Введите фамилию абитуриента" || EditPoiskPed->Text=="") {
		ButtonPoiskPed->Enabled=false;
	}
	else
	{
		ButtonPoiskPed->Enabled=true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TStartForm::EditPoiskElMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	if (EditPoiskEl->Text == "Введите фамилию абитуриента") {
		EditPoiskEl->Text = "";
		EditPoiskEl->Font->Color = clBlack;
	}
	ButtonPoiskEl->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TStartForm::EditPoiskElExit(TObject *Sender)
{
		if (EditPoiskEl->Text == "") {
		EditPoiskEl->Text = "Введите фамилию абитуриента";
		EditPoiskEl->Font->Color = clSilver;
	}
}
//---------------------------------------------------------------------------

void __fastcall TStartForm::ButtonPoiskElClick(TObject *Sender)
{
	DataSourceEl->DataSet = ADOQueryEl;

	ADOQueryEl->Active = false;
	ADOQueryEl->SQL->Text = "Select * from ApplicantsEl where Surname=" +
		QuotedStr(EditPoiskEl->Text);
	ADOQueryEl->Active = true;


	if (ADOQueryEl->FieldByName("id")->IsNull) {
		ShowMessage("Не найден абитуриент с такой фамилией");
		ADOQueryEl->Active = false;
		ADOQueryEl->SQL->Text = "Select * from ApplicantsEl";
		ADOQueryEl->Active = true;

		EditPoiskEl->Text = "Введите фамилию абитуриента";
		EditPoiskEl->Font->Color = clGray;

		ButtonPoiskEl->Enabled=false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TStartForm::ButtonSbrosElClick(TObject *Sender)
{
	DataSourceEl->DataSet = ADOQueryEl;

		ADOQueryEl->Active = false;
		ADOQueryEl->SQL->Text = "Select * from ApplicantsEl";
		ADOQueryEl->Active = true;

	EditPoiskEl->Text = "Введите фамилию абитуриента";
	EditPoiskEl->Font->Color = clGray;


			if (EditPoiskEl->Text=="Введите фамилию абитуриента" || EditPoiskEl->Text=="") {
		ButtonPoiskEl->Enabled=false;
	}
	else
	{
		ButtonPoiskEl->Enabled=true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TStartForm::LabelAuthClick(TObject *Sender)
{
StartForm->Hide();
AuthorizationForm->Show();
}
//---------------------------------------------------------------------------

void __fastcall TStartForm::FormClose(TObject *Sender, TCloseAction &Action)
{
Application->Terminate();
}
//---------------------------------------------------------------------------





