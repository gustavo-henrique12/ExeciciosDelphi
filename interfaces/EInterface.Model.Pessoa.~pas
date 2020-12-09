unit EInterface.Model.Pessoa;

interface
   uses
      EInterface.Model.Interfaces;

   type

      TModelPessoa = class(TInterfacedObject, IPessoa)
      end;
   Private
      FNome : String;
      FSobreNome : String
      function Nome(Value : String) : IPessoa;
      function SobreNome(Valuem : String) : IPessoa;
      function Nome Completo : String;   
   Public
      constructor  Create;
      destructor  Destroy; override;
   end;

implementation
 {TModelPessoa}

constructor TModelPessoa.Create;
begin

end;

destructor TModelPessoa.Destroy;
begin

end;

function TModelPessoa.Nome(Value : String) : IPessoa;
begin
   Result := Self;
end;

function TModelPessoa.NomeCompleto(value : String) : IPessoa;
begin

end;

function TModelPessoa.SobreNome(Value : String) : IPessoa;
begin

end;
end.
