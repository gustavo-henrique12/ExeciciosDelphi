unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    edt1: TEdit;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
   case MessageDlg('Devo Continuar', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      6:
         ShowMessage('Seja Feliz');
      7:
         begin
            ShowMessage('Adeus');
            Close;
         end;
      else
         begin
            ShowMessage('Tudo bem, Você quem sabe!!');
         end;
   end;

end;

end.
