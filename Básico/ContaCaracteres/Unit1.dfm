object Form1: TForm1
  Left = 1312
  Top = 137
  Width = 381
  Height = 276
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
  object Label1: TLabel
    Left = 96
    Top = 168
    Width = 201
    Height = 21
    Caption = 'Label1'
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 96
    Top = 40
    Width = 201
    Height = 21
    TabOrder = 0
    Text = 'Escreva'
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 144
    Top = 88
    Width = 107
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
end
