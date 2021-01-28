unit Classe.Pessoa;

interface

uses
   SysUtils, Classe.SQL;

type
   Tpessoa = class

   private
      FNome : string;
      FEtnia: string;
      FSexo: string;
      FDataNasc: String;
      function getNome        : string;
      procedure setNome(Value : string);
   public
      property DataNasc       : String read FDataNasc write FDataNasc;
      property sexo           : string read FSexo     write FSexo;
      property Etinia         : string read FEtnia    write FEtinia;
      property NOme           : string read getNome   write setNome;
      function idade          : Integer;
   end;

implementation

{ Tpessoa }



function Tpessoa.idade: Integer;
begin
   Result := Trunc((now -StrToDate(DataNasc)) / 365.35);
end;

function Tpessoa.getNome: string;
begin
   Result := FNome;
end;

procedure Tpessoa.setNome(Value: string);
begin
   if Value = '' then
      raise Exception.Create('Valor não pode ser vazio');
   FNome := value;
end;

end.
 