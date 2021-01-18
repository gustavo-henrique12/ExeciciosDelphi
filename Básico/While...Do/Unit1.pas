unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    mmo1: TMemo;
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
  i: Integer;
begin
   i := 1;
   while i<= 10 do
   begin
      mmo1.Lines.Add('Adicionado Linha: '+ IntToStr(i));
      Inc(i);
   end;
   mmo1.Lines.Add('Finalizado!!');
end;

end.
