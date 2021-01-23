program Clube;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
