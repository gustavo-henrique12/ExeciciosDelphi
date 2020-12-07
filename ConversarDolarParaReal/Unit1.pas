unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    EDolar: TEdit;
    Button1: TButton;
    EReal: TEdit;
    DOLAR: TLabel;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  VarReal: REAl;
  

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
    IF EDolar.text = ('') then
        SHOWMESSAGE('DIGITE VALOR EM DÓLAR')

    ELSE
        begin
            VarReal := StrToFloat(EDolar.text) * 3.9;
            EReal.Text := Floattostr(VarReal);
        end;
end;

end.
