unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    edt1: TEdit;
    chk1: TCheckBox;
    chk2: TCheckBox;
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
   if chk1.Checked then
      ShowMessage('Verdadeiro')
   else if chk2.Checked then
           ShowMessage('CheckBOx2 Verdadeiro')
        else
           ShowMessage('Falso');
end;

end.
