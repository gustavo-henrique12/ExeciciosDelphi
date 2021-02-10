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
    Button1: TButton;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure AdicionaInformacoesCDSDados;
    procedure BtnBuscaMenorValorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}



procedure TFPrincipal.AdicionaInformacoesCDSDados;
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
   AdicionaInformacoesCDSDados;
   CDSDados.first;
end;

procedure TFPrincipal.BtnBuscaMenorValorClick(Sender: TObject);
Var
   MenorPreco      : Currency;
   Estabelecimento : String;
begin
   CDSDados.first;
   MenorPreco      := CDSDadosValorUnitario.Value;
   Estabelecimento := CDSDadosEstabelecimento.AsString;
   while not CDSDados.Eof do begin
      if CDSDadosValorUnitario.Value <= MenorPreco then begin
         MenorPreco      := CDSDadosValorUnitario.Value;
         Estabelecimento := CDSDadosEstabelecimento.AsString;
      end;
      CDSDados.next;
   end;
   ShowMessage(Format('O local mais barato para compra é %s com o valor unitário de R$ %.2f', [Estabelecimento, MenorPreco]));
end;


procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   CDSDados.SaveToFile('Fraldas.xml', dfXML);
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
   if FileExists('Fraldas.XMl') then begin
      CDSDados.LoadFromFile('Fraldas.Xml');
   end;
end;

procedure TFPrincipal.Button1Click(Sender: TObject);
begin
   CDSDados.Delete;
end;

end.
