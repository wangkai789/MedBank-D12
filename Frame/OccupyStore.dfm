object Frame_OccupyStore: TFrame_OccupyStore
  Left = 0
  Top = 0
  Width = 1171
  Height = 689
  TabOrder = 0
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 1171
    Height = 64
    Align = alTop
    TabOrder = 0
    object Label18: TLabel
      Left = 135
      Top = 34
      Width = 84
      Height = 12
      Caption = #36755#20837#33647#21697#25340#38899#30721
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 16
      Top = 11
      Width = 48
      Height = 12
      Caption = #24211#25151#31867#22411
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object btn_Search: TBitBtn
      Left = 332
      Top = 28
      Width = 75
      Height = 25
      Caption = #26597#35810
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      ParentFont = False
      TabOrder = 0
      OnClick = btn_SearchClick
    end
    object edt_SearchCondition: TEdit
      Tag = 1
      Left = 229
      Top = 30
      Width = 85
      Height = 21
      ImeMode = imClose
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
      OnKeyPress = edt_SearchConditionKeyPress
    end
    object BitBtn11: TBitBtn
      Left = 485
      Top = 28
      Width = 75
      Height = 25
      Caption = #36864#20986
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 2
    end
    object btn_SearchDetail: TBitBtn
      Left = 566
      Top = 28
      Width = 75
      Height = 25
      Caption = #26126#32454#26597#35810
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      TabOrder = 3
      Visible = False
      OnClick = btn_SearchDetailClick
    end
    object cbb_yfbm: TComboBox
      Left = 16
      Top = 30
      Width = 111
      Height = 21
      TabOrder = 4
    end
    object btn_DeleteOccupy: TBitBtn
      Left = 409
      Top = 28
      Width = 75
      Height = 25
      Caption = ' '#21024#38500
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      TabOrder = 5
      OnClick = btn_DeleteOccupyClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 64
    Width = 1171
    Height = 625
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #27719#24635
      object Splitter1: TSplitter
        Left = 0
        Top = 313
        Width = 1163
        Height = 7
        Cursor = crVSplit
        Align = alTop
      end
      object cxgrd: TcxGrid
        Left = 0
        Top = 0
        Width = 1163
        Height = 313
        Align = alTop
        BorderWidth = 1
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
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
          DataController.DataSource = DS_master
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
          OptionsSelection.CellSelect = False
          OptionsView.DataRowHeight = 20
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 25
          Styles.Inactive = cxStyle12
        end
        object cxgrdlvlGrid1Level1: TcxGridLevel
          Caption = #26126#32454#25968#25454
          GridView = cxgrdbtblvw
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 320
        Width = 1163
        Height = 277
        Hint = #21452#20987#21024#38500#21344#29992#35760#24405
        Align = alClient
        BorderWidth = 1
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView2: TcxGridDBTableView
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
        object cxgrdbtblvwdetail: TcxGridDBTableView
          OnDblClick = cxgrdbtblvwdetailDblClick
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DS_detail
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
          OptionsView.DataRowHeight = 20
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 25
        end
        object cxGridLevel2: TcxGridLevel
          Caption = #26126#32454#25968#25454
          GridView = cxgrdbtblvwdetail
        end
      end
    end
  end
  object Q_Master: TUniQuery
    Connection = dm.con1
    Left = 560
    Top = 104
  end
  object DS_master: TDataSource
    DataSet = Q_Master
    Left = 591
    Top = 104
  end
  object Q_detail: TUniQuery
    Connection = dm.con1
    Left = 560
    Top = 144
  end
  object DS_detail: TDataSource
    DataSet = Q_detail
    Left = 591
    Top = 144
  end
  object Q_detailALL: TUniQuery
    Connection = dm.con1
    Left = 560
    Top = 208
  end
  object DS_detailALL: TDataSource
    DataSet = Q_detailALL
    Left = 591
    Top = 208
  end
  object Q_xyzb: TUniQuery
    Connection = dm.con1
    Left = 736
    Top = 264
  end
  object DS_xyzb: TDataSource
    DataSet = Q_xyzb
    Left = 767
    Top = 264
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 1080
    Top = 440
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
