object Frame_PurchaseSaleStock: TFrame_PurchaseSaleStock
  Left = 0
  Top = 0
  Width = 1008
  Height = 577
  TabOrder = 0
  inline Frame_base1: TFrame_base
    Left = 0
    Top = 0
    Width = 1008
    Height = 577
    Align = alClient
    TabOrder = 0
    inherited GroupBox3: TGroupBox
      Width = 1008
      inherited Label18: TLabel
        Visible = False
      end
      inherited lbl_MedName: TLabel
        Visible = False
      end
      inherited btn_Search: TBitBtn
        OnClick = Frame_base1btn_SearchClick
      end
      inherited edt_SearchCondition: TEdit
        Visible = False
      end
      inherited btn_ExportXls: TBitBtn
        Top = 16
      end
      inherited BitBtn11: TBitBtn
        Left = 831
        Top = 16
      end
      inherited rg1: TRadioGroup
        Enabled = False
      end
      inherited btn_SearchInStoreTotal: TBitBtn
        Top = 16
        Enabled = False
      end
      inherited RG_StoreClass: TRadioGroup
        Top = 5
      end
    end
    inherited cxgrd: TcxGrid
      Width = 1008
      Height = 518
    end
    inherited DBGrid_xyzb: TDBGrid
      Left = 296
      Top = 88
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
  end
end
