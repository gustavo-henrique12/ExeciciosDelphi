unit Classe.Pessoa;

interface

uses
   SysUtils, Classe.SQL;

type
   Tpessoa = class

   private

   public
      nome    : String;
      DataNasc: String;
      sexo    : string;
      Etinia  : string;
      SQL     : TConSQL;
      function idade : Integer;
   end;

implementation

{ Tpessoa }

function Tpessoa.idade: Integer;
begin
   Result := Trunc((now -StrToDate(DataNasc)) / 365.35);
end;

end.
 