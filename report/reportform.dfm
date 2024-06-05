object Fm_report: TFm_report
  Left = 908
  Top = 264
  Caption = 'Fm_report'
  ClientHeight = 508
  ClientWidth = 711
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  TextHeight = 13
  object frxrprt1: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45395.403631307900000000
    ReportOptions.LastChange = 45435.663816516200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnBeforePrint = frxrprt1BeforePrint
    OnGetValue = frxrprt1GetValue
    Left = 184
    Top = 153
    Datasets = <
      item
        DataSet = Result
        DataSetName = 'Result'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Resultinc_name: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 26.456710000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #20379#24212#21830#65306'[Result."inc_name"]')
          ParentFont = False
        end
        object Resultrkrq: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #20837#24211#26085#26399#65306'[Result."rkrq"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 26.456710000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #27969#27700#21495#65306'[Result."lsh"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = -1.000000000000000000
          Width = 714.331170000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[hospital]'#33647#21697#20837#24211#21333'[PrintType]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = Result
        DataSetName = 'Result'
        RowCount = 0
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          Frame.Typ = []
        end
        object Resultym: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.559060000000000000
          Top = 2.559060000000000000
          Width = 105.826840000000000000
          Height = 34.015770000000000000
          DataField = 'ym'
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Result."ym"]')
          ParentFont = False
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 110.606370000000000000
          Top = 0.220470000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 198.535560000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 281.905690000000000000
          Top = 0.779530000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 0.779530000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 0.220470000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 0.220470000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 488.338900000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 542.472790000000000000
          Top = 0.779530000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 592.165740000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Resultgg: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 115.385900000000000000
          Top = 2.559060000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          DataField = 'gg'
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Result."gg"]')
          ParentFont = False
        end
        object Resultproduce: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 199.535560000000000000
          Top = 3.559060000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          DataField = 'produce'
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Result."produce"]')
          ParentFont = False
        end
        object Resultypph: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 284.464750000000000000
          Top = 3.559060000000000000
          Width = 68.031540000000000000
          Height = 30.236240000000000000
          DataField = 'ypph'
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Result."ypph"]')
          ParentFont = False
        end
        object Resultrksl: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 356.496290000000000000
          Top = 7.559060000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'rksl'
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Result."rksl"]')
          ParentFont = False
        end
        object Resultjldw: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 7.559060000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'jldw'
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Result."jldw"]')
          ParentFont = False
        end
        object Resultlsj: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 547.252320000000000000
          Top = 7.559060000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'lsj'
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Result."lsj"]')
          ParentFont = False
        end
        object ResultSPAmt: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 594.945270000000000000
          Top = 7.559060000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'SPAmt'
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Result."SPAmt"]')
          ParentFont = False
        end
        object Resultsxrq: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'sxrq'
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Result."sxrq"]')
          ParentFont = False
        end
        object ResultRPAmt: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 494.118430000000000000
          Top = 7.559060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'RPAmt'
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Result."RPAmt"]')
          ParentFont = False
        end
        object Resultjhj: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 440.425480000000000000
          Top = 7.559060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'jhj'
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Result."jhj"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 90.708720000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 45.354360000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 13.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #33647#21517)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 13.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #35268#26684)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 209.653680000000000000
          Top = 13.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #20135#22320)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 287.685220000000000000
          Top = 13.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #25209#21495)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 358.834880000000000000
          Top = 13.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #25968#37327)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 13.779530000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #21333#20301)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 25.677180000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #21333#20215)
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 441.425480000000000000
          Top = 21.897650000000000000
          Width = 200.315090000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 26.456710000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #37329#39069)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 26.456710000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #21333#20215)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 26.456710000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #37329#39069)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 15.118120000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #25928#26399)
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 110.606370000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 198.535560000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 281.905690000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 542.472790000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #36827#20215)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #38646#21806#20215)
          ParentFont = False
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 488.338900000000000000
          Top = 23.677180000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 592.165740000000000000
          Top = 22.677180000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #36827#20215#21512#35745':[SUM(<Result."RPAmt">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 152.181200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #38646#21806#20215#21512#35745':[SUM(<Result."SPAmt">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 294.023810000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #24046#39069#21512#35745':[SUM(<Result."SPAmt">,MasterData1)-SUM(<Result."RPAmt">,Mas' +
              'terData1)]')
          ParentFont = False
        end
        object ResultopidName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 418.748300000000000000
          Top = 1.000000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = Result
          DataSetName = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #32463#21150#20154': [Result."opidName"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 529.913730000000000000
          Top = 1.000000000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #25171#21360#26085#26399':[<Date>] [<time>]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object frxdbdtst_tj: TfrxDBDataset
    UserName = 'frxdbdtst_tj'
    CloseDataSource = False
    FieldAliases.Strings = (
      'flag=flag'
      'ypbh=ypbh'
      'ym=ym'
      'gg=gg'
      'produce=produce'
      'pfj=pfj'
      'rksl=rksl'
      'jldw=jldw'
      'inc_name=inc_name'
      'createdate=createdate'
      'opid=opid'
      'auditdate=auditdate'
      'auditopid=auditopid'
      'inbankdate=inbankdate'
      'inbankopid=inbankopid'
      'num=num'
      'days=days'
      'cjbm=cjbm'
      'ylsj=ylsj'
      'jx=jx'
      'rksl_1=rksl_1'
      'qe=qe'
      'lb=lb'
      'zxdw=zxdw'
      'hsb=hsb'
      'pfj_1=pfj_1'
      'inc_code=inc_code'
      'kcl=kcl'
      'zykcl=zykcl'
      'mzkcl=mzkcl'
      'pivaskcl=pivaskcl'
      'planid=planid'
      'pfjqe=pfjqe')
    DataSet = dm.Q_tj
    BCDToCurrency = False
    DataSetOptions = []
    Left = 136
    Top = 216
  end
  object frxdsgnr1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 200
    Top = 112
  end
  object RIP1: TfrxDBDataset
    UserName = 'RIP1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cfdh=cfdh'
      'use=use'
      'yl=yl'
      'zsldw=zsldw'
      'XH=XH'
      'yzdh=yzdh'
      'ksbm=ksbm'
      'mzh=mzh'
      'yzlb=yzlb'
      'yznr=yznr'
      'ypbh=ypbh'
      'gg=gg'
      'xmbm=xmbm'
      'xmmc=xmmc'
      'groupid=groupid'
      'grdchar=grdchar'
      'mryl=mryl'
      'ts=ts'
      'zsl=zsl'
      'ylsj=ylsj'
      'QE=QE'
      'ysbm=ysbm'
      'OPID=OPID'
      'cfdh_1=cfdh_1'
      'yf=yf'
      'rcs=rcs'
      'usage=usage'
      'cs=cs'
      'cfzxdw=cfzxdw'
      'frequency=frequency'
      'speed=speed'
      'zxdw=zxdw'
      'mxbz=mxbz'
      'usenum=usenum'
      'useunit=useunit'
      'remark=remark'
      'yfbm=yfbm'
      'time_start=time_start'
      'zxhs_no=zxhs_no'
      'zxtime=zxtime'
      'fyrq=fyrq'
      'Appoint_Id=Appoint_Id'
      'no=no'
      'no_zf=no_zf'
      'cflb=cflb'
      'CourseCode=CourseCode'
      'CourseName=CourseName'
      'freqCode=freqCode')
    DataSet = dm.qrcfview1
    BCDToCurrency = False
    DataSetOptions = []
    Left = 224
    Top = 256
  end
  object Rip2: TfrxDBDataset
    UserName = 'Rip2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cfdh=cfdh'
      'use=use'
      'yl=yl'
      'zsldw=zsldw'
      'XH=XH'
      'yzdh=yzdh'
      'ksbm=ksbm'
      'mzh=mzh'
      'yzlb=yzlb'
      'yznr=yznr'
      'ypbh=ypbh'
      'gg=gg'
      'xmbm=xmbm'
      'xmmc=xmmc'
      'groupid=groupid'
      'grdchar=grdchar'
      'mryl=mryl'
      'ts=ts'
      'zsl=zsl'
      'ylsj=ylsj'
      'QE=QE'
      'ysbm=ysbm'
      'OPID=OPID'
      'cfdh_1=cfdh_1'
      'yf=yf'
      'rcs=rcs'
      'usage=usage'
      'cs=cs'
      'cfzxdw=cfzxdw'
      'frequency=frequency'
      'speed=speed'
      'zxdw=zxdw'
      'mxbz=mxbz'
      'usenum=usenum'
      'useunit=useunit'
      'remark=remark'
      'yfbm=yfbm'
      'time_start=time_start'
      'zxhs_no=zxhs_no'
      'zxtime=zxtime'
      'fyrq=fyrq'
      'Appoint_Id=Appoint_Id'
      'no=no'
      'no_zf=no_zf'
      'cflb=cflb'
      'CourseCode=CourseCode'
      'CourseName=CourseName'
      'freqCode=freqCode')
    DataSet = dm.qrcfview2
    BCDToCurrency = False
    DataSetOptions = []
    Left = 272
    Top = 256
  end
  object Rip3: TfrxDBDataset
    UserName = 'Rip3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cfdh=cfdh'
      'use=use'
      'yl=yl'
      'zsldw=zsldw'
      'XH=XH'
      'yzdh=yzdh'
      'ksbm=ksbm'
      'mzh=mzh'
      'yzlb=yzlb'
      'yznr=yznr'
      'ypbh=ypbh'
      'gg=gg'
      'xmbm=xmbm'
      'xmmc=xmmc'
      'groupid=groupid'
      'grdchar=grdchar'
      'mryl=mryl'
      'ts=ts'
      'zsl=zsl'
      'ylsj=ylsj'
      'QE=QE'
      'ysbm=ysbm'
      'OPID=OPID'
      'cfdh_1=cfdh_1'
      'yf=yf'
      'rcs=rcs'
      'usage=usage'
      'cs=cs'
      'cfzxdw=cfzxdw'
      'frequency=frequency'
      'speed=speed'
      'zxdw=zxdw'
      'mxbz=mxbz'
      'usenum=usenum'
      'useunit=useunit'
      'remark=remark'
      'yfbm=yfbm'
      'time_start=time_start'
      'zxhs_no=zxhs_no'
      'zxtime=zxtime'
      'fyrq=fyrq'
      'Appoint_Id=Appoint_Id'
      'no=no'
      'no_zf=no_zf'
      'cflb=cflb'
      'CourseCode=CourseCode'
      'CourseName=CourseName'
      'freqCode=freqCode')
    DataSet = dm.qrcfview3
    BCDToCurrency = False
    DataSetOptions = []
    Left = 312
    Top = 256
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'RipTitle'
    CloseDataSource = False
    FieldAliases.Strings = (
      'mzh=mzh'
      'name=name'
      'sex=sex'
      'ksmc=ksmc'
      'ghrq=ghrq'
      'age=age'
      'address=address'
      'ysbm=ysbm'
      'ys_name=ys_name'
      'med_clinical=med_clinical'
      'med_history=med_history'
      'med_lab=med_lab'
      'med_advice=med_advice'
      'Med_HistoryAllergy=Med_HistoryAllergy'
      'telephone=telephone'
      'sfzh=sfzh'
      'agent=agent'
      'agentsfzh=agentsfzh'
      'sflb=sflb')
    DataSet = dm.Q_RipTitle
    BCDToCurrency = False
    DataSetOptions = []
    Left = 312
    Top = 176
  end
  object Result: TfrxDBDataset
    UserName = 'Result'
    CloseDataSource = False
    FieldAliases.Strings = (
      'lsh=lsh'
      'ypbh=ypbh'
      'ym=ym'
      'gg=gg'
      'jldw=jldw'
      'rksl=rksl'
      'jhj=jhj'
      'lsj=lsj'
      'RPAmt=RPAmt'
      'SPAmt=SPAmt'
      'gre=gre'
      'cgy=cgy'
      'fhr=fhr'
      'rkrq=rkrq'
      'inc_name=inc_name'
      'produce=produce'
      'ypph=ypph'
      'sxrq=sxrq'
      'opidName=opidName')
    DataSet = dm.Q_public
    BCDToCurrency = False
    DataSetOptions = []
    Left = 144
    Top = 336
  end
  object OUT: TfrxDBDataset
    UserName = 'OUT'
    CloseDataSource = False
    FieldAliases.Strings = (
      'qldh=qldh'
      'ypbh=ypbh'
      'sfl=sfl'
      'type=type'
      'ckh=ckh'
      'lsj=lsj'
      'ksmc=ksmc'
      'supplyksmc=supplyksmc'
      'fyr=fyr'
      'ym=ym'
      'gg=gg'
      'jldw=jldw'
      'qlrq=qlrq'
      'fyrq=fyrq'
      'je=je'
      'produce=produce'
      'ypph=ypph'
      'sxrq=sxrq'
      'pfj=pfj'
      'pfjqe=pfjqe'
      'abstract=abstract'
      'rkxh=rkxh'
      'rkxh_1=rkxh_1'
      'ksbm=ksbm'
      'ypbh_1=ypbh_1'
      'bh=bh'
      'rkxh_2=rkxh_2')
    DataSet = dm.Q_OUT
    BCDToCurrency = False
    DataSetOptions = []
    Left = 304
    Top = 376
  end
  object SendMed: TfrxDBDataset
    UserName = 'SendMed'
    CloseDataSource = False
    FieldAliases.Strings = (
      'level=level'
      'ksbm=ksbm'
      'ksmc=ksmc'
      'ypbh=ypbh'
      'ym=ym'
      'gg=gg'
      'produce=produce'
      'mryl=mryl'
      'qe=qe'
      'zxdw=zxdw'
      'zlbm=zlbm'
      'ylsj=ylsj'
      'inp_place=inp_place'
      'yzlb=yzlb')
    DataSet = dm.Q_fybq
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 328
  end
  object SendMedDetail: TfrxDBDataset
    UserName = 'SendMedDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'zyh=zyh'
      'byxm=byxm'
      'ksmc=ksmc'
      'xb=xb'
      'nl=nl'
      'ypbh=ypbh'
      'ym=ym'
      'gg=gg'
      'mryl=mryl'
      'zxdw=zxdw'
      'produce=produce'
      'ifcz=ifcz'
      'room=room'
      'mcsl=mcsl'
      'rcs=rcs'
      'frequency=frequency'
      'yf=yf'
      'cfzxdw=cfzxdw'
      'cfdh=cfdh'
      'id=id'
      'cflb=cflb'
      'Nurseunit=Nurseunit'
      'usage=usage'
      'qe=qe'
      'ylsj=ylsj'
      'Inp_Place=Inp_Place')
    DataSet = dm.Q_SendMedDetail
    BCDToCurrency = False
    DataSetOptions = []
    Left = 384
    Top = 368
  end
  object Rip4: TfrxDBDataset
    UserName = 'Rip4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cfdh=cfdh'
      'use=use'
      'yl=yl'
      'zsldw=zsldw'
      'XH=XH'
      'yzdh=yzdh'
      'ksbm=ksbm'
      'mzh=mzh'
      'yzlb=yzlb'
      'yznr=yznr'
      'ypbh=ypbh'
      'gg=gg'
      'xmbm=xmbm'
      'xmmc=xmmc'
      'groupid=groupid'
      'grdchar=grdchar'
      'mryl=mryl'
      'ts=ts'
      'zsl=zsl'
      'ylsj=ylsj'
      'QE=QE'
      'ysbm=ysbm'
      'OPID=OPID'
      'cfdh_1=cfdh_1'
      'yf=yf'
      'rcs=rcs'
      'usage=usage'
      'cs=cs'
      'cfzxdw=cfzxdw'
      'frequency=frequency'
      'speed=speed'
      'zxdw=zxdw'
      'mxbz=mxbz'
      'usenum=usenum'
      'useunit=useunit'
      'remark=remark'
      'yfbm=yfbm'
      'time_start=time_start'
      'zxhs_no=zxhs_no'
      'zxtime=zxtime'
      'fyrq=fyrq'
      'Appoint_Id=Appoint_Id'
      'no=no'
      'no_zf=no_zf'
      'cflb=cflb'
      'CourseCode=CourseCode'
      'CourseName=CourseName'
      'freqCode=freqCode')
    DataSet = dm.qrcfview4
    BCDToCurrency = False
    DataSetOptions = []
    Left = 360
    Top = 256
  end
end
