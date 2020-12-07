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
    BTCompra: TButton;
    Label2: TLabel;
    MSG: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BTCompraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  VarReal: REAl;
  VarNome: String;
  

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
    IF EDolar.text = ('') then
        Begin
            BTCompra.Enabled := false;
            SHOWMESSAGE('DIGITE VALOR EM DÓLAR')
        End
    ELSE
        begin
            BTCompra.Enabled := true;
            VarReal := StrToFloat(EDolar.text) * 3.9;
            EReal.Text := Floattostr(VarReal);
        end;
end;

procedure TForm1.BTCompraClick(Sender: TObject);
begin
    VarNome := INPUTBOX('Nome', 'Digite Seu Nome', '');

    MSG.Caption := 'Parabens ' + VarNome + ', você comprou ' + EDolar.text + ' Dolar(es).';

end;

end.
