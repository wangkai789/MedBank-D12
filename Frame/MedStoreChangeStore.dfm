object Frame_MedstoreChangeStore: TFrame_MedstoreChangeStore
  Left = 0
  Top = 0
  Width = 991
  Height = 413
  TabOrder = 0
  inline Frame_base1: TFrame_base
    Left = 0
    Top = 0
    Width = 991
    Height = 413
    Align = alClient
    TabOrder = 0
    inherited GroupBox3: TGroupBox
      Width = 991
      Height = 68
      inherited Label15: TLabel
        Left = 260
        Top = 15
      end
      inherited Label7: TLabel
        Left = 263
        Top = 39
      end
      inherited Label18: TLabel
        Left = 413
        Top = 39
      end
      inherited lbl_MedName: TLabel
        Left = 446
        Top = 15
      end
      inherited btn_Search: TBitBtn
        Left = 551
        Top = 32
        OnClick = Frame_base1btn_SearchClick
      end
      inherited DT_from: TDateTimePicker
        Left = 284
        Top = 11
      end
      inherited DT_to: TDateTimePicker
        Left = 285
        Top = 35
        Width = 110
      end
      inherited edt_SearchCondition: TEdit
        Left = 446
        Top = 32
      end
      inherited btn_ExportXls: TBitBtn
        Left = 626
        Top = 33
      end
      inherited BitBtn11: TBitBtn
        Left = 704
        Top = 32
      end
      inherited rg1: TRadioGroup
        Left = 129
        Top = 9
      end
      inherited btn_SearchInStoreTotal: TBitBtn
        Left = 782
        Top = 31
        Enabled = False
      end
    end
    inherited cxgrd: TcxGrid
      Top = 68
      Width = 991
      Height = 345
    end
    inherited DBGrid_xyzb: TDBGrid
      Left = 408
      Top = 64
    end
    inherited cxStyleRepository: TcxStyleRepository
      inherited GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
        BuiltIn = True
      end
      inherited GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
        BuiltIn = True
      end
    end
    inherited FlexCelReport1: TFlexCelReport
      DataModule = Frame_base1
    end
    inherited Q_Result: TUniQuery
      Left = 128
      Top = 160
    end
  end
end
