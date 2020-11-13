//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Edit.h"
#include "Main.h"
#include "Applicants.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TEditForm *EditForm;

//float averageMark;
int kolmest;
//---------------------------------------------------------------------------
__fastcall TEditForm::TEditForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TEditForm::MarkEditMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	if (MarkEdit->Text == "������� ������� ����*") {
		MarkEdit->Text = "";
		MarkEdit->Font->Color = clBlack;
	}
}
//---------------------------------------------------------------------------
void __fastcall TEditForm::MarkEditExit(TObject *Sender)
{
	if (MarkEdit->Text == "") {
		MarkEdit->Text = "������� ������� ����*";
		MarkEdit->Font->Color = clBlack;
	}
}
//---------------------------------------------------------------------------
void __fastcall TEditForm::KolMestEditMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	if (KolMestEdit->Text == "������� ���������� ����") {
		KolMestEdit->Text = "";
		KolMestEdit->Font->Color = clBlack;
	}
}
//---------------------------------------------------------------------------
void __fastcall TEditForm::KolMestEditExit(TObject *Sender)
{
	if (KolMestEdit->Text == "") {
		KolMestEdit->Text = "������� ���������� ����";
		KolMestEdit->Font->Color = clBlack;
	}
}
//---------------------------------------------------------------------------
void __fastcall TEditForm::MarkEditKeyPress(TObject *Sender, System::WideChar &Key)

{
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
			if (MarkEdit->Text.Pos(Key) != 0)
				Key = 0;
			break;
		}
	default:
		Key = 0;
	}
}
//---------------------------------------------------------------------------
void __fastcall TEditForm::ButtonAddMarkClick(TObject *Sender)
{  /*

if(ComboBoxSpecialityMark->ItemIndex==-1 || MarkEdit->Text=="������� ������� ����*"
|| MarkEdit->Text=="" || StrToFloat(MarkEdit->Text) > 10 )
{
	ShowMessage("������ ������� �������");
	MarkEdit->Text="������� ������� ����*";
	ComboBoxSpecialityMark->ItemIndex=-1;
}
else
{
	averageMark = StrToFloat(MarkEdit->Text);
	ADOTableKolMest->Open();

	if(ComboBoxSpecialityMark->ItemIndex==0)
	{
	while(!ADOTableKolMest->Eof)
	{
	if(ADOTableKolMest->FieldByName("Speciality")->AsString=="����")
	{
		//ADOTableKolMest->FieldByName("Passing score")->Value = averageMark;
		DataSourceKolMest->DataSet->Edit();
		DataSourceKolMest->DataSet->FieldByName("Passing score")->Value = averageMark;
		DataSourceKolMest->DataSet->Post();
	}
	ADOTableKolMest->Next();
	}
	}

	if(ComboBoxSpecialityMark->ItemIndex==1)
	{
	while(!ADOTableKolMest->Eof)
	{
	if(ADOTableKolMest->FieldByName("Speciality")->AsString=="��")
	{
		//ADOTableKolMest->FieldByName("Passing score")->Value = averageMark;
		DataSourceKolMest->DataSet->Edit();
		DataSourceKolMest->DataSet->FieldByName("Passing score")->Value = averageMark;
		DataSourceKolMest->DataSet->Post();
	}
	ADOTableKolMest->Next();
	}
	}

	if(ComboBoxSpecialityMark->ItemIndex==2)
	{
	while(!ADOTableKolMest->Eof)
	{
	if(ADOTableKolMest->FieldByName("Speciality")->AsString=="����������")
	{
		//ADOTableKolMest->FieldByName("Passing score")->Value = averageMark;
		DataSourceKolMest->DataSet->Edit();
		DataSourceKolMest->DataSet->FieldByName("Passing score")->Value = averageMark;
		DataSourceKolMest->DataSet->Post();
	}
	ADOTableKolMest->Next();
	}
	}

	if(ComboBoxSpecialityMark->ItemIndex==3)
	{
	while(!ADOTableKolMest->Eof)
	{
	if(ADOTableKolMest->FieldByName("Speciality")->AsString=="����������������")
	{
		//ADOTableKolMest->FieldByName("Passing score")->Value = averageMark;
		DataSourceKolMest->DataSet->Edit();
		DataSourceKolMest->DataSet->FieldByName("Passing score")->Value = averageMark;
		DataSourceKolMest->DataSet->Post();
	}
	ADOTableKolMest->Next();
	}
	}

}    */
}
//---------------------------------------------------------------------------
void __fastcall TEditForm::FormActivate(TObject *Sender)
{
MarkEdit->Enabled=true;
ComboBoxSpecialityMark->Enabled=true;
KolMestEdit->Enabled=true;
ComboBoxSpecialityKolMest->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TEditForm::FormClose(TObject *Sender, TCloseAction &Action)
{
ApplicantsForm->Show();
EditForm->Hide();

ComboBoxSpecialityMark->ItemIndex=-1;
ComboBoxSpecialityMark->Text="��� �������������";

ComboBoxSpecialityKolMest->ItemIndex=-1;
ComboBoxSpecialityKolMest->Text="��� �������������";
}
//---------------------------------------------------------------------------

void __fastcall TEditForm::Button1Click(TObject *Sender)
{

if(ComboBoxSpecialityKolMest->ItemIndex==-1 || KolMestEdit->Text=="������� ���������� ����"
|| KolMestEdit->Text=="" || StrToFloat(KolMestEdit->Text) > 10 )
{
	ShowMessage("������ ������� �������");
	KolMestEdit->Text="������� ���������� ����";
    ComboBoxSpecialityKolMest->ItemIndex=-1;
}
else
{
	kolmest = StrToInt(KolMestEdit->Text);
	ADOTableKolMest->Open();

	if(ComboBoxSpecialityKolMest->ItemIndex==0)
	{
	while(!ADOTableKolMest->Eof)
	{
	if(ADOTableKolMest->FieldByName("Speciality")->AsString=="����")
	{
		//ADOTableKolMest->FieldByName("Passing score")->Value = averageMark;
		DataSourceKolMest->DataSet->Edit();
		DataSourceKolMest->DataSet->FieldByName("Places")->Value = kolmest;
		DataSourceKolMest->DataSet->Post();
	}
	ADOTableKolMest->Next();
	}
	}

	if(ComboBoxSpecialityKolMest->ItemIndex==1)
	{
	while(!ADOTableKolMest->Eof)
	{
	if(ADOTableKolMest->FieldByName("Speciality")->AsString=="��")
	{
		//ADOTableKolMest->FieldByName("Passing score")->Value = averageMark;
		DataSourceKolMest->DataSet->Edit();
		DataSourceKolMest->DataSet->FieldByName("Places")->Value = kolmest;
		DataSourceKolMest->DataSet->Post();
	}
	ADOTableKolMest->Next();
	}
	}

	if(ComboBoxSpecialityKolMest->ItemIndex==2)
	{
	while(!ADOTableKolMest->Eof)
	{
	if(ADOTableKolMest->FieldByName("Speciality")->AsString=="����������")
	{
		//ADOTableKolMest->FieldByName("Passing score")->Value = averageMark;
		DataSourceKolMest->DataSet->Edit();
		DataSourceKolMest->DataSet->FieldByName("Places")->Value = kolmest;
		DataSourceKolMest->DataSet->Post();
	}
	ADOTableKolMest->Next();
	}
	}

	if(ComboBoxSpecialityKolMest->ItemIndex==3)
	{
	while(!ADOTableKolMest->Eof)
	{
	if(ADOTableKolMest->FieldByName("Speciality")->AsString=="����������������")
	{
		//ADOTableKolMest->FieldByName("Passing score")->Value = averageMark;
		DataSourceKolMest->DataSet->Edit();
		DataSourceKolMest->DataSet->FieldByName("Places")->Value = kolmest;
		DataSourceKolMest->DataSet->Post();
	}
	ADOTableKolMest->Next();
	}
	}

	 ADOTableKolMest->Close();
}
}
//---------------------------------------------------------------------------

void __fastcall TEditForm::ButtonBackClick(TObject *Sender)
{
MainForm->Show();
EditForm->Hide();
}
//---------------------------------------------------------------------------

