object Fm_ypchange: TFm_ypchange
  Left = -8
  Top = -8
  Caption = #33647#21697#32500#25252
  ClientHeight = 606
  ClientWidth = 1213
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1213
    Height = 59
    Align = alTop
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 537
      Top = 12
      Width = 24
      Height = 12
      Caption = #25552#31034
      FocusControl = Edt_pym
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Edt_pym: TEdit
      Left = 534
      Top = 33
      Width = 102
      Height = 20
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnChange = Edt_pymChange
    end
    object btn_serach: TBitBtn
      Left = 846
      Top = 22
      Width = 75
      Height = 26
      Caption = #26597#35810
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        18000000000074030000120B0000120B00000000000000000000FFFFFF114865
        003B5A003B5AC0CFD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF7211456102A4D400A3D500A0D30D5373BFC6CC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF7200609045C8F502B7EA00A9DD009DD1155877BCC1C7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7200679B55C0EC4CCFFB03
        B4E700AADE0097C91C6787A1AFB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF72C0D9E61173A554BFEA4ED1FD00B3E700B4EE005D89BF
        C9DDF5CFCFA44A40A44A40A44A40BE7E79FFFFFFFFFFFFFFFFFFFFFFFF72FFFF
        FFB6CCDC1372A54BBAE690E4FF0DE7FF23535A963B3BCD8E75DBB9AEDBB9AEDB
        B8ACCE9B86A05050B76E6BFFFFFFFFFFFF72FFFFFFFFFFFFAFC5D61079AB4094
        CA446964B8947FDA9B9FEAD8CAFFFFEDFFFFE9FFFFF2FAF3E5CE9E98CE9F8CC0
        826BFFFFFF72FFFFFFFFFFFFFFFFFFAAC5D7AACCED873939E69D6DFFFFF2FFF4
        C6FFE39FFFEAAAFFF0BAFFFCD7FFFFFFF7ECD5850E00FFFFFF72FFFFFFFFFFFF
        FFFFFFFFFFFFF2C0C0CC866AE7C07FFFE494FFD57EFFD989FFE5A5FFEEBAFFF7
        CBFFFFD6F8E9B7C99169CC998072FFFFFFFFFFFFFFFFFFFFFFFF933026E0B180
        FFFABAFFCD78FFC55FFFCA6AFFDD93FFE9AFFFF6CBFFFAD5FFF5C2FFF7C4942E
        0072FFFFFFFFFFFFFFFFFFFFFFFFB65F40E0A96FFFE29AFFCA6DFFC05AFFBE54
        FFCD70FFDC93FFE6A9FFE8ABFFE3A1F8D18DAC460072FFFFFFFFFFFFFFFFFFFF
        FFFFD67C34EFB464FFDC93FFD084FFD592FFCA77FFBD52FFC359FFCE73FFD074
        FFCD6EFFCA67D36D0072FFFFFFFFFFFFFFFFFFFFFFFFDD9D70E5A45CFAD18EFF
        E0AEFFEFD6FFEACBFFBE5CFFA013FFB02FFFB233FDAD2CF09F2DD98C4072FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD07C55E7A150FFF2CAFFFCF7FFF6E9FFBC58FF
        9200FF9A02FFA10AF89507C5610DFFFFFF72FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFDA9566E6A34FF7D59DFCDEB4FFD48FFFB544FFAF30FEA827F79E1DF3981ED3
        7F2FFFFFFF72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1A670C75E11E493
        32FCCA6EFBBB5DFCBC57EFA644C76311D38031FFFFFFFFFFFF72FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6B380CC6600CC6600CC6600D98C
        40FFFFFFFFFFFFFFFFFFFFFFFF72}
      ParentFont = False
      TabOrder = 1
      OnClick = btn_serachClick
    end
    object BitBtn4: TBitBtn
      Left = 1147
      Top = 22
      Width = 72
      Height = 26
      Caption = #36864#20986
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object RGrp_stop: TRadioGroup
      Left = 6
      Top = 4
      Width = 96
      Height = 52
      Caption = #29366#24577
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #20840#37096
        #22312#29992
        #20572#29992
        #25928#26399)
      TabOrder = 0
    end
    object btn_modify: TBitBtn
      Left = 996
      Top = 22
      Width = 75
      Height = 26
      Caption = #20462#25913
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        18000000000074030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        3F3328005F93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005F93E7FAFF003A5D003A5D
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF005F93E7FAFFD0F9FF52CBFFA13400FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF725E534A3F33283E33273E33273F3328B1ACA7FFFFFF00
        5F9352CBFFE29431FF9D00A13400FFFFFFB0ABA63F33285E534AFFFFFF72756A
        62FFFFFFFFFFFFFFFFFFFFFFFFD1C7BCFFFFFF005F93F4D7A5FFFAD1E29431FF
        9D00A13400FFFFFFFFFFFF756A62FFFFFF72776D63FFFFFFF6F1ECF7F2EDF9F4
        F0CCC1B8FDFAF9FFFFFFD56B03F4D7A5FFFAD1E29431FF9D00A13400FFFFFFC7
        C3BFFFFFFF727F736AD5CBC1CEC5BBCFC5BBD0C6BCD2C9BFD0C6BCEBE7E3FFFF
        FFD06906F4D7A5FFFAD1E29431FF9D00A13400FFFFFFFFFFFF7283786DFFFFFF
        FBF8F6FCF9F7FEFCF9D3C9BFFEFCF9FCF9F7FEFDFCFFFFFFCC6908F4D7A5FFFA
        D1E294310024F60015C8FFFFFF72887E72FFFFFFFCFAF9FCFBF9FEFDFCD6CDC3
        FEFDFCFCFBF9FCFBF9FFFEFEFFFFFFCD6C0CF4D7A5FFFFFF0024F60015C8FFFF
        FF72908379DED5CDD8CFC6D8CFC6D9D0C7DBD3CAD9D0C7D8CFC6D8CFC6D9D0C7
        F0EDE9FFFFFFCD6C0C0024F6FFCCFF153ACFFFFFFF7294887BFFFFFFFFFFFFFF
        FFFFFFFFFFDDD5CBFFFFFFFFFFFFFFFFFFFFFFFFDDD5CBFFFFFFFFFFFF0B32CD
        0013C5FFFFFFFFFFFF729A958CFFFFFFFFFFFFFFFFFFFFFFFFE7E5E0FFFFFFFF
        FFFFFFFFFFFFFFFFE7E5E0FFFFFFFFFFFFFFFFFFFFFFFFD5D3D0FFFFFF72B043
        008A1C00891B00891B008A1B008B1D008A1B00891B00891B008A1B008B1D008A
        1B00891B00891B008A1C00B04300FFFFFF72CB6400FFAF24FFAA1EFFAA1EFFAC
        22FF9D00FFAC22FFAA1EFFAA1EFFAC22FF9D00FFAC22FFAA1EFFAA1EFFAF24CB
        6400FFFFFF72C96000FFE1AEFFF1CEFFF0CDFFF3D6FF9300FFF3D6FFF0CDFFF0
        CDFFF3D6FF9300FFF3D6FFF0CDFFF1CEFFE1AEC96000FFFFFF72CB6400C95F00
        C85D00C85C00C55A00FF9D00C55A00C85C00C85C00C55A00FF9D00C55A00C85C
        00C85D00C95F00CB6400FFFFFF72}
      ParentFont = False
      TabOrder = 2
      OnClick = btn_modifyClick
    end
    object RG_seek: TRadioGroup
      Left = 388
      Top = 5
      Width = 134
      Height = 54
      Caption = #26597#35810#26465#20214
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #25340#38899#30721
        #33647#21697#32534#21495
        #33647#21517
        #25209#20934#25991#21495)
      TabOrder = 5
      OnClick = RG_seekClick
    end
    object btn_add: TBitBtn
      Left = 921
      Top = 22
      Width = 75
      Height = 26
      Caption = #26032#22686
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0048000042000044
        00004900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF005D0000FFFF1DBA2F005D00FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004800004000005D003ED5501BB5
        32005D000044000049005E534A3F33283E33273E33273F332841352A3F3328FF
        FFFF005D0000FFFF11A1030EA20E0EA6180FAA1B11AE17005D00756A62FFFFFF
        FFFFFFFFFFFFFFFFFFD1C7BCFFFFFFFFFFFF005D0000FFFF00FFFF00FFFF1BAF
        2823BA2700FFFF005D00776D63FFFFFFF6F1ECF7F2EDF9F4F0CCC1B8F9F4F0FF
        FFFF005D00005D00005D0000FFFF1EAD1C005D00005D00005D007F736AD5CBC1
        CEC5BBCFC5BBD0C6BCD2C9BFD0C6BCEBE7E3FFFFFFFFFFFF005D0000FFFF00FF
        FF005D00FFFFFFFFFFFF83786DFFFFFFFBF8F6FCF9F7FEFCF9D3C9BFFEFCF9FC
        F9F7FCF9F7FFFFFF005D00005D00005D00005D00FFFFFF83786D887E72FFFFFF
        FCFAF9FCFBF9FEFDFCD6CDC3FEFDFCFCFBF9FCFBF9FFFEFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF887E72908379DED5CDD8CFC6D8CFC6D9D0C7DBD3CAD9D0C7D8
        CFC6D8CFC6D9D0C7DBD3CAD9D0C7D8CFC6D8CFC6DED5CD90837994887BFFFFFF
        FFFFFFFFFFFFFFFFFFDDD5CBFFFFFFFFFFFFFFFFFFFFFFFFDDD5CBFFFFFFFFFF
        FFFFFFFFFFFFFF94887B9A958CFFFFFFFFFFFFFFFFFFFFFFFFE7E5E0FFFFFFFF
        FFFFFFFFFFFFFFFFE7E5E0FFFFFFFFFFFFFFFFFFFFFFFF9A958CB043008A1C00
        891B00891B008A1B008B1D008A1B00891B00891B008A1B008B1D008A1B00891B
        00891B008A1C00B04300CB6400FFAF24FFAA1EFFAA1EFFAC22FF9D00FFAC22FF
        AA1EFFAA1EFFAC22FF9D00FFAC22FFAA1EFFAA1EFFAF24CB6400C96000FFE1AE
        FFF1CEFFF0CDFFF3D6FF9300FFF3D6FFF0CDFFF0CDFFF3D6FF9300FFF3D6FFF0
        CDFFF1CEFFE1AEC96000CB6400C95F00C85D00C85C00C55A00FF9D00C55A00C8
        5C00C85C00C55A00FF9D00C55A00C85C00C85D00C95F00CB6400}
      ParentFont = False
      TabOrder = 6
      OnClick = btn_addClick
    end
    object btn_ExportXls: TBitBtn
      Left = 1071
      Top = 22
      Width = 75
      Height = 26
      Caption = #23548#20986'Excel'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FF3FFFFFFF3FFFF003000000030
        0000773777777737777703330030033300037FFF77F77FFF7773700007330000
        003377777733777777F3303003330030003337F77F3377F77733303073333030
        033337F77F3337F77F3337007333300003333777733337777333330033333000
        33333377F3333777F33333073333330033333377333333773333333333333333
        33333333FF333333FF33333973333337933333377FF333377F33333999333399
        93333337773333777F333339933333399333333773FF33377F33333939733793
        93333337377FF773733333333399993333333333337777333333}
      NumGlyphs = 2
      TabOrder = 7
      OnClick = btn_ExportXlsClick
    end
    object RG_StoreClass: TRadioGroup
      Left = 103
      Top = 4
      Width = 164
      Height = 52
      Caption = #24211#23384#20998#31867
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #20840#37096)
      TabOrder = 8
    end
    object grp1: TGroupBox
      Left = 646
      Top = 11
      Width = 193
      Height = 42
      Caption = #25928#26399
      TabOrder = 9
      object dtp_from: TDateTimePicker
        Left = 8
        Top = 16
        Width = 89
        Height = 20
        Date = 45240.000000000000000000
        Time = 0.648814641201170200
        TabOrder = 0
      end
      object dtp_to: TDateTimePicker
        Left = 100
        Top = 15
        Width = 86
        Height = 20
        Date = 45240.000000000000000000
        Time = 0.648814641201170200
        TabOrder = 1
      end
    end
    object rg1: TRadioGroup
      Left = 268
      Top = 5
      Width = 118
      Height = 54
      Caption = #33647#21697#31867#22411
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #20840#37096
        #35199#33647
        #20013#33609#33647
        #20013#25104#33647
        #26448#26009)
      TabOrder = 10
    end
  end
  object cxgrd: TcxGrid
    Left = 0
    Top = 59
    Width = 1213
    Height = 547
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
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
      OnDblClick = cxgrdbtblvwDblClick
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DS_Result
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
      OptionsView.HeaderHeight = 35
      Styles.OnGetContentStyle = cxgrdbtblvwStylesGetContentStyle
      Styles.GroupByBox = cxStyle10
      Styles.Header = cxStyle11
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      Caption = #26126#32454#25968#25454
      GridView = cxgrdbtblvw
    end
  end
  object StyleRepository: TcxStyleRepository
    Left = 192
    Top = 264
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor]
      Color = 8453888
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16777088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor]
      Color = 8421631
    end
    object GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle4
      Styles.ContentEven = cxStyle5
      Styles.ContentOdd = cxStyle6
      Styles.FilterBox = cxStyle7
      Styles.IncSearch = cxStyle13
      Styles.Footer = cxStyle8
      Styles.Group = cxStyle9
      Styles.GroupByBox = cxStyle10
      Styles.Header = cxStyle11
      Styles.Inactive = cxStyle12
      Styles.Indicator = cxStyle14
      Styles.Preview = cxStyle15
      Styles.Selection = cxStyle16
      Styles.BandBackground = cxStyle2
      Styles.BandHeader = cxStyle3
      BuiltIn = True
    end
  end
  object Q_Result: TUniQuery
    Connection = dm.con1
    Left = 336
    Top = 144
  end
  object DS_Result: TDataSource
    DataSet = Q_Result
    Left = 375
    Top = 144
  end
end
