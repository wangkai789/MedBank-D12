object fm_fkcl: Tfm_fkcl
  Left = 776
  Top = 394
  Caption = #20184#27454#22788#29702
  ClientHeight = 382
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 621
    Height = 382
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    Images = ImageList1
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    ExplicitWidth = 617
    ExplicitHeight = 381
    object TabSheet1: TTabSheet
      Caption = #20184#27454#22788#29702
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      object Label1: TLabel
        Left = 5
        Top = 10
        Width = 48
        Height = 12
        Caption = #20379#36135#21333#20301
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 76
        Top = 216
        Width = 36
        Height = 12
        Caption = #33647'  '#21517
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 77
        Top = 248
        Width = 36
        Height = 12
        Caption = #35268'  '#26684
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 77
        Top = 280
        Width = 48
        Height = 12
        Caption = #20837#24211#26085#26399
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 357
        Top = 220
        Width = 48
        Height = 12
        Caption = #38656#20184#27454#39069
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 357
        Top = 252
        Width = 48
        Height = 12
        Caption = #23454#20184#27454#39069
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 357
        Top = 284
        Width = 48
        Height = 12
        Caption = #29616#20184#27454#39069
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 262
        Top = 10
        Width = 24
        Height = 12
        Caption = #24207#21495
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 530
        Top = 222
        Width = 12
        Height = 12
        Caption = #20803
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 530
        Top = 252
        Width = 12
        Height = 12
        Caption = #20803
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 529
        Top = 283
        Width = 12
        Height = 12
        Caption = #20803
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 202
        Top = 85
        Width = 228
        Height = 56
        Caption = #20184#27454#22788#29702
        Font.Charset = GB2312_CHARSET
        Font.Color = clLime
        Font.Height = -56
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label20: TLabel
        Left = 578
        Top = 85
        Width = 798
        Height = 56
        Caption = #25353#20379#36135#21333#20301#20184#27454#35831#36755#20837#20379#36135#21333#20301
        Font.Charset = GB2312_CHARSET
        Font.Color = clGray
        Font.Height = -56
        Font.Name = #26999#20307'_GB2312'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBGrid_fkyp: TDBGrid
        Left = -1
        Top = 33
        Width = 1314
        Height = 175
        DataSource = dm.DS_public
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Visible = False
        OnDblClick = DBGrid_fkypDblClick
        OnKeyPress = DBGrid_fkypKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'rkrq'
            Title.Caption = #20837#24211#26085#26399
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ym'
            Title.Caption = #33647#21517
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gg'
            Title.Caption = #35268#26684
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cm'
            Title.Caption = #21378#21517
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rksl'
            Title.Caption = #20837#24211#25968#37327
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jldw'
            Title.Caption = #21333#20301
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jhj'
            Title.Caption = #36827#36135#20215
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'yfje'
            Title.Caption = #38656#20184#37329#39069
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'already_pay'
            Title.Caption = #20837#24211#20184#27454
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rkxh'
            Title.Caption = #20837#24211#24207#21495
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sxrq'
            Title.Caption = #22833#25928#26085#26399
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 32
        Width = 638
        Height = 2
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 103
        Top = 317
        Width = 87
        Height = 31
        Caption = #20840#37096#20184#28165'[&A]'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555FFFFFFFFFF5555500000000005555557777777777F55550BFBFBFB
          FB0555557F555555557F55500FBFBFBFBF0555577F555555557F550B0BFBFBFB
          FB05557F7F555555557F500F0FBFBFBFBF05577F7F555555557F0B0B0BFBFBFB
          FB057F7F7F555555557F0F0F0FBFBFBFBF057F7F7FFFFFFFFF750B0B00000000
          00557F7F7777777777550F0FB0FBFB0F05557F7FF75FFF7575550B0007000070
          55557F777577775755550FB0FBFB0F0555557FF75FFF75755555000700007055
          5555777577775755555550FBFB0555555555575FFF7555555555570000755555
          5555557777555555555555555555555555555555555555555555}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
      object BitBtn2: TBitBtn
        Left = 210
        Top = 317
        Width = 87
        Height = 31
        Caption = #21333#31508#20184#27454'[&V]'
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 316
        Top = 317
        Width = 87
        Height = 31
        Caption = #25171' '#21360'[&P]'
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 423
        Top = 317
        Width = 87
        Height = 31
        Caption = #36864' '#20986'[&X]'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 5
        OnClick = BitBtn4Click
      end
      object Edit1: TEdit
        Left = 67
        Top = 6
        Width = 184
        Height = 20
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnChange = Edit1Change
        OnEnter = Edit1Enter
        OnKeyPress = Edit1KeyPress
      end
      object DBGrid_ghdw: TDBGrid
        Left = 66
        Top = 29
        Width = 345
        Height = 120
        Color = clInfoBk
        DataSource = dm.DS_comm
        Font.Charset = GB2312_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Visible = False
        OnDblClick = DBGrid_ghdwDblClick
        OnKeyPress = DBGrid_ghdwKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'inc_code'
            Title.Alignment = taCenter
            Title.Caption = #24207#21495
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'inc_name'
            Title.Alignment = taCenter
            Title.Caption = #21378#21517
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'inc_call'
            Title.Alignment = taCenter
            Title.Caption = #25340#38899#30721
            Width = 50
            Visible = True
          end>
      end
      object Edit4: TEdit
        Left = 136
        Top = 216
        Width = 139
        Height = 20
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnChange = Edit4Change
      end
      object Edit5: TEdit
        Left = 136
        Top = 248
        Width = 139
        Height = 20
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object Edit6: TEdit
        Left = 136
        Top = 280
        Width = 139
        Height = 20
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object Edit7: TEdit
        Left = 423
        Top = 216
        Width = 104
        Height = 20
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object Edit8: TEdit
        Left = 423
        Top = 248
        Width = 104
        Height = 20
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object Edit9: TEdit
        Left = 423
        Top = 280
        Width = 104
        Height = 20
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnEnter = Edit9Enter
        OnKeyPress = Edit9KeyPress
      end
      object Edit10: TEdit
        Left = 297
        Top = 6
        Width = 59
        Height = 20
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnChange = Edit10Change
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20184#27454#26597#35810
      ImageIndex = 1
      object Panel5: TPanel
        Left = 80
        Top = 32
        Width = 489
        Height = 49
        BorderStyle = bsSingle
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 32
          Top = 16
          Width = 78
          Height = 12
          Caption = #26597#35810#26102#38388#65306#20174
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 280
          Top = 16
          Width = 13
          Height = 12
          Caption = #21040
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object datefrom: TDateTimePicker
          Left = 140
          Top = 12
          Width = 131
          Height = 20
          Date = 36182.000000000000000000
          Time = 36182.000000000000000000
          DateFormat = dfLong
          TabOrder = 0
          OnKeyPress = datefromKeyPress
        end
        object dateto: TDateTimePicker
          Left = 304
          Top = 11
          Width = 146
          Height = 20
          Date = 36182.000000000000000000
          Time = 0.999988425901392500
          DateFormat = dfLong
          TabOrder = 1
          OnKeyPress = datetoKeyPress
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 120
        Width = 681
        Height = 2
        Color = clBlue
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 192
        Top = 85
        Width = 87
        Height = 31
        Caption = #26597#35810'[&C]'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
          300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
          330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
          333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
          339977FF777777773377000BFB03333333337773FF733333333F333000333333
          3300333777333333337733333333333333003333333333333377333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn5Click
      end
      object BitBtn6: TBitBtn
        Left = 282
        Top = 85
        Width = 87
        Height = 31
        Caption = #25171#21360'[&P]'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn6Click
      end
      object BitBtn7: TBitBtn
        Left = 371
        Top = 85
        Width = 87
        Height = 31
        Caption = #36864#20986'[&X]'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn7Click
      end
      object Panel1: TPanel
        Left = 187
        Top = 150
        Width = 247
        Height = 88
        Caption = #24080#30446#26597#35810
        Color = 8421440
        Font.Charset = GB2312_CHARSET
        Font.Color = clWhite
        Font.Height = -56
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBGrid_xzghdw: TDBGrid
        Left = 3
        Top = 128
        Width = 325
        Height = 187
        DataSource = dm.DS_comm
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 6
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clFuchsia
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Visible = False
        OnCellClick = DBGrid_xzghdwCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'bh'
            Title.Alignment = taCenter
            Title.Caption = #32534#21495
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cm'
            Title.Alignment = taCenter
            Title.Caption = #21378#21517
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'zje'
            Title.Alignment = taCenter
            Title.Caption = #38656#20184#37329#39069
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'yfje'
            Title.Alignment = taCenter
            Title.Caption = #20837#24211#20184#27454
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Visible = True
          end>
      end
      object DBGrid_xszm: TDBGrid
        Left = 328
        Top = 128
        Width = 753
        Height = 187
        DataSource = dm.DS_public
        Font.Charset = GB2312_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 7
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clFuchsia
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'ym'
            Font.Charset = GB2312_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #33647#21517
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gg'
            Font.Charset = GB2312_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #35268#26684
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rkrq'
            Font.Charset = GB2312_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #20837#24211#26085#26399
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fkje'
            Font.Charset = GB2312_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #20184#27454#37329#39069
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fkrq'
            Font.Charset = GB2312_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #20184#27454#26085#26399
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Visible = True
          end>
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 563
    Top = 105
  end
  object ImageList1: TImageList
    Left = 12
    Top = 272
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000052000000
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029312900293129002931
      2900293129000000000000000000000000000000000000000000293129002931
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000520000000000000073000000
      0000000000005252520000005200B5BDB500FFFFFF0000000000848484000000
      000000000000000000000000000000000000000000000094CE0000CEFF000094
      CE000094CE0000000000000000000000000000000000000000000094CE000094
      CE000094CE002931290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000005200000052006363
      CE00000000000000000000005200000000000000520042424200000000000000
      000000000000000000000000000000000000000000000094CE0000CEFF0000CE
      FF000094CE0000000000FFFFFF00FFFFFF00FFFFFF00000000000094CE0000CE
      FF0000CEFF0000CEFF0029312900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      CE00000052000000520000004200000052000000000000000000000000000000
      00000000000000000000000000000000000000000000293129000063940000CE
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF00A5ADA50063FFFF000094
      CE000094CE002931290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000004200000052000000A5000000A50029319400000000000000
      0000000000000000000000000000000000000000000000000000293129000000
      0000A5ADA500FFFFFF00EFEFEF00FFFFFF00FFFFFF00FFFFFF00424242000000
      0000182118000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000420000005200000042000000420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200FFFFFF00FFFFFF00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000005200000073000000A5000000A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF001821
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000084000000A5000000420000005200000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5ADA500EFEFEF00EFEFEF00EFEFEF00EFEFEF00B5BDB500A5ADA5001821
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000005200000073000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00EFEFEF00DEDEDE00FFFFFF00FFFFFF00000000000000
      0000737373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000005200000052000000A5000000A50000005200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000073737300A5ADA500A5ADA5000094CE00A5ADA50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000005200000073000000DE0000005200000052000000A5000000
      000000000000B5BDB50000000000000000000000000000000000000000000000
      0000000000000000000000CEFF0000CEFF000094CE0000639400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000052000000A5009494FF00000000000000A50000007300000000000000
      0000B5BDB5000000000000000000000000000000000000000000000000000000
      0000000000005252520063FFFF0000CEFF0000CEFF0042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000052000000A5009494FF00FFFFFF006363FF0073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00182118000000000084848400DEDEDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      520000008400000084006363CE00FFFFFF00CECEFF006363FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      84000000000000000000000084000000A500000000000000A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018211800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00C87F87CF00000000580F800300000000
      881F800100000000E07F800300000000F83FC00700000000F83FE00700000000
      F81FE00700000000F80FE00700000000FC5BF00700000000F81FF00F00000000
      F01BF81F00000000F017F81F00000000F01FF81F00000000E03FF81F00000000
      E01FF81F00000000EFBFFC3F0000000000000000000000000000000000000000
      000000000000}
  end
end