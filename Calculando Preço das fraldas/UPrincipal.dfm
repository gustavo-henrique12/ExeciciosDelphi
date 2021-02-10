object FPrincipal: TFPrincipal
  Left = 388
  Top = 224
  Width = 857
  Height = 423
  Caption = 'Pre'#231'os de Fraldas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    841
    384)
  PixelsPerInch = 96
  TextHeight = 13
  object PanelPrincipal: TPanel
    Left = 6
    Top = 4
    Width = 832
    Height = 375
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 3
      Width = 491
      Height = 29
      Caption = 'Sistema Para C'#225'lculo de Pre'#231'o das Fraldas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnAdicionar: TButton
      Left = 184
      Top = 127
      Width = 80
      Height = 32
      Caption = 'Adicionar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BtnAdicionarClick
    end
    object EdtEstabelecimento: TExlEdit
      Left = 162
      Top = 50
      Properties.Alignment.Horz = taLeftJustify
      StyleDisabled.TextColor = clBlack
      StyleFocused.Color = 16772283
      TabOrder = 0
      LabelCaption = 'Estabelecimento'
      LabelPosition = lpLeftLeft
      LabelSpacing = 3
      LabelWidth = 125
      LabelFont.Charset = ANSI_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Arial'
      LabelFont.Style = [fsBold]
      Width = 121
    end
    object EdtPrecoPacote: TExlEdit
      Left = 161
      Top = 75
      DragKind = dkDock
      Properties.Alignment.Horz = taLeftJustify
      Properties.MaxLength = 15
      StyleDisabled.TextColor = clBlack
      StyleFocused.Color = 16772283
      TabOrder = 1
      DisplayFormat = '#,##0.00'
      EditType = etValor
      LabelCaption = 'Pre'#231'o do Pacote'
      LabelPosition = lpLeftLeft
      LabelSpacing = 3
      LabelWidth = 125
      LabelFont.Charset = ANSI_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Arial'
      LabelFont.Style = [fsBold]
      Width = 121
    end
    object EdtQtdePorPacote: TExlEdit
      Left = 161
      Top = 100
      Properties.Alignment.Horz = taLeftJustify
      StyleDisabled.TextColor = clBlack
      StyleFocused.Color = 16772283
      TabOrder = 2
      EditType = etInteiro
      LabelCaption = 'Qtde Por Pacote'
      LabelPosition = lpLeftLeft
      LabelSpacing = 3
      LabelWidth = 125
      LabelFont.Charset = ANSI_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Arial'
      LabelFont.Style = [fsBold]
      Width = 121
    end
    object BtnBuscaMenorValor: TButton
      Left = 167
      Top = 161
      Width = 115
      Height = 33
      Caption = 'Busca Menor Valor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BtnBuscaMenorValorClick
    end
    object Button1: TButton
      Left = 720
      Top = 321
      Width = 89
      Height = 32
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 321
    Top = 47
    Width = 497
    Height = 272
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DSDados
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object GDBEstabelecimento: TcxGridDBColumn
        Caption = 'ESTABELECIMENTO'
        DataBinding.FieldName = 'Estabelecimento'
        Options.Editing = False
        Options.Filtering = False
        Width = 176
      end
      object GDBPrecoPacote: TcxGridDBColumn
        Caption = 'PRE'#199'O PACOTE'
        DataBinding.FieldName = 'PrecoPacote'
        Options.Editing = False
        Options.Filtering = False
        Width = 104
      end
      object GDBQtdePorPacote: TcxGridDBColumn
        Caption = 'QTDE POR PACOTE'
        DataBinding.FieldName = 'QtdePorPacote'
        Options.Editing = False
        Options.Filtering = False
        Width = 115
      end
      object GDBValorUnitario: TcxGridDBColumn
        Caption = 'VALOR UNIT'#193'RIO'
        DataBinding.FieldName = 'ValorUnitario'
        Options.Editing = False
        Options.Filtering = False
        Width = 102
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object DSDados: TDataSource
    DataSet = CDSDados
    Left = 519
    Top = 174
  end
  object CDSDados: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'Estabelecimento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PrecoPacote'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QtdePorPacote'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ValorUnitario'
        ParamType = ptUnknown
      end>
    Left = 487
    Top = 174
    Data = {
      A60000009619E0BD010000001800000004000000000003000000A6000F457374
      6162656C6563696D656E746F0100490000000100055749445448020002004100
      0B507265636F5061636F74650800040000000100075355425459504502004900
      06004D6F6E6579000D51746465506F725061636F746504000100000000000D56
      616C6F72556E69746172696F0800040000000100075355425459504502004900
      06004D6F6E6579000000}
    object CDSDadosEstabelecimento: TStringField
      FieldName = 'Estabelecimento'
      Size = 65
    end
    object CDSDadosPrecoPacote: TCurrencyField
      FieldName = 'PrecoPacote'
    end
    object CDSDadosQtdePorPacote: TIntegerField
      FieldName = 'QtdePorPacote'
    end
    object CDSDadosValorUnitario: TCurrencyField
      FieldName = 'ValorUnitario'
    end
  end
end
