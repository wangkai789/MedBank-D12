object fm_zpckgl: Tfm_zpckgl
  Left = 93
  Top = 226
  Caption = #25972#25209#20986#24211#31649#29702
  ClientHeight = 536
  ClientWidth = 1295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1295
    Height = 49
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 729
      Top = 16
      Width = 36
      Height = 12
      Caption = #20986#24211#20154
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 19
      Width = 48
      Height = 12
      Caption = #20837#24211#21333#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 287
      Top = 20
      Width = 48
      Height = 12
      Caption = #20986#24211#21333#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object lab_xm: TLabel
      Left = 863
      Top = 16
      Width = 60
      Height = 12
      Caption = #35831#36755#20837#22995#21517
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 96
      Top = 19
      Width = 12
      Height = 12
      Caption = #24180
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 144
      Top = 19
      Width = 12
      Height = 12
      Caption = #26376
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 167
      Top = 21
      Width = 45
      Height = 14
      Caption = #27969#27700#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ed_bh: TEdit
      Left = 782
      Top = 11
      Width = 73
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ImeMode = imClose
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = ed_bhEnter
    end
    object ed_rkdh: TEdit
      Left = 218
      Top = 16
      Width = 54
      Height = 20
      Hint = #36755#20837#27969#27700#21495#21518#25970#20987#22238#36710#38190#26597#35810
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnChange = ed_rkdhChange
      OnKeyPress = ed_rkdhKeyPress
    end
    object ed_ckdh: TEdit
      Left = 343
      Top = 16
      Width = 72
      Height = 20
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 8
      Text = #20986#24211#21333#21495
    end
    object Ed_year: TEdit
      Left = 62
      Top = 16
      Width = 34
      Height = 20
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 4
      Text = '2001'
    end
    object ed_month: TEdit
      Left = 110
      Top = 16
      Width = 19
      Height = 20
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 5
      Text = '9'
    end
    object UpDown2: TUpDown
      Left = 129
      Top = 16
      Width = 15
      Height = 20
      Associate = ed_month
      Max = 12
      Position = 9
      TabOrder = 6
    end
    object bbtn_zpck: TBitBtn
      Left = 434
      Top = 8
      Width = 92
      Height = 26
      Caption = #20986#24211
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = bbtn_zpckClick
    end
    object btn_print: TBitBtn
      Left = 527
      Top = 8
      Width = 92
      Height = 26
      Caption = #25171#21360
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = btn_printClick
    end
    object BitBtn2: TBitBtn
      Left = 620
      Top = 8
      Width = 92
      Height = 26
      Caption = #36864#20986
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object edt_ckrq: TEdit
      Left = 950
      Top = 11
      Width = 115
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ImeMode = imClose
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      OnEnter = ed_bhEnter
    end
  end
  object DBGrid_ys: TDBGrid
    Left = 917
    Top = 55
    Width = 190
    Height = 203
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clBlue
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid_ysExit
    Columns = <
      item
        Expanded = False
        FieldName = 'xm'
        Title.Caption = #22995#21517
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bh'
        Title.Caption = #32534#21495
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 1295
    Height = 487
    Align = alClient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ksbm'
        Title.Caption = #33647#25151#32534#30721
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ksmc'
        Title.Caption = #33647#25151#21517#31216
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rkxh'
        Title.Caption = #20837#24211#24207#21495
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypbh'
        Title.Caption = #33647#21697#32534#21495
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ym'
        Title.Caption = #33647#21517
        Width = 151
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ybbm_country'
        Title.Caption = #22269#23478#21307#20445#32534#30721
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ybmc_country'
        Title.Caption = #22269#23478#21307#20445#21517#31216
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gg'
        Title.Caption = #35268#26684
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'produce'
        Title.Caption = #20135#22320
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypph'
        Title.Caption = #25209#21495
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rksl'
        Title.Caption = #25968#37327
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jldw'
        Title.Caption = #21253#35013#21333#20301
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lsj'
        Title.Caption = #38646#21806#20215
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rkje'
        Title.Caption = #38646#21806#37329#39069
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jhj'
        Title.Caption = #36827#20215
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jhje'
        Title.Caption = #36827#36135#37329#39069
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rkrq'
        Title.Caption = #20837#24211#26085#26399
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'inc_name'
        Title.Caption = #20379#36135#21333#20301
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sxrq'
        Title.Caption = #25928#26399
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypkind'
        Width = 48
        Visible = True
      end>
  end
end
