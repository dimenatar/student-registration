//---------------------------------------------------------------------------

#ifndef QuestionFullH
#define QuestionFullH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
//---------------------------------------------------------------------------
class TQuestionFullForm : public TForm
{
__published:	// IDE-managed Components
	TLabel *LabelQ;
	TButton *ButtonNo;
	TButton *ButtonYes;
	void __fastcall ButtonNoClick(TObject *Sender);
	void __fastcall ButtonYesClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TQuestionFullForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TQuestionFullForm *QuestionFullForm;
//---------------------------------------------------------------------------
#endif
