//---------------------------------------------------------------------------

#ifndef MestaH
#define MestaH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
//---------------------------------------------------------------------------
class TMestaForm : public TForm
{
__published:	// IDE-managed Components
	TEdit *KolMestEdit;
	TButton *Button1;
	TComboBox *ComboBoxSpecialityKolMest;
	TADOConnection *ADOConnectionKolMest;
	TADOTable *ADOTableKolMest;
	TDataSource *DataSourceKolMest;
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TMestaForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMestaForm *MestaForm;
//---------------------------------------------------------------------------
#endif
