program Clube;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FormPrincipal},
  UnitSobre in '..\..\..\Users\Gustavo\Desktop\Gustavo\Estudos\Delphi\imagens\UnitSobre.pas' {FormSobre};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormSobre, FormSobre);
  Application.Run;
end.
