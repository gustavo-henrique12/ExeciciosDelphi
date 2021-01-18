object Form1: TForm1
  Left = 2039
  Top = 121
  Width = 635
  Height = 381
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DOLAR: TLabel
    Left = 17
    Top = 15
    Width = 64
    Height = 24
    Caption = 'DOLAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 157
    Top = 14
    Width = 49
    Height = 24
    Caption = 'REAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 17
    Top = 87
    Width = 5
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object MSG: TLabel
    Left = 17
    Top = 79
    Width = 272
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object EDolar: TEdit
    Left = 16
    Top = 40
    Width = 129
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 448
    Top = 288
    Width = 169
    Height = 49
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object EReal: TEdit
    Left = 157
    Top = 39
    Width = 130
    Height = 21
    TabOrder = 2
  end
  object BTCompra: TButton
    Left = 352
    Top = 32
    Width = 121
    Height = 41
    Caption = 'COMPRA'
    TabOrder = 3
    OnClick = BTCompraClick
  end
end
