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
var
  i : Integer;
  s : string;
begin
   try
     //Bloco de código
     i := StrToInt(edt1.Text);
     ShowMessage('sucesso');
   except
      //Bloco de código caso ocorra algum erro.
      MessageDlg('Erro de conversão', mtError, [mbOK], 0);
   end;
end;

end.
