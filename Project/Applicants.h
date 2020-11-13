//---------------------------------------------------------------------------

#ifndef ApplicantsH
#define ApplicantsH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.ComCtrls.hpp>
#include <System.math.hpp>
//---------------------------------------------------------------------------
class TApplicantsForm : public TForm
{
__published:	// IDE-managed Components
	TADOConnection *ADOConnection2;
	TADOQuery *ADOQuery2;
	TDataSource *DataSource2;
	TADOTable *ADOTable2;
	TADOConnection *ADOConnectionApplicants;
	TADOQuery *ADOQueryApplicants;
	TDataSource *DataSourceApplicants;
	TADOTable *ADOTableApplicants;
	TADOConnection *ADOConnectionKD;
	TADOQuery *ADOQueryKD;
	TDataSource *DataSourceKD;
	TADOTable *ADOTableKD;
	TADOConnection *ADOConnectionPed;
	TADOQuery *ADOQueryPed;
	TDataSource *DataSourcePed;
	TADOTable *ADOTablePed;
	TADOConnection *ADOConnection1;
	TADOQuery *ADOQuery1;
	TDataSource *DataSource1;
	TADOTable *ADOTable1;
	TADOConnection *ADOConnectionEl;
	TADOQuery *ADOQueryEl;
	TDataSource *DataSourceEl;
	TADOTable *ADOTableEl;
	TPageControl *PageControlApplicants;
	TTabSheet *POITSheet;
	TDBGrid *DBGridPoit;
	TEdit *EditPoisk;
	TButton *ButtonPoisk;
	TButton *ButtonSbros;
	TTabSheet *KDSheet;
	TDBGrid *DBGridKD;
	TEdit *EditPoiskKD;
	TButton *ButtonPoiskKD;
	TButton *ButtonSbrosKD;
	TTabSheet *PedSheet;
	TButton *ButtonSbrosPed;
	TDBGrid *DBGridPed;
	TButton *ButtonPoiskPed;
	TEdit *EditPoiskPed;
	TTabSheet *TabSheetEl;
	TButton *ButtonBack;
	TDBGrid *DBGridEl;
	TEdit *EditPoiskEl;
	TButton *ButtonPoiskEl;
	TButton *ButtonSbrosEl;
	TButton *ButtonAdd;
	TButton *Button1;
	TAutoIncField *ADOQueryPedid;
	TWideStringField *ADOQueryPedSurname;
	TWideStringField *ADOQueryPedName;
	TFloatField *ADOQueryPedAveragemark;
	TDateTimeField *ADOQueryPedApplicationdate;
	TWideStringField *ADOQueryPedSpeciality;
	TAutoIncField *ADOTablePedid;
	TWideStringField *ADOTablePedSurname;
	TWideStringField *ADOTablePedName;
	TFloatField *ADOTablePedAveragemark;
	TDateTimeField *ADOTablePedApplicationdate;
	TWideStringField *ADOTablePedSpeciality;
	TAutoIncField *ADOTableApplicantsid;
	TWideStringField *ADOTableApplicantsSurname;
	TWideStringField *ADOTableApplicantsName;
	TFloatField *ADOTableApplicantsAveragemark;
	TDateTimeField *ADOTableApplicantsApplicationdate;
	TWideStringField *ADOTableApplicantsSpeciality;
	TAutoIncField *ADOTableKDid;
	TWideStringField *ADOTableKDSurname;
	TWideStringField *ADOTableKDName;
	TFloatField *ADOTableKDAveragemark;
	TDateTimeField *ADOTableKDApplicationdate;
	TWideStringField *ADOTableKDSpeciality;
	TAutoIncField *ADOTableElid;
	TWideStringField *ADOTableElSurname;
	TWideStringField *ADOTableElName;
	TFloatField *ADOTableElAveragemark;
	TDateTimeField *ADOTableElApplicationdate;
	TWideStringField *ADOTableElSpeciality;
	TButton *ButtonDelete;
	TButton *MarkButton;
	TLabel *LabelMarkPoit;
	TLabel *LabelPoit;
	TAutoIncField *ADOQueryApplicantsid;
	TWideStringField *ADOQueryApplicantsSurname;
	TWideStringField *ADOQueryApplicantsName;
	TFloatField *ADOQueryApplicantsAveragemark;
	TDateTimeField *ADOQueryApplicantsApplicationdate;
	TWideStringField *ADOQueryApplicantsSpeciality;
	TAutoIncField *ADOQueryKDid;
	TWideStringField *ADOQueryKDSurname;
	TWideStringField *ADOQueryKDName;
	TFloatField *ADOQueryKDAveragemark;
	TDateTimeField *ADOQueryKDApplicationdate;
	TWideStringField *ADOQueryKDSpeciality;
	TAutoIncField *ADOQueryElid;
	TWideStringField *ADOQueryElSurname;
	TWideStringField *ADOQueryElName;
	TFloatField *ADOQueryElAveragemark;
	TDateTimeField *ADOQueryElApplicationdate;
	TWideStringField *ADOQueryElSpeciality;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label5;
	TLabel *LabelKd;
	TLabel *LabelPed;
	TLabel *LabelEl;
	TADOTable *ADOTableMark;
	TWideStringField *ADOTableMarkSpeciality;
	TIntegerField *ADOTableMarkPlaces;
	TFloatField *ADOTableMarkPassingscore;
	TDataSource *DataSourceMark;
	TADOConnection *ADOConnectionMark;
	void __fastcall EditPoiskMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall EditPoiskExit(TObject *Sender);
	void __fastcall ButtonPoiskClick(TObject *Sender);
	void __fastcall ButtonSbrosClick(TObject *Sender);
	void __fastcall EditPoiskKDMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall EditPoiskKDExit(TObject *Sender);
	void __fastcall ButtonPoiskKDClick(TObject *Sender);
	void __fastcall ButtonSbrosKDClick(TObject *Sender);
	void __fastcall EditPoiskPedMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall EditPoiskPedExit(TObject *Sender);
	void __fastcall ButtonPoiskPedClick(TObject *Sender);
	void __fastcall ButtonSbrosPedClick(TObject *Sender);
	void __fastcall EditPoiskElMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall EditPoiskElExit(TObject *Sender);
	void __fastcall ButtonPoiskElClick(TObject *Sender);
	void __fastcall ButtonSbrosElClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall ButtonBackClick(TObject *Sender);
	void __fastcall ButtonAddClick(TObject *Sender);
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall ButtonDeleteClick(TObject *Sender);
	void __fastcall MarkButtonClick(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);


private:	// User declarations
public:		// User declarations
	__fastcall TApplicantsForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TApplicantsForm *ApplicantsForm;
//---------------------------------------------------------------------------
#endif
