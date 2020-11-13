//---------------------------------------------------------------------------

#ifndef AuthorizationH
#define AuthorizationH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Imaging.pngimage.hpp>
//---------------------------------------------------------------------------
class TAuthorizationForm : public TForm
{
__published:	// IDE-managed Components
	TLabel *LabelRegistration;
	TEdit *loginEdit;
	TEdit *passwordEdit;
	TButton *enterButton;
	TButton *ButtonVisible;
	TADOConnection *ADOConnectionAuthorization;
	TADOTable *ADOTableAuthorization;
	TLabel *LabelBack;
	TImage *Eye;
	void __fastcall loginEditClick(TObject *Sender);
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall loginEditMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall passwordEditMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall passwordEditClick(TObject *Sender);
	void __fastcall ButtonVisibleClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall LabelRegistrationClick(TObject *Sender);
	void __fastcall enterButtonClick(TObject *Sender);
	void __fastcall LabelBackClick(TObject *Sender);
	void __fastcall loginEditExit(TObject *Sender);
	void __fastcall passwordEditExit(TObject *Sender);
	void __fastcall EyeClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TAuthorizationForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TAuthorizationForm *AuthorizationForm;
//---------------------------------------------------------------------------
#endif