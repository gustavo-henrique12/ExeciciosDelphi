program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  EInterface.Model.Pessoa in 'EInterface.Model.Pessoa.pas',
  EInterface.Model.Interfaces in 'EInterface.Model.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
