unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    tmr1: TTimer;
    lbl1: TLabel;
    procedure lbl1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.lbl1Click(Sender: TObject);
begin
   lbl1.Caption := DateTimeToStr(Now) ; // Now -> Comando responsável por pegar a data e a hora no Sistema Operacional.
   
end;

end.
