//---------------------------------------------------------------------------

#ifndef StartH
#define StartH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <System.math.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TStartForm : public TForm
{
__published:	// IDE-managed Components
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
	TLabel *LabelAuth;
	TPageControl *PageControlApplicants;
	TTabSheet *POITTabShit;
	TDBGrid *DBGridPoit;
	TEdit *EditPoisk;
	TButton *ButtonPoisk;
	TButton *ButtonSbros;
	TTabSheet *KDSheet;
	TDBGrid *DBGridKD;
	TEdit *EditPoiskKD;
	TButton *ButtonPoiskKD;
	TButton *ButtonSbrosKD;
	TTabSheet *TabSheetPed;
	TButton *ButtonSbrosPed;
	TDBGrid *DBGridPed;
	TButton *ButtonPoiskPed;
	TEdit *EditPoiskPed;
	TTabSheet *TabSheetEl;
	TDBGrid *DBGridEl;
	TEdit *EditPoiskEl;
	TButton *ButtonPoiskEl;
	TButton *ButtonSbrosEl;
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
	TAutoIncField *ADOTablePedid;
	TWideStringField *ADOTablePedSurname;
	TWideStringField *ADOTablePedName;
	TFloatField *ADOTablePedAveragemark;
	TDateTimeField *ADOTablePedApplicationdate;
	TWideStringField *ADOTablePedSpeciality;
	TAutoIncField *ADOTableElid;
	TWideStringField *ADOTableElSurname;
	TWideStringField *ADOTableElName;
	TFloatField *ADOTableElAveragemark;
	TDateTimeField *ADOTableElApplicationdate;
	TWideStringField *ADOTableElSpeciality;
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
	TAutoIncField *ADOQueryPedid;
	TWideStringField *ADOQueryPedSurname;
	TWideStringField *ADOQueryPedName;
	TFloatField *ADOQueryPedAveragemark;
	TDateTimeField *ADOQueryPedApplicationdate;
	TWideStringField *ADOQueryPedSpeciality;
	TAutoIncField *ADOQueryElid;
	TWideStringField *ADOQueryElSurname;
	TWideStringField *ADOQueryElName;
	TFloatField *ADOQueryElAveragemark;
	TDateTimeField *ADOQueryElApplicationdate;
	TWideStringField *ADOQueryElSpeciality;
	TLabel *LabelPoit;
	TLabel *Label2;
	TLabel *LabelKd;
	TLabel *Label4;
	TLabel *LabelPed;
	TLabel *Label6;
	TLabel *LabelEl;
	TLabel *Label8;
	TLabel *Label1;
	void __fastcall EditPoiskMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall ButtonPoiskClick(TObject *Sender);
	void __fastcall ButtonSbrosClick(TObject *Sender);
	void __fastcall ButtonPoiskKDClick(TObject *Sender);
	void __fastcall EditPoiskKDMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall EditPoiskExit(TObject *Sender);
	void __fastcall EditPoiskKDExit(TObject *Sender);
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
	void __fastcall LabelAuthClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);



private:	// User declarations
public:		// User declarations
	__fastcall TStartForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TStartForm *StartForm;
//---------------------------------------------------------------------------
#endif
