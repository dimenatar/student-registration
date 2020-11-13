//---------------------------------------------------------------------------

#ifndef RegistrationH
#define RegistrationH
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
class TRegistrationForm : public TForm
{
__published:	// IDE-managed Components
	TLabel *LabelAuthorization;
	TEdit *loginEdit;
	TEdit *passwordEdit;
	TButton *registrationButton;
	TEdit *SurnameEdit;
	TEdit *NameEdit;
	TButton *ButtonVisible;
	TADOConnection *ADOConnectionRegistration;
	TADOQuery *ADOQueryRegistration;
	TADOTable *ADOTableRegistration;
	TImage *Eye;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall SurnameEditMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall NameEditMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall loginEditMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall passwordEditMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall LabelAuthorizationClick(TObject *Sender);
	void __fastcall registrationButtonClick(TObject *Sender);
	void __fastcall ButtonVisibleClick(TObject *Sender);
	void __fastcall passwordEditChange(TObject *Sender);
	void __fastcall SurnameEditExit(TObject *Sender);
	void __fastcall NameEditExit(TObject *Sender);
	void __fastcall loginEditExit(TObject *Sender);
	void __fastcall passwordEditExit(TObject *Sender);
	void __fastcall EyeClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TRegistrationForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TRegistrationForm *RegistrationForm;
//---------------------------------------------------------------------------
#endif
