object Frame_InStore: TFrame_InStore
  Left = 0
  Top = 0
  Width = 1022
  Height = 501
  TabOrder = 0
  inline Frame_base1: TFrame_base
    Left = 0
    Top = 0
    Width = 1022
    Height = 501
    Align = alClient
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 1022
    ExplicitHeight = 501
    inherited GroupBox3: TGroupBox
      Width = 1022
      ExplicitWidth = 1022
      inherited Label15: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited Label7: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited Label18: TLabel
        Left = 439
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 439
      end
      inherited lbl_MedName: TLabel
        Left = 600
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 600
      end
      inherited Label39: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited btn_Search: TBitBtn
        Left = 671
        OnClick = Frame_base1btn_SearchClick
        ExplicitLeft = 671
      end
      inherited edt_SearchCondition: TEdit
        Left = 504
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 504
      end
      inherited btn_ExportXls: TBitBtn
        Left = 826
        ExplicitLeft = 826
      end
      inherited BitBtn11: TBitBtn
        Left = 904
        ExplicitLeft = 904
      end
      inherited rg1: TRadioGroup
        Width = 112
        Height = 53
        ExplicitWidth = 112
        ExplicitHeight = 53
      end
      inherited btn_SearchInStoreTotal: TBitBtn
        Left = 748
        OnClick = Frame_base1btn_SearchInStoreTotalClick
        ExplicitLeft = 748
      end
      inherited cbb_yfbm: TComboBox
        StyleElements = [seFont, seClient, seBorder]
      end
    end
    inherited cxgrd: TcxGrid
      Width = 1022
      Height = 206
      Align = alNone
      ExplicitWidth = 1022
      ExplicitHeight = 206
      inherited cxgrdbtblvw: TcxGridDBTableView
        OptionsView.HeaderHeight = 30
        Styles.GroupByBox = nil
      end
    end
    inherited DBGrid_xyzb: TDBGrid
      Left = 272
    end
    inherited cxStyleRepository: TcxStyleRepository
      PixelsPerInch = 96
      inherited GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
        BuiltIn = True
      end
      inherited GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
        BuiltIn = True
      end
    end
  end
  object rg_SearchCondition: TRadioGroup
    Left = 376
    Top = 6
    Width = 117
    Height = 39
    Caption = #26597#35810#31867#22411
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #33647#21697
      #21457#31080#21495)
    TabOrder = 1
  end
  object ds_xyzb: TDataSource
    DataSet = Q_xyzb
    Left = 128
    Top = 152
  end
  object Q_xyzb: TUniQuery
    Connection = dm.con1
    Left = 96
    Top = 152
  end
end
