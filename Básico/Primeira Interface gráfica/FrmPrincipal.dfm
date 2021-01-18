object Form1: TForm1
  Left = 500
  Top = 164
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 367
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mmInciio
  OldCreateOrder = False
  DesignSize = (
    592
    367)
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 65
    Align = alTop
    Caption = 'pnl1'
    PopupMenu = pm1
    TabOrder = 0
    DesignSize = (
      592
      65)
    object btn2: TButton
      Left = 496
      Top = 16
      Width = 86
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'btn1'
      TabOrder = 0
      OnClick = btn2Click
    end
    object edt1: TEdit
      Left = 8
      Top = 16
      Width = 456
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = 'edt1'
      OnEnter = edt1Enter
      OnExit = edt1Exit
    end
  end
  object memo1: TMemo
    Left = 0
    Top = 72
    Width = 321
    Height = 177
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'memo1')
    PopupMenu = pm1
    TabOrder = 1
    OnChange = memo1Change
  end
  object mmInciio: TMainMenu
    Left = 344
    Top = 96
    object Inicio1: TMenuItem
      Caption = 'Inicio'
      object teste1: TMenuItem
        Caption = 'teste'
        object teste21: TMenuItem
          Caption = 'teste2'
        end
        object teste31: TMenuItem
          Caption = 'teste3'
          Checked = True
        end
      end
    end
  end
  object pm1: TPopupMenu
    Left = 424
    Top = 104
    object teste2: TMenuItem
      Caption = 'teste'
    end
    object teste3: TMenuItem
      Caption = 'teste'
      object teste4: TMenuItem
        Caption = 'teste'
      end
    end
  end
end
