{$APPTYPE CONSOLE}


uses
  SysUtils, windows;



var
   NumeroInformado, aleat, Tentativas: Integer;



begin
    SetConsoleOutputCP(1252);
    Randomize;
    aleat:=random(100);   // gerar número aleatório de 1 a 100
    Tentativas:= 0;

    writeln('digite um número de 1 a 100 : ' );
    readln(NumeroInformado);
    Tentativas:= Tentativas + 1;


    while (NumeroInformado <> aleat) do begin
        if (NumeroInformado < aleat) then begin
            Writeln('Número digitado é menor!');
            Writeln('---------------------------------');
            writeln('Digite um número de 1 a 100 : ' );
            readln(NumeroInformado);
            Tentativas:= Tentativas + 1;

        end
        else if(NumeroInformado > aleat) then begin
            Writeln('Número digitado e maior!');
            Writeln('--------------------------------');
            writeln('Digite um número de 1 a 100 : ');
            Readln(NumeroInformado);
            Tentativas:= Tentativas + 1;

        end
        else if(NumeroInformado = aleat) then begin
          Break;
        end;
    end;

    Writeln('Parabéns você acertou o número!');
    Writeln('E o número de tentativas foi: ', Tentativas );
    Readln;

end.
