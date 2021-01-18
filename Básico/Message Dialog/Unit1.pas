unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
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
  Retorno : Integer;
begin
   //MessageDlg('Erro de Operação', mtError, [mbOK], 0);
   //MessageDlg('Erro de Operação', mtWarning, [mbOK], 0);
   Retorno :=  MessageDlg('Erro de Operação, Deseja Continuar ?', mtConfirmation, [mbYes, mbNo], 0);
   ShowMessage(IntToStr(Retorno));
end;

end.
