object fm_ksly: Tfm_ksly
  Left = 48
  Top = 49
  Width = 714
  Height = 480
  Caption = '科室领药'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 706
    Height = 453
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = '宋体'
    Font.Style = []
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '科室领药'
      Font.Charset = GB2312_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = '宋体'
      Font.Style = []
      ParentFont = False
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 698
        Height = 423
        Align = alClient
      end
      object Label2: TLabel
        Left = 13
        Top = 24
        Width = 48
        Height = 12
        Caption = '操 作 员'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 165
        Top = 24
        Width = 48
        Height = 12
        Caption = '出库日期'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 560
        Top = 48
        Width = 48
        Height = 12
        Caption = '领 用 人'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 165
        Top = 48
        Width = 48
        Height = 12
        Caption = '科室编码'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 356
        Top = 48
        Width = 48
        Height = 12
        Caption = '科 室 名'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 13
        Top = 48
        Width = 48
        Height = 12
        Caption = '请领单号'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 13
        Top = 75
        Width = 48
        Height = 12
        Caption = '药品编号'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 165
        Top = 75
        Width = 48
        Height = 12
        Caption = '药    名'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 356
        Top = 75
        Width = 48
        Height = 12
        Caption = '规    格'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 560
        Top = 75
        Width = 48
        Height = 12
        Caption = '剂    型'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 356
        Top = 24
        Width = 48
        Height = 12
        Caption = '实 发 量'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 560
        Top = 24
        Width = 48
        Height = 12
        Caption = '药品批号'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 73
        Top = 19
        Width = 77
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        ParentFont = False
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 229
        Top = 19
        Width = 109
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        ParentFont = False
        TabOrder = 2
      end
      object Ed_lyr: TEdit
        Left = 620
        Top = 45
        Width = 69
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        ParentFont = False
        TabOrder = 0
      end
      object Ed_ksbm: TEdit
        Left = 229
        Top = 45
        Width = 83
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        ParentFont = False
        TabOrder = 3
      end
      object Edit5: TEdit
        Left = 421
        Top = 45
        Width = 123
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        ParentFont = False
        TabOrder = 4
      end
      object Edit6: TEdit
        Left = 73
        Top = 45
        Width = 77
        Height = 20
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        ParentFont = False
        TabOrder = 5
        OnEnter = Edit6Enter
        OnKeyPress = Edit6KeyPress
      end
      object Edit7: TEdit
        Left = 73
        Top = 71
        Width = 77
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        ParentFont = False
        TabOrder = 6
      end
      object Edit8: TEdit
        Left = 229
        Top = 71
        Width = 109
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        ParentFont = False
        TabOrder = 7
      end
      object Edit9: TEdit
        Left = 421
        Top = 71
        Width = 123
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        ParentFont = False
        TabOrder = 8
      end
      object Edit10: TEdit
        Left = 620
        Top = 71
        Width = 69
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        ParentFont = False
        TabOrder = 9
      end
      object DBGrid_qlyp: TDBGrid
        Left = 6
        Top = 94
        Width = 683
        Height = 145
        DataSource = dm.DS_public
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 10
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = '宋体'
        TitleFont.Style = []
        Visible = False
        OnCellClick = DBGrid_qlypCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ypbh'
            Title.Alignment = taCenter
            Title.Caption = '药品编号'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ym'
            Title.Alignment = taCenter
            Title.Caption = '药名'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gg'
            Title.Alignment = taCenter
            Title.Caption = '规格'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jx'
            Title.Alignment = taCenter
            Title.Caption = '剂型'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qll'
            Title.Alignment = taCenter
            Title.Caption = '请领量'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jldw'
            Title.Alignment = taCenter
            Title.Caption = '单位'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sfl'
            Title.Alignment = taCenter
            Title.Caption = '实发量'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lb'
            Title.Alignment = taCenter
            Title.Caption = '类别'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Visible = True
          end>
      end
      object Ed_sfl: TEdit
        Left = 421
        Top = 19
        Width = 93
        Height = 20
        TabStop = False
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeMode = imClose
        ParentFont = False
        TabOrder = 11
        OnExit = Ed_sflExit
        OnKeyPress = Ed_sflKeyPress
      end
      object BBtn_bmly_db: TBitBtn
        Left = 147
        Top = 379
        Width = 87
        Height = 31
        Caption = '全发[&V]'
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = BBtn_bmly_dbClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
      end
      object BBtn_new: TBitBtn
        Left = 354
        Top = 379
        Width = 87
        Height = 31
        Caption = '重新输入[&N]'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = BBtn_newClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333FFF3333333333333707333333333333F777F3333333333370
          9033333333F33F7737F33333373337090733333337F3F7737733333330037090
          73333333377F7737733333333090090733333333373773773333333309999073
          333333337F333773333333330999903333333333733337F33333333099999903
          33333337F3333F7FF33333309999900733333337333FF7773333330999900333
          3333337F3FF7733333333309900333333333337FF77333333333309003333333
          333337F773333333333330033333333333333773333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object DBGrid_dbyp: TDBGrid
        Left = 6
        Top = 243
        Width = 682
        Height = 124
        DataSource = dm.DS_public1
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 14
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = '宋体'
        TitleFont.Style = []
        Visible = False
        OnDblClick = DBGrid_dbypDblClick
        OnKeyPress = DBGrid_dbypKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'rkxh'
            Title.Alignment = taCenter
            Title.Caption = '入库序号'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ym'
            Title.Alignment = taCenter
            Title.Caption = '药名'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cm'
            Title.Alignment = taCenter
            Title.Caption = '厂家'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypph'
            Title.Alignment = taCenter
            Title.Caption = '药品批号'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sxrq'
            Title.Alignment = taCenter
            Title.Caption = '失效日期'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kcl'
            Title.Alignment = taCenter
            Title.Caption = '库存量'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jldw'
            Title.Alignment = taCenter
            Title.Caption = '单位'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypbh'
            Title.Alignment = taCenter
            Title.Caption = '药品编号'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Visible = True
          end>
      end
      object Edit15: TEdit
        Left = 516
        Top = 19
        Width = 28
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeMode = imClose
        ImeName = '中文 (简体) - 智能 ABC'
        ParentFont = False
        TabOrder = 15
      end
      object Edit16: TEdit
        Left = 620
        Top = 19
        Width = 69
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
        OnChange = Edit16Change
      end
      object Edit17: TEdit
        Left = 650
        Top = -19
        Width = 145
        Height = 27
        TabStop = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '中文 (简体) - 智能 ABC'
        ParentFont = False
        TabOrder = 17
        Text = 'Edit17'
        Visible = False
      end
      object DBGrid_qld: TDBGrid
        Left = 511
        Top = 284
        Width = 320
        Height = 180
        Color = clInfoBk
        DataSource = dm.DS_comm
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ImeName = '王码五笔型'
        ParentFont = False
        TabOrder = 18
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -14
        TitleFont.Name = '宋体'
        TitleFont.Style = []
        Visible = False
        OnDblClick = DBGrid_qldDblClick
        OnKeyPress = DBGrid_qldKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'qldh'
            Title.Alignment = taCenter
            Title.Caption = '请领单号'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qlrq'
            Title.Alignment = taCenter
            Title.Caption = '请领日期'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ksmc'
            Title.Alignment = taCenter
            Title.Caption = '科室名称'
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = '宋体'
            Title.Font.Style = []
            Width = 84
            Visible = True
          end>
      end
      object BitBtn2: TBitBtn
        Left = 251
        Top = 379
        Width = 87
        Height = 31
        Caption = '打印[&P]'
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        OnClick = BitBtn2Click
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
      end
      object BBtn_quit: TBitBtn
        Left = 458
        Top = 379
        Width = 87
        Height = 31
        Caption = '退出[&X]'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
        OnClick = BBtn_quitClick
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
      end
    end
  end
end
