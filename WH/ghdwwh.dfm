object fm_ghdwwh: Tfm_ghdwwh
  Left = 244
  Top = 132
  BorderStyle = bsToolWindow
  Caption = #20379#36135#21333#20301#32500#25252
  ClientHeight = 213
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object GroupBox1: TGroupBox
    Left = 23
    Top = 4
    Width = 329
    Height = 161
    Caption = #20379#36135#21333#20301#32500#25252
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 60
      Width = 36
      Height = 12
      Caption = #21517'  '#31216
    end
    object Label1: TLabel
      Left = 22
      Top = 112
      Width = 36
      Height = 12
      Caption = #25340#38899#30721
    end
    object ed_inc_name: TEdit
      Left = 82
      Top = 55
      Width = 223
      Height = 20
      TabOrder = 0
      Text = 'ed_inc_name'
      OnEnter = ed_inc_nameEnter
      OnKeyPress = ed_inc_nameKeyPress
    end
    object ed_inc_call: TEdit
      Left = 82
      Top = 107
      Width = 121
      Height = 20
      ImeMode = imClose
      TabOrder = 1
      OnKeyPress = ed_inc_callKeyPress
    end
  end
  object btn_save: TBitBtn
    Left = 54
    Top = 174
    Width = 87
    Height = 31
    Caption = #20445#23384
    TabOrder = 1
    OnClick = btn_saveClick
  end
  object btn_search: TBitBtn
    Left = 149
    Top = 174
    Width = 87
    Height = 31
    Caption = #26597#35810
    TabOrder = 2
  end
  object btn_exit: TBitBtn
    Left = 243
    Top = 174
    Width = 87
    Height = 31
    Caption = #36864#20986
    TabOrder = 3
    OnClick = btn_exitClick
  end
end
