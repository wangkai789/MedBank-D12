object Frm_SendMed: TFrm_SendMed
  Left = 119
  Top = 0
  Caption = #25353#27004#23618#21457#33647
  ClientHeight = 686
  ClientWidth = 1205
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 35
    Width = 1205
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 240
      Top = 5
      Width = 48
      Height = 12
      Caption = #21457#33647#21333#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object edt_name: TEdit
      Left = 376
      Top = 23
      Width = 78
      Height = 20
      AutoSize = False
      Color = clInfoBk
      Ctl3D = True
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object RG_SendClass: TRadioGroup
      Left = 72
      Top = 0
      Width = 81
      Height = 81
      Align = alLeft
      Caption = #21457#33647#26041#24335
      ItemIndex = 2
      Items.Strings = (
        #25972#27004#21457#33647
        #25252#29702#21333#20803
        #31185#23460#21457#33647
        #22788#26041#21457#33647)
      TabOrder = 1
      OnClick = RG_SendClassClick
    end
    object BitBtn2: TBitBtn
      Left = 720
      Top = 17
      Width = 87
      Height = 28
      Caption = #36864#20986'(&X)'
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
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object btn_send: TBitBtn
      Left = 633
      Top = 17
      Width = 87
      Height = 28
      Caption = #21457#33647'(&C)'
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
        33333333373F33333333333330B03333333333337F7F33333333333330F03333
        333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
        333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
        333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
        3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
        33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
        33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
        03333337777777F7F33333330000000003333337777777773333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnClick = btn_sendClick
    end
    object btn_search: TBitBtn
      Left = 540
      Top = 17
      Width = 87
      Height = 28
      Caption = #26597#35810
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
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
      TabOrder = 4
      OnClick = btn_searchClick
    end
    object btn_print: TBitBtn
      Left = 808
      Top = 17
      Width = 75
      Height = 28
      Caption = #25171#21360
      TabOrder = 5
      Visible = False
      OnClick = btn_printClick
    end
    object RdGrp_yzlb: TRadioGroup
      Left = 153
      Top = 0
      Width = 81
      Height = 81
      Align = alLeft
      Caption = #21307#22065#31867#22411
      ItemIndex = 2
      Items.Strings = (
        #20020#26102
        #38271#26399
        #20840#37096)
      TabOrder = 6
      OnClick = RdGrp_yzlbClick
    end
    object RdGrp_house: TRadioGroup
      Left = 889
      Top = 12
      Width = 89
      Height = 64
      Caption = #36873#25321#22823#27004
      Columns = 2
      TabOrder = 7
    end
    object RG_MedClass: TRadioGroup
      Left = 0
      Top = 0
      Width = 72
      Height = 81
      Align = alLeft
      Caption = #33647#21697#31867#22411
      Enabled = False
      ItemIndex = 0
      Items.Strings = (
        #35199#33647
        #33609#33647)
      TabOrder = 8
    end
    object edt_sendno: TEdit
      Left = 240
      Top = 23
      Width = 78
      Height = 20
      Color = clInfoBk
      Ctl3D = True
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
    end
    object Edt_code: TEdit
      Left = 324
      Top = 23
      Width = 46
      Height = 20
      Hint = #30452#25509#25353#22238#36710#25110#36755#20837#31185#23460#32534#21495
      Ctl3D = True
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 667
    Width = 1205
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 500
      end
      item
        Text = #19981#33021#22312#22810#21488#26426#22120#20351#29992#21516#19968#20010#29992#25143#21457#33647#65281#65281
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1205
    Height = 35
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = #20303#38498#21457#33647
    Color = clHighlight
    Font.Charset = GB2312_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 44
      Height = 21
      Caption = #24211#25151
    end
    object cbb_yfbm: TComboBox
      Left = 58
      Top = 7
      Width = 136
      Height = 22
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'A'#24211
      OnChange = cbb_yfbmChange
      Items.Strings = (
        'A'#24211
        'B'#24211)
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 116
    Width = 1205
    Height = 551
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 3
    object Splitter1: TSplitter
      Left = 402
      Top = 1
      Height = 549
      ExplicitLeft = 431
      ExplicitTop = 123
      ExplicitHeight = 251
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 401
      Height = 549
      Align = alLeft
      BorderWidth = 1
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      object cxGrid1btblvwGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = #20154#25968':0'
            Kind = skCount
          end
          item
            Kind = skCount
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #35760#24405':0'
            Kind = skCount
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.DataRowHeight = 20
        OptionsView.Footer = True
        OptionsView.HeaderHeight = 25
      end
      object cxgrdbtblvw: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = cxgrdbtblvwCellClick
        DataController.DataSource = dm.Ds_comm1
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            FieldName = 'qe'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #35760#24405#25968':0'
            Kind = skCount
          end
          item
            Format = #21512#35745':0.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.DataRowHeight = 20
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 25
        Styles.FilterBox = cxStyle5
        Styles.IncSearch = cxStyle11
        Styles.Footer = cxStyle6
        Styles.Group = cxStyle7
        Styles.GroupByBox = cxStyle8
        Styles.Header = cxStyle9
        Styles.Inactive = cxStyle10
        Styles.Indicator = cxStyle12
        Styles.NewItemRowInfoText = cxStyle13
        Styles.Preview = cxStyle14
        Styles.Selection = cxStyle15
      end
      object cxGrid1lvlGrid1Level1: TcxGridLevel
        Caption = #26126#32454#25968#25454
        GridView = cxgrdbtblvw
      end
    end
    object cxGrid2: TcxGrid
      Left = 405
      Top = 1
      Width = 799
      Height = 549
      Align = alClient
      BorderWidth = 1
      TabOrder = 1
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = #20154#25968':0'
            Kind = skCount
          end
          item
            Kind = skCount
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #35760#24405':0'
            Kind = skCount
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.DataRowHeight = 20
        OptionsView.Footer = True
        OptionsView.HeaderHeight = 25
      end
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dm.Ds_comm1
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            FieldName = 'qe'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #35760#24405#25968':0'
            Kind = skCount
          end
          item
            Format = #21512#35745':0.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.DataRowHeight = 25
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 35
        Styles.FilterBox = cxStyle5
        Styles.IncSearch = cxStyle11
        Styles.Footer = cxStyle6
        Styles.Group = cxStyle7
        Styles.GroupByBox = cxStyle8
        Styles.Header = cxStyle9
        Styles.Inactive = cxStyle10
        Styles.Indicator = cxStyle12
        Styles.NewItemRowInfoText = cxStyle13
        Styles.Preview = cxStyle14
        Styles.Selection = cxStyle15
      end
      object cxGridLevel1: TcxGridLevel
        Caption = #26126#32454#25968#25454
        GridView = cxGridDBTableView2
      end
    end
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 608
    Top = 464
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14872561
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clActiveCaption
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16749885
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8421631
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = 8421631
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.FilterBox = cxStyle5
      Styles.IncSearch = cxStyle11
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Inactive = cxStyle10
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      Styles.Selection = cxStyle14
      BuiltIn = True
    end
    object GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle15
      Styles.Content = cxStyle18
      Styles.ContentEven = cxStyle19
      Styles.ContentOdd = cxStyle20
      Styles.IncSearch = cxStyle22
      Styles.CaptionRow = cxStyle16
      Styles.CardBorder = cxStyle17
      Styles.Inactive = cxStyle21
      Styles.RowCaption = cxStyle23
      Styles.Selection = cxStyle24
      BuiltIn = True
    end
  end
end
