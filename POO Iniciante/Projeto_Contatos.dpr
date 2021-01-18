program Projeto_Contatos;

uses
  Forms,
  Unit1_Contatos in 'Unit1_Contatos.pas' {Form_Contatos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_Contatos, Form_Contatos);
  Application.Run;
end.
