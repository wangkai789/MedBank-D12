object Frm_ParamSet: TFrm_ParamSet
  Left = -8
  Top = -8
  Caption = #21442#25968#35774#32622
  ClientHeight = 315
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 12
  object Label3: TLabel
    Left = 205
    Top = 404
    Width = 28
    Height = 14
    Caption = #20250#35745
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label1: TLabel
    Left = 205
    Top = 335
    Width = 42
    Height = 14
    Caption = #20445#31649#21592
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 205
    Top = 369
    Width = 42
    Height = 14
    Caption = #37319#36141#21592
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object sbtnApplyDB: TSpeedButton
    Left = 532
    Top = 273
    Width = 100
    Height = 33
    Caption = #24212#29992#35774#32622
    OnClick = sbtnApplyDBClick
  end
  object sbtnCloseDB: TSpeedButton
    Left = 638
    Top = 273
    Width = 100
    Height = 33
    Caption = #20851#38381#31383#21475
    OnClick = sbtnCloseDBClick
  end
  object edt_accountant: TEdit
    Left = 289
    Top = 398
    Width = 121
    Height = 20
    TabOrder = 4
    Visible = False
  end
  object edt_purchase: TEdit
    Left = 289
    Top = 363
    Width = 121
    Height = 20
    TabOrder = 3
    Visible = False
  end
  object edt_safekeep: TEdit
    Left = 289
    Top = 337
    Width = 121
    Height = 20
    TabOrder = 2
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 167
    Top = -1
    Width = 234
    Height = 268
    Caption = #21442#25968
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 9
      Top = 52
      Width = 56
      Height = 14
      Caption = #40664#35748#33647#25151
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 9
      Top = 86
      Width = 70
      Height = 14
      Caption = #35199#33647#21152#25104#29575
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 9
      Top = 118
      Width = 70
      Height = 14
      Caption = #33609#33647#21152#25104#29575
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 9
      Top = 21
      Width = 42
      Height = 14
      Caption = #40664#35748#24211
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 11
      Top = 152
      Width = 52
      Height = 12
      Caption = #33647#21697#20998#31867
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 12
      Top = 182
      Width = 70
      Height = 14
      Caption = #40664#35748#21152#25104#29575
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object edt_AdditionRateMed: TEdit
      Left = 96
      Top = 80
      Width = 118
      Height = 22
      TabOrder = 0
    end
    object edt_AdditionRateCMed: TEdit
      Left = 96
      Top = 110
      Width = 118
      Height = 22
      TabOrder = 1
    end
    object edt_storeType: TEdit
      Left = 95
      Top = 17
      Width = 121
      Height = 22
      TabOrder = 2
    end
    object cbb_yf: TComboBox
      Left = 96
      Top = 48
      Width = 121
      Height = 22
      TabOrder = 3
    end
    object CmbBx_lb: TComboBox
      Tag = 21
      Left = 97
      Top = 145
      Width = 120
      Height = 20
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        '1:'#35199#33647
        '2:'#20013#33609#33647
        '3:'#20013#25104#33647)
    end
    object chk_SalesPriceFlag: TCheckBox
      Left = 14
      Top = 207
      Width = 169
      Height = 25
      Caption = #20837#24211#38646#21806#20215#20462#25913
      TabOrder = 5
    end
    object cbb_AddRate: TComboBox
      Left = 95
      Top = 179
      Width = 122
      Height = 22
      Style = csDropDownList
      TabOrder = 6
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 161
    Height = 268
    Caption = #26174#31034#35774#32622
    TabOrder = 1
    object btnFontSet: TSpeedButton
      Left = 31
      Top = 38
      Width = 100
      Height = 33
      Caption = #23383#20307#65288'&F'#65289
    end
    object Label4: TLabel
      Left = 14
      Top = 122
      Width = 36
      Height = 12
      Caption = #36755#20837#27861
    end
    object ListBox1: TListBox
      Left = 10
      Top = 155
      Width = 140
      Height = 99
      ImeName = #25340#38899#21152#21152#36755#20837#27861
      ItemHeight = 12
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 407
    Top = -1
    Width = 321
    Height = 268
    Caption = #21442#25968
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label10: TLabel
      Left = 16
      Top = 52
      Width = 140
      Height = 14
      Caption = #38376#35786#21457#33647#21333#25171#21360#35774#32622#65306
    end
    object Label11: TLabel
      Left = 16
      Top = 84
      Width = 168
      Height = 14
      Caption = #20303#38498#22788#26041#21457#33647#21333#25171#21360#35774#32622#65306
    end
    object Label12: TLabel
      Left = 16
      Top = 147
      Width = 126
      Height = 14
      Caption = #20303#38498#30149#21306#21457#33647#35774#32622#65306
    end
    object Label13: TLabel
      Left = 17
      Top = 20
      Width = 140
      Height = 14
      Caption = #38376#35786#22788#26041#21333#25171#21360#35774#32622#65306
    end
    object Label14: TLabel
      Left = 17
      Top = 117
      Width = 154
      Height = 14
      Caption = #20303#38498#30149#21306#21457#33647#25171#21360#35774#32622#65306
    end
    object cbb_OutPatSendPrint: TComboBox
      Left = 193
      Top = 47
      Width = 96
      Height = 22
      ItemIndex = 0
      TabOrder = 0
      Text = '0:'#19981#25171#21360
      Items.Strings = (
        '0:'#19981#25171#21360
        '1:'#30452#25509#25171#21360
        '2:'#39044#35272#25171#21360)
    end
    object cbb_InPatRipPrint: TComboBox
      Left = 193
      Top = 80
      Width = 96
      Height = 22
      ItemIndex = 0
      TabOrder = 1
      Text = '0:'#19981#25171#21360
      Items.Strings = (
        '0:'#19981#25171#21360
        '1:'#30452#25509#25171#21360
        '2:'#39044#35272#25171#21360)
    end
    object cbb_InPatSendkind: TComboBox
      Left = 193
      Top = 141
      Width = 96
      Height = 22
      ItemIndex = 0
      TabOrder = 2
      Text = '1:'#20840#37096
      Items.Strings = (
        '1:'#20840#37096
        '2:'#38500#22823#36755#28082)
    end
    object cbb_OutPatRipPrint: TComboBox
      Left = 193
      Top = 17
      Width = 96
      Height = 22
      TabOrder = 3
      Text = '0:'#19981#25171#21360
      Items.Strings = (
        '0:'#19981#25171#21360
        '1:'#30452#25509#25171#21360
        '2:'#39044#35272#25171#21360)
    end
    object cbb_InPatSendPrint: TComboBox
      Left = 193
      Top = 111
      Width = 96
      Height = 22
      ItemIndex = 0
      TabOrder = 4
      Text = '0:'#19981#25171#21360
      Items.Strings = (
        '0:'#19981#25171#21360
        '1:'#30452#25509#25171#21360
        '2:'#39044#35272#25171#21360)
    end
  end
end
