unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, ExlEdit;

type
  TFPrincipal = class(TForm)
    PanelPrincipal: TPanel;
    Label1: TLabel;
    BtnAdicionar: TButton;
    DSDados: TDataSource;
    CDSDados: TClientDataSet;
    CDSDadosEstabelecimento: TStringField;
    CDSDadosPrecoPacote: TCurrencyField;
    CDSDadosQtdePorPacote: TIntegerField;
    CDSDadosValorUnitario: TCurrencyField;
    EdtEstabelecimento: TExlEdit;
    EdtPrecoPacote: TExlEdit;
    EdtQtdePorPacote: TExlEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    GDBEstabelecimento: TcxGridDBColumn;
    GDBPrecoPacote: TcxGridDBColumn;
    GDBQtdePorPacote: TcxGridDBColumn;
    GDBValorUnitario: TcxGridDBColumn;
    BtnBuscaMenorValor: TButton;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure AdicionaIformacoesCDSDados;
    procedure BtnBuscaMenorValorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

procedure TFPrincipal.AdicionaIformacoesCDSDados;
begin
   CDSDados.Insert;
   CDSDadosEstabelecimento.AsString := EdtEStabelecimento.Text;
   CDSDadosPrecoPacote.AsCurrency   := EdtPrecoPacote.AsCurrency;
   CDSDadosQtdePorPacote.AsInteger  := EdtQtdePorPacote.AsInteger;
   CDSDadosValorUnitario.AsCurrency := EdtPrecoPacote.AsCurrency / EdtQtdePorPacote.AsInteger;
   CDSDados.Post;

   EdtEstabelecimento.Clear;
   EdtPrecoPacote.Clear;
   EdtQtdePorPacote.Clear;
end;

procedure TFPrincipal.BtnAdicionarClick(Sender: TObject);
begin
   AdicionaIformacoesCDSDados;
   CDSDados.first;
end;

procedure TFPrincipal.BtnBuscaMenorValorClick(Sender: TObject);
Var
   MenorPreco      : Currency;
   Estabelecimento : String;
begin
   MenorPreco := 0;
   CDSDados.first;
   while not CDSDados.Eof do begin
      if CdsDadosValorUnitario.value = 0 then begin
         MenorPreco := CDSDadosValorUnitario.Value;
      end;   

      if CDSDadosValorUnitario.Value <= MenorPreco then begin
         MenorPreco      := CDSDadosValorUnitario.Value;
         Estabelecimento := CDSDadosEstabelecimento.AsString;
         CDSDados.next;
      end Else begin
         CDSDados.next;
      end;
   end;
   ShowMessage('O local mais barato para compra é ' + Estabelecimento + ' com o valor unitário de ' + CurrToStr(MenorPreco));

end;

end.
