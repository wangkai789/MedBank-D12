object Fm_medsend: TFm_medsend
  Left = 357
  Top = 316
  Width = 342
  Height = 200
  Caption = #33647#21697#19978#25253
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 24
    Top = 50
    Width = 60
    Height = 12
    Caption = #36215#22987#26085#26399#65306
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 25
    Top = 89
    Width = 60
    Height = 12
    Caption = #32456#27490#26085#26399#65306
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object datefrom: TDateTimePicker
    Left = 94
    Top = 46
    Width = 136
    Height = 20
    Date = 37071.000000000000000000
    Time = 37071.000000000000000000
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
    ParentFont = False
    TabOrder = 0
  end
  object dateto: TDateTimePicker
    Left = 95
    Top = 86
    Width = 136
    Height = 20
    Date = 37071.000000000000000000
    Time = 37071.000000000000000000
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
    ParentFont = False
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    Left = 9
    Top = 4
    Width = 159
    Height = 33
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #35199#33647#25104#33647
      #33609#33647)
    TabOrder = 2
  end
  object Button1: TButton
    Left = 137
    Top = 126
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 213
    Top = 126
    Width = 75
    Height = 25
    Caption = #36864#20986
    TabOrder = 4
    OnClick = Button2Click
  end
end
