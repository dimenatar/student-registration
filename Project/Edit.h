//---------------------------------------------------------------------------

#ifndef EditH
#define EditH
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
//---------------------------------------------------------------------------
class TEditForm : public TForm
{
__published:	// IDE-managed Components
	TPageControl *PageControlEdit;
	TTabSheet *TabSheetAverageMark;
	TTabSheet *TabSheetKolMest;
	TEdit *KolMestEdit;
	TButton *ButtonAddMark;
	TButton *Button1;
	TComboBox *ComboBoxSpecialityKolMest;
	TComboBox *ComboBoxSpecialityMark;
	TADOConnection *ADOConnectionKolMest;
	TADOQuery *ADOQueryKolMest;
	TLabel *Label1;
	TEdit *MarkEdit;
	TDataSource *DataSourceKolMest;
	TDBGrid *DBGrid1;
	TButton *ButtonBack;
	TADOTable *ADOTableKolMest;
	TWideStringField *ADOTableKolMestSpeciality;
	TIntegerField *ADOTableKolMestPlaces;
	TFloatField *ADOTableKolMestPassingscore;
	void __fastcall MarkEditMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall MarkEditExit(TObject *Sender);
	void __fastcall KolMestEditMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall KolMestEditExit(TObject *Sender);
	void __fastcall MarkEditKeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall ButtonAddMarkClick(TObject *Sender);
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall ButtonBackClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TEditForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEditForm *EditForm;
//---------------------------------------------------------------------------
#endif
