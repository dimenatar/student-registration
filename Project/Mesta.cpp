//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Mesta.h"
#include "Applicants.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TMestaForm *MestaForm;

int kolmest;
//---------------------------------------------------------------------------
__fastcall TMestaForm::TMestaForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TMestaForm::FormActivate(TObject *Sender)
{
KolMestEdit->Enabled=true;
ComboBoxSpecialityKolMest->Enabled=true;
}
//---------------------------------------------------------------------------
void __fastcall TMestaForm::Button1Click(TObject *Sender)
{
if(ComboBoxSpecialityKolMest->ItemIndex==-1 || KolMestEdit->Text=="������� ��������� ����"
|| KolMestEdit->Text=="" )
{
	ShowMessage("������ ������� �������");
	/*MarkEdit->Text="������� ������� ����*";
	ComboBoxSpecialityMark->ItemIndex=-1; */
}
else
{

	kolmest = StrToFloat(KolMestEdit->Text);
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

		ShowMessage("������ ���� ��� �������");
		KolMestEdit->Text="������� ���������� ����";
ComboBoxSpecialityKolMest->ItemIndex=-1;
ComboBoxSpecialityKolMest->Text="��� �������������";
MestaForm->Hide();

}
}
//---------------------------------------------------------------------------
