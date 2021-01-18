unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  nome : array [0..9] of string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   nome[StrToInt(Edit2.Text)] := Edit1.text;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   ShowMessage(Nome[StrToInt(Edit2.text)]);
end;

end.
