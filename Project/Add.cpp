// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Add.h"
#include "Applicants.h"
#include "Full.h"
// ---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TAddToForm *AddToForm;

AnsiString surname;
AnsiString name;
float avmark;
AnsiString date;
AnsiString spec;

int kolApp=0;
int kolAppKd=0;
int kolAppPed=0;
int kolAppEl=0;
int kolMestPoit;
int kolMestPed;
int kolMestKd;
int kolMestEl;

float avmarkPoit;
float avmarkKd;
float avmarkPed;
float avmarkEl;

AnsiString poit="����";
AnsiString kd="��";
AnsiString ped ="����������";
AnsiString ele="����������������";

// ---------------------------------------------------------------------------
__fastcall TAddToForm::TAddToForm(TComponent* Owner) : TForm(Owner) {
}

// ---------------------------------------------------------------------------
void __fastcall TAddToForm::FormClose(TObject *Sender, TCloseAction &Action) {
	// Application->Terminate();
    ApplicantsForm->Show();
	AddToForm->Hide();
	SurnameEdit->Text="�������";
	NameEdit->Text="���";
    DateTimePicker->Date=StrToDate("01.01.2020");
    AverageMarkEdit->Text = "������� ����*";
	AverageMarkEdit->Font->Color = clSilver;
	ComboBoxSpeciality->ItemIndex=-1;
    ComboBoxSpeciality->Text="������� �������������";
}

// ---------------------------------------------------------------------------
void __fastcall TAddToForm::FormActivate(TObject *Sender) {
	SurnameEdit->Enabled = true;
	NameEdit->Enabled = true;
	AverageMarkEdit->Enabled = true;
	DateTimePicker->Enabled = true;
	ComboBoxSpeciality->Enabled = true;

    DateTimePicker->MaxDate=Now();
}

// ---------------------------------------------------------------------------
void __fastcall TAddToForm::SurnameEditMouseDown(TObject *Sender,
	TMouseButton Button, TShiftState Shift, int X, int Y) {
	if (SurnameEdit->Text == "�������") {
		SurnameEdit->Text = "";
		SurnameEdit->Font->Color = clBlack;
	}
	/* if (NameEdit->Text == "") {
	 NameEdit->Text = "���";
	 NameEdit->Font->Color = clSilver;
	 }
	 if (AverageMarkEdit->Text == "") {
	 AverageMarkEdit->Text = "������� ����";
	 AverageMarkEdit->Font->Color = clSilver;
	 } */
}

// ---------------------------------------------------------------------------
void __fastcall TAddToForm::SurnameEditExit(TObject *Sender) {
	if (SurnameEdit->Text == "") {
		SurnameEdit->Text = "�������";
		SurnameEdit->Font->Color = clBlack;
	}
	/* if (NameEdit->Text == "") {
	 NameEdit->Text = "���";
	 NameEdit->Font->Color = clSilver;
	 }
	 if (AverageMarkEdit->Text == "") {
	 AverageMarkEdit->Text = "������� ����";
	 AverageMarkEdit->Font->Color = clSilver;
	 } */
}

// ---------------------------------------------------------------------------
void __fastcall TAddToForm::NameEditMouseDown(TObject *Sender,
	TMouseButton Button, TShiftState Shift, int X, int Y) {

	if (NameEdit->Text == "���") {
		NameEdit->Text = "";
		NameEdit->Font->Color = clSilver;
	}
	/* if (AverageMarkEdit->Text == "") {
	 AverageMarkEdit->Text = "������� ����";
	 AverageMarkEdit->Font->Color = clSilver;
	 } */
}

// ---------------------------------------------------------------------------
void __fastcall TAddToForm::NameEditExit(TObject *Sender) {

	if (NameEdit->Text == "") {
		NameEdit->Text = "���";
		NameEdit->Font->Color = clSilver;
	}
}

// ---------------------------------------------------------------------------
void __fastcall TAddToForm::AverageMarkEditMouseDown(TObject *Sender,
	TMouseButton Button, TShiftState Shift, int X, int Y) {
	if (AverageMarkEdit->Text == "������� ����*") {
		AverageMarkEdit->Text = "";
		AverageMarkEdit->Font->Color = clSilver;
	}
}

// ---------------------------------------------------------------------------
void __fastcall TAddToForm::AverageMarkEditExit(TObject *Sender) {
	if (AverageMarkEdit->Text == "") {
		AverageMarkEdit->Text = "������� ����*";
		AverageMarkEdit->Font->Color = clSilver;
	}
}

// ---------------------------------------------------------------------------
void __fastcall TAddToForm::AverageMarkEditKeyPress(TObject *Sender,
	System::WideChar &Key) {
	/*
	 if(isdigit(Key) || Key==',')
	 {
	 if(Key==',')
	 {
	 Key=0;
	 }
	 else
	 return;
	 }
	 else
	 {
	 Key=0;
	 }
	 */
	switch (Key) {
	case '0':
	case '1':
	case '2':
	case '3':
	case '4':
	case '5':
	case '6':
	case '7':
	case '8':
	case '9':
	case 8:
		break;
	case ',': {
			Key = ',';
			if (AverageMarkEdit->Text.Pos(Key) != 0)
				Key = 0;
			break;
		}
	default:
		Key = 0;
	}
}

// ---------------------------------------------------------------------------
void __fastcall TAddToForm::ButtonAddClick(TObject *Sender) {
	if (StrToFloat(AverageMarkEdit->Text) >
		10 || SurnameEdit->Text == "�������" || NameEdit->Text == "���" ||
		ComboBoxSpeciality->ItemIndex == -1 || AverageMarkEdit->Text == "������� ����*") {
		ShowMessage("������ ������� �������");
		AverageMarkEdit->Text = "������� ����*";
		AverageMarkEdit->Font->Color = clSilver;
	}
	else {
		surname = SurnameEdit->Text;
		name = NameEdit->Text;
		avmark = StrToFloat(AverageMarkEdit->Text);
		date = DateToStr(DateTimePicker->Date);
		spec = ComboBoxSpeciality->Text.c_str();

	ADOTableKolMest->Open();
	ADOTableKolMest->First();
	while(!ADOTableKolMest->Eof)
	{
	if(ADOTableKolMest->FieldByName("Speciality")->AsString=="����")
	{
		kolMestPoit=ADOTableKolMest->FieldByName("Places")->AsInteger;
		avmarkPoit=ADOTableKolMest->FieldByName("Passing score")->AsFloat;
	}
	if(ADOTableKolMest->FieldByName("Speciality")->AsString=="��")
	{
		kolMestKd=ADOTableKolMest->FieldByName("Places")->AsInteger;
		avmarkKd=ADOTableKolMest->FieldByName("Passing score")->AsFloat;
	}
	if(ADOTableKolMest->FieldByName("Speciality")->AsString=="����������")
	{
		kolMestPed=ADOTableKolMest->FieldByName("Places")->AsInteger;
		avmarkPed=ADOTableKolMest->FieldByName("Passing score")->AsFloat;
	}
	if(ADOTableKolMest->FieldByName("Speciality")->AsString=="����������������")
	{
		kolMestEl=ADOTableKolMest->FieldByName("Places")->AsInteger;
		avmarkEl=ADOTableKolMest->FieldByName("Passing score")->AsFloat;
	}

	ADOTableKolMest->Next();
	}


	if(StrToFloat(AverageMarkEdit->Text)<= RoundTo(avmarkPoit, -1) &&
		 ComboBoxSpeciality->ItemIndex==0 ||
		 StrToFloat(AverageMarkEdit->Text)<= RoundTo(avmarkKd, -1) &&
		 ComboBoxSpeciality->ItemIndex==1 ||
		 StrToFloat(AverageMarkEdit->Text)<= RoundTo(avmarkPed, -1) &&
		 ComboBoxSpeciality->ItemIndex==2 ||
		 StrToFloat(AverageMarkEdit->Text)<= RoundTo(avmarkEl, -1) &&
		 ComboBoxSpeciality->ItemIndex==3 )
	 {
		ShowMessage("��������� ���� ���� ���������� ��� ����� �����");
        AverageMarkEdit->Text = "������� ����*";
	 }
	 else
	 {                                                0
        ADOTableAddTo->Open();
		ADOTableAddTo->Insert();

		ADOTableAddTo->FieldByName("Surname")->Value = surname;
		ADOTableAddTo->FieldByName("Name")->Value = name;
		ADOTableAddTo->FieldByName("Average mark")->Value = avmark;
		ADOTableAddTo->FieldByName("Application date")->Value = StrToDate(date);
		ADOTableAddTo->FieldByName("Speciality")->Value = spec;

		ADOTableAddTo->Post();

		ShowMessage("���������� ��� ��������");

        ApplicantsForm->Show();
		AddToForm->Hide();

        SurnameEdit->Text="�������";
		NameEdit->Text="���";
		DateTimePicker->Date=StrToDate("01.01.2020");
		AverageMarkEdit->Text = "������� ����*";
		AverageMarkEdit->Font->Color = clSilver;
		ComboBoxSpeciality->ItemIndex=-1;
		ComboBoxSpeciality->Text="������� �������������";
	 }
		/*
		while(!FullForm->ADOTableFull->Eof)
		{
		if(FullForm->ADOTableFull->FieldByName("Speciality")->Value=="����������" &&
		  FullForm->ADOTableFull->FieldByName("Average mark")->Value < 7)
		  {
            FullForm->ADOTableFull->Delete();
		  }
          FullForm->ADOTableFull->Next();
		}  */

		//
		ApplicantsForm->ADOConnectionApplicants->Connected=false;
		ApplicantsForm->ADOConnectionApplicants->Connected=true;
		ApplicantsForm->ADOTableApplicants->Active=false;
		ApplicantsForm->ADOTableApplicants->Active=true;

		ApplicantsForm->ADOConnectionKD->Connected=false;
		ApplicantsForm->ADOConnectionKD->Connected=true;
		ApplicantsForm->ADOTableKD->Active=false;
		ApplicantsForm->ADOTableKD->Active=true;

		ApplicantsForm->ADOConnectionPed->Connected=false;
		ApplicantsForm->ADOConnectionPed->Connected=true;
		ApplicantsForm->ADOTablePed->Active=false;
		ApplicantsForm->ADOTablePed->Active=true;

		ApplicantsForm->ADOConnectionEl->Connected=false;
		ApplicantsForm->ADOConnectionEl->Connected=true;
		ApplicantsForm->ADOTableEl->Active=false;
		ApplicantsForm->ADOTableEl->Active=true;
		//
		/*
		if(ADOTableAddTo->FieldByName("Speciality")->AsString=="����")
		{
			kolMestPoit=ADOTableAddTo->FieldByName("Places")->AsInteger;
			ShowMessage(kolMestPoit)
		} */

		ApplicantsForm->ADOTableApplicants->Open();
		ApplicantsForm->ADOTableApplicants->First();

		if(ApplicantsForm->ADOTableApplicants->RecordCount > kolMestPoit)
		{
			ApplicantsForm->ADOTableApplicants->Last();
			ApplicantsForm->ADOTableApplicants->Delete();
			ShowMessage("���������� ������������ ���������� ���� �� ������ �������������!");
		}

		ApplicantsForm->ADOTableKD->Open();
		ApplicantsForm->ADOTableKD->First();

		if(ApplicantsForm->ADOTableKD->RecordCount > kolMestKd)
		{
			ApplicantsForm->ADOTableKD->Last();
			ApplicantsForm->ADOTableKD->Delete();
			ShowMessage("���������� ������������ ���������� ���� �� ������ �������������!");
		}



		ApplicantsForm->ADOTablePed->Open();
		ApplicantsForm->ADOTablePed->First();

		if(ApplicantsForm->ADOTablePed->RecordCount > kolMestPed)
		{
			ApplicantsForm->ADOTablePed->Last();

			ApplicantsForm->ADOTablePed->Delete();
			ShowMessage("���������� ������������ ���������� ���� �� ������ �������������!");
		}

		ApplicantsForm->ADOTableEl->Open();
		ApplicantsForm->ADOTableEl->First();

		if(ApplicantsForm->ADOTableEl->RecordCount > kolMestEl)
		{
			ApplicantsForm->ADOTableEl->Last();
			ApplicantsForm->ADOTableEl->Delete();
			ShowMessage("���������� ������������ ���������� ���� �� ������ �������������!");
		}

		ApplicantsForm->DataSourceApplicants->DataSet = ApplicantsForm->ADOTableApplicants;
		ApplicantsForm->DataSourceKD->DataSet = ApplicantsForm->ADOTableKD;
		ApplicantsForm->DataSourcePed->DataSet = ApplicantsForm->ADOTablePed;
        ApplicantsForm->DataSourceEl->DataSet = ApplicantsForm->ADOTableEl;

	   /* ApplicantsForm->Show();
		AddToForm->Hide();
		SurnameEdit->Text="�������";
		NameEdit->Text="���";
		DateTimePicker->Date=StrToDate("01.01.2020");
		AverageMarkEdit->Text = "������� ����*";
		AverageMarkEdit->Font->Color = clSilver;
		ComboBoxSpeciality->ItemIndex=-1;
		ComboBoxSpeciality->Text="������� �������������"; */
	}

}

// ---------------------------------------------------------------------------

