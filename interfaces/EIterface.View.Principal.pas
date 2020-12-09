unit EInterface.Model.Interfaces;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
   Ipessoa = interface
      ['{7301C3B0-6536-4640-8FDF-0655EF407E55}']
      function Nome(Value : String) : IPessoa;
      function SobreNome(Valuem : String) : IPessoa;
      function Nome Completo : String;
   end; 


var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
 