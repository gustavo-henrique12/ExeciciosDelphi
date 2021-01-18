unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
   


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);

begin
    Label1.Caption := (IntToStr(length(Edit1.text)));

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
    Label1.Caption := (IntToStr(length(Edit1.text)));
end;

end.
