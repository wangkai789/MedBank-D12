object Frame_ExamRecord: TFrame_ExamRecord
  Left = 0
  Top = 0
  Width = 1071
  Height = 508
  TabOrder = 0
  inline Frame_base1: TFrame_base
    Left = 0
    Top = 0
    Width = 1071
    Height = 508
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1071
    ExplicitHeight = 508
    inherited GroupBox3: TGroupBox
      Width = 1071
      ExplicitWidth = 1071
      inherited btn_Search: TBitBtn
        OnClick = Frame_base1btn_SearchClick
      end
      inherited rg1: TRadioGroup
        Items.Strings = (
          #20840#37096
          #35199#25104#33647
          #20013#33609#33647)
      end
    end
    inherited cxgrd: TcxGrid
      Width = 1071
      Height = 449
      ExplicitWidth = 1071
      ExplicitHeight = 449
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
end
