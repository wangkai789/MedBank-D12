object fm_medReturn: Tfm_medReturn
  Left = 326
  Top = 314
  Caption = #38376#35786#36864#33647#30003#35831
  ClientHeight = 695
  ClientWidth = 1366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object pgc_return: TPageControl
    Left = 0
    Top = 36
    Width = 1366
    Height = 659
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #36864#33647#30003#35831
      object grp2: TGroupBox
        Left = 0
        Top = 115
        Width = 1358
        Height = 44
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label9: TLabel
          Left = 10
          Top = 19
          Width = 48
          Height = 12
          Caption = #39033#30446#21517#31216
        end
        object Label10: TLabel
          Left = 288
          Top = 19
          Width = 24
          Height = 12
          Caption = #35268#26684
        end
        object Label11: TLabel
          Left = 416
          Top = 19
          Width = 48
          Height = 12
          Caption = #21457#33647#25968#37327
        end
        object Label4: TLabel
          Left = 552
          Top = 19
          Width = 48
          Height = 12
          Caption = #36864#33647#25968#37327
        end
        object Edt_xmmc: TEdit
          Left = 65
          Top = 15
          Width = 205
          Height = 20
          ReadOnly = True
          TabOrder = 0
        end
        object edt_gg: TEdit
          Left = 322
          Top = 15
          Width = 82
          Height = 20
          ReadOnly = True
          TabOrder = 1
        end
        object Edt_usenum: TEdit
          Left = 606
          Top = 16
          Width = 82
          Height = 20
          Color = 8421631
          TabOrder = 2
          OnKeyPress = Edt_usenumKeyPress
        end
        object Edt_useunit: TEdit
          Left = 694
          Top = 15
          Width = 38
          Height = 20
          ReadOnly = True
          TabOrder = 3
        end
        object chk_all_yp: TCheckBox
          Left = 747
          Top = 24
          Width = 57
          Height = 17
          Caption = #20840#36864
          Checked = True
          State = cbChecked
          TabOrder = 4
          Visible = False
        end
        object Edt_sendnum: TEdit
          Left = 465
          Top = 16
          Width = 82
          Height = 20
          ReadOnly = True
          TabOrder = 5
        end
        object edt_xh: TEdit
          Left = 818
          Top = 15
          Width = 49
          Height = 20
          ReadOnly = True
          TabOrder = 6
          Visible = False
        end
        object edt_mryl: TEdit
          Left = 874
          Top = 15
          Width = 49
          Height = 20
          ReadOnly = True
          TabOrder = 7
          Visible = False
        end
        object edt_qe: TEdit
          Left = 938
          Top = 15
          Width = 49
          Height = 20
          ReadOnly = True
          TabOrder = 8
          Visible = False
        end
        object edt_sfbz: TEdit
          Left = 994
          Top = 15
          Width = 49
          Height = 20
          ReadOnly = True
          TabOrder = 9
          Visible = False
        end
      end
      object grp1: TGroupBox
        Left = 0
        Top = 0
        Width = 1358
        Height = 115
        Align = alTop
        Caption = #24739#32773#22522#26412#20449#24687
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 17
          Top = 21
          Width = 36
          Height = 12
          Caption = #21457#31080#21495
        end
        object Label2: TLabel
          Left = 276
          Top = 21
          Width = 24
          Height = 12
          Caption = #22995#21517
        end
        object Label5: TLabel
          Left = 137
          Top = 21
          Width = 36
          Height = 12
          Caption = #38376#35786#21495
        end
        object Lab_qe: TLabel
          Left = 79
          Top = 44
          Width = 36
          Height = 12
          Caption = 'Lab_qe'
        end
        object Label16: TLabel
          Left = 157
          Top = 45
          Width = 36
          Height = 12
          Caption = #33647#26448#36153
        end
        object Lab_ycfqe: TLabel
          Left = 226
          Top = 44
          Width = 54
          Height = 12
          Caption = 'Lab_ycfqe'
        end
        object Label18: TLabel
          Left = 320
          Top = 45
          Width = 36
          Height = 12
          Caption = #22788#32622#36153
        end
        object Lab_czfqe: TLabel
          Left = 380
          Top = 44
          Width = 54
          Height = 12
          Caption = 'Lab_czfqe'
        end
        object Label32: TLabel
          Left = 472
          Top = 45
          Width = 48
          Height = 12
          Caption = #23454#25910#37329#39069
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object lb_ssqe: TLabel
          Left = 533
          Top = 44
          Width = 42
          Height = 12
          Caption = 'lb_ssqe'
        end
        object Label17: TLabel
          Left = 17
          Top = 67
          Width = 24
          Height = 12
          Caption = #20840#39069
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Lab_jsqe: TLabel
          Left = 79
          Top = 66
          Width = 48
          Height = 12
          Caption = 'Lab_jsqe'
        end
        object Label25: TLabel
          Left = 157
          Top = 67
          Width = 48
          Height = 12
          Caption = #24080#25143#25903#20184
        end
        object Label26: TLabel
          Left = 320
          Top = 67
          Width = 48
          Height = 12
          Caption = #29616#37329#25903#20184
        end
        object Lab_cashzf: TLabel
          Left = 380
          Top = 66
          Width = 60
          Height = 12
          Caption = 'Lab_cashzf'
        end
        object Label34: TLabel
          Left = 620
          Top = 45
          Width = 48
          Height = 12
          Caption = #20248#24800#37329#39069
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object lb_discount: TLabel
          Left = 695
          Top = 44
          Width = 66
          Height = 12
          Caption = 'lb_discount'
        end
        object lab_gwybzzf: TLabel
          Left = 79
          Top = 88
          Width = 66
          Height = 12
          Caption = 'lab_gwybzzf'
        end
        object Label14: TLabel
          Left = 17
          Top = 89
          Width = 60
          Height = 12
          Caption = #20844#21153#21592#34917#21161
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object lab_dbjzjzf: TLabel
          Left = 695
          Top = 66
          Width = 66
          Height = 12
          Caption = 'lab_dbjzjzf'
        end
        object c: TLabel
          Left = 620
          Top = 67
          Width = 72
          Height = 12
          Caption = #22823#30149#25937#21161#22522#37329
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Lab_tczf: TLabel
          Left = 533
          Top = 66
          Width = 48
          Height = 12
          Caption = 'Lab_tczf'
        end
        object Label8: TLabel
          Left = 472
          Top = 67
          Width = 48
          Height = 12
          Caption = #32479#31609#37329#39069
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 157
          Top = 89
          Width = 48
          Height = 12
          Caption = #25903#20184#29616#37329
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 320
          Top = 89
          Width = 48
          Height = 12
          Caption = #25903#20184#38134#23384
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 472
          Top = 89
          Width = 48
          Height = 12
          Caption = #25903#20184#24494#20449
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 620
          Top = 89
          Width = 36
          Height = 12
          Caption = #25903#20184#23453
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 513
          Top = 21
          Width = 48
          Height = 12
          Caption = #32467#36134#26085#26399
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object lbl1: TLabel
          Left = 401
          Top = 21
          Width = 24
          Height = 12
          Caption = #31867#21035
        end
        object lbl2: TLabel
          Left = 17
          Top = 45
          Width = 48
          Height = 12
          Caption = #21307#38498#20840#39069
        end
        object Edt_no: TEdit
          Left = 62
          Top = 17
          Width = 68
          Height = 20
          TabOrder = 0
          OnEnter = Edt_noEnter
          OnKeyPress = Edt_noKeyPress
        end
        object edt_name: TEdit
          Left = 307
          Top = 17
          Width = 87
          Height = 20
          ReadOnly = True
          TabOrder = 1
        end
        object edt_ksmc: TEdit
          Left = 773
          Top = 41
          Width = 44
          Height = 20
          TabOrder = 2
          Visible = False
        end
        object Edt_mzh: TEdit
          Left = 180
          Top = 17
          Width = 89
          Height = 20
          ReadOnly = True
          TabOrder = 3
        end
        object ed_zhzf: TEdit
          Left = 225
          Top = 63
          Width = 84
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #26234#33021'ABC'#36755#20837#27861
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object Edt_yjj_cash: TEdit
          Left = 225
          Top = 86
          Width = 84
          Height = 20
          TabOrder = 5
        end
        object Edt_yjj_bank: TEdit
          Left = 377
          Top = 86
          Width = 84
          Height = 20
          TabOrder = 6
        end
        object Edt_yjj_wechat: TEdit
          Left = 529
          Top = 86
          Width = 84
          Height = 20
          TabOrder = 7
        end
        object Edt_yjj_alipay: TEdit
          Left = 694
          Top = 86
          Width = 84
          Height = 20
          TabOrder = 8
        end
        object Edt_checkdate: TEdit
          Left = 564
          Top = 17
          Width = 95
          Height = 20
          TabOrder = 9
          Text = 'Edt_checkdate'
        end
        object edt_sflb: TEdit
          Left = 432
          Top = 17
          Width = 68
          Height = 20
          TabOrder = 10
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 159
        Width = 1358
        Height = 314
        Align = alTop
        Caption = 'Panel1'
        TabOrder = 2
        object dbgrd_yp_ty: TDBGrid
          Left = 1
          Top = 1
          Width = 1356
          Height = 312
          Align = alClient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbgrd_yp_tyDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'xmbm'
              Title.Caption = #33647#21697#32534#21495
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'xmmc'
              Title.Caption = #33647#21697#21517#31216
              Width = 259
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gg'
              Title.Caption = #35268#26684
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sfbz'
              Title.Caption = #21333#20215
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sendnum'
              Title.Caption = #21457#33647#25968#37327
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usenum'
              Title.Caption = #36864#36153#25968#37327
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'useunit'
              Title.Caption = #21333#20301
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qe'
              Title.Caption = #37329#39069
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mryl'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'jsdh'
              Title.Caption = #21457#31080#21495
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfdh'
              Title.Caption = #22788#26041#21495
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'xh'
              Title.Caption = #27969#27700#21495
              Width = 48
              Visible = True
            end>
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 473
        Width = 1358
        Height = 158
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 3
        object dbgrd_yp: TDBGrid
          Left = 1
          Top = 1
          Width = 1356
          Height = 156
          Align = alClient
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#25340#38899#21152#21152
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -12
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDblClick = dbgrd_ypDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'YPBH'
              Title.Caption = #33647#21697#32534#21495
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ym'
              Title.Caption = #21517#31216
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gg'
              Title.Caption = #35268#26684
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grdchar'
              Title.Caption = #32452
              Width = 21
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usenum'
              Title.Caption = #25968#37327
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'useunit'
              Title.Caption = #21333#20301
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'zsl'
              Title.Caption = #25442#31639#25968#37327
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'zxdw'
              Title.Caption = #33647#25151#21333#20301
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'yl'
              Title.Caption = #27599#27425#37327
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qe'
              Title.Caption = #37329#39069
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfrq'
              Title.Caption = #22788#26041#26085#26399
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fyrq'
              Title.Caption = #21457#33647#26085#26399
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfdh'
              Title.Caption = #21333#21495
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'xh'
              Title.Caption = #24207#21495
              Visible = False
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #36864#33647#30003#35831#26597#35810
      ImageIndex = 1
      object grp3: TGroupBox
        Left = 0
        Top = 0
        Width = 1358
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label12: TLabel
          Left = 125
          Top = 15
          Width = 48
          Height = 13
          Caption = #21457#31080#21495#65306
        end
        object Label7: TLabel
          Left = 260
          Top = 15
          Width = 60
          Height = 13
          Caption = #24320#22987#26085#26399#65306
        end
        object Label3: TLabel
          Left = 436
          Top = 15
          Width = 60
          Height = 13
          Caption = #32467#26463#26085#26399#65306
        end
        object cbb_return: TComboBox
          Left = 14
          Top = 10
          Width = 107
          Height = 21
          ItemIndex = 0
          TabOrder = 0
          Text = #30003#35831#26410#36864#36153
          Items.Strings = (
            #30003#35831#26410#36864#36153
            #30003#35831#24050#36864#36153
            #20840#37096)
        end
        object Edt_zyh1: TEdit
          Left = 174
          Top = 10
          Width = 81
          Height = 21
          TabOrder = 1
        end
        object dtp_from: TDateTimePicker
          Left = 325
          Top = 10
          Width = 107
          Height = 21
          Date = 41612.000000000000000000
          Time = 0.405096620372205500
          TabOrder = 2
        end
        object dtp_to: TDateTimePicker
          Left = 502
          Top = 10
          Width = 109
          Height = 21
          Date = 41612.000000000000000000
          Time = 0.405377476861758600
          TabOrder = 3
        end
        object btn_search: TBitBtn
          Left = 624
          Top = 8
          Width = 75
          Height = 25
          Caption = #26597#35810
          TabOrder = 4
          OnClick = btn_searchClick
        end
        object BitBtn1: TBitBtn
          Left = 699
          Top = 8
          Width = 75
          Height = 25
          Caption = #25764#38144
          TabOrder = 5
          OnClick = N1Click
        end
      end
      object dbgrd_return: TDBGrid
        Left = 0
        Top = 41
        Width = 1358
        Height = 350
        Align = alTop
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenu1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = dbgrd_returnCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #24207#21495
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ksmc'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #31185#23460#21517#31216
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'zyh'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #20303#38498#21495
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'byxm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #30149#21592#22995#21517
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'applydate'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #30003#35831#26102#38388
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'applyopid'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #30003#35831#20154
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'affirmdate'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #36864#36153#26102#38388
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'affirmopid'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Caption = #36864#36153#20154
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 46
            Visible = True
          end>
      end
      object dbgrd_detail: TDBGrid
        Left = 0
        Top = 391
        Width = 1358
        Height = 240
        Align = alClient
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeName = #20013#25991' ('#31616#20307') - '#25340#38899#21152#21152
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenu2
        TabOrder = 2
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'YPBH'
            Title.Alignment = taCenter
            Title.Caption = #33647#21697#32534#21495
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ym'
            Title.Alignment = taCenter
            Title.Caption = #21517#31216
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gg'
            Title.Alignment = taCenter
            Title.Caption = #35268#26684
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'YLSJ'
            Title.Alignment = taCenter
            Title.Caption = #21333#20215
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mryl'
            Title.Alignment = taCenter
            Title.Caption = #25968#37327
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'zxdw'
            Title.Alignment = taCenter
            Title.Caption = #21333#20301
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qe'
            Title.Alignment = taCenter
            Title.Caption = #37329#39069
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ksbm'
            Title.Alignment = taCenter
            Title.Caption = #35760#36134#31185#23460
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'xm'
            Title.Alignment = taCenter
            Title.Caption = #21307#29983
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cfdh'
            Title.Alignment = taCenter
            Title.Caption = #21333#21495
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'byksbm'
            Title.Alignment = taCenter
            Title.Caption = #30149#21592#31185#23460
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cfys'
            Title.Alignment = taCenter
            Title.Caption = #21307#29983#32534#21495
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'admindoctor'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'roomid'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'xh'
            Title.Alignment = taCenter
            Title.Caption = #22788#26041#20869#37096#27969#27700#21495
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'groupid'
            Title.Alignment = taCenter
            Title.Caption = #32452#21495
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'team'
            Title.Alignment = taCenter
            Title.Caption = #21307#25216#32452#21495
            Width = 54
            Visible = True
          end>
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1366
    Height = 36
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 55
    Color = clBtnFace
    EdgeOuter = esRaised
    Images = il1
    ParentColor = False
    ShowCaptions = True
    TabOrder = 1
    object btn_SearchBill: TToolButton
      Left = 0
      Top = 0
      Action = act_SearchBill
    end
    object btnadd: TToolButton
      Left = 55
      Top = 0
      Caption = #22686#21152
      ImageIndex = 4
      OnClick = act_addExecute
    end
    object btn_AllReturn: TToolButton
      Left = 110
      Top = 0
      Action = act_AllReturn
    end
    object btn_audit: TToolButton
      Left = 165
      Top = 0
      Action = act_audit
    end
    object btnclear: TToolButton
      Left = 220
      Top = 0
      Action = act_clear
    end
    object btnclose: TToolButton
      Left = 275
      Top = 0
      Action = act_close
    end
    object btnSearchReturnTemp: TToolButton
      Left = 330
      Top = 0
      Action = act_SearchReturnTemp
      Visible = False
    end
    object ToolButton1: TToolButton
      Left = 385
      Top = 0
      Action = Act_print
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 212
    Top = 360
    object N2: TMenuItem
      Caption = #21333#26465#21024#38500
      OnClick = N2Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 172
    Top = 360
    object N1: TMenuItem
      Caption = #25972#21333#21024#38500
      OnClick = N1Click
    end
  end
  object actlst1: TActionList
    Images = il1
    Left = 48
    Top = 216
    object act_SearchBill: TAction
      Caption = #26597#35810
      ImageIndex = 17
      OnExecute = act_SearchBillExecute
    end
    object act_AllReturn: TAction
      Caption = #20840#36864
      ImageIndex = 2
      Visible = False
      OnExecute = act_AllReturnExecute
    end
    object act_audit: TAction
      Caption = #23457#26680
      ImageIndex = 3
      OnExecute = act_auditExecute
    end
    object act_clear: TAction
      Caption = #28165#23631
      ImageIndex = 19
      OnExecute = act_clearExecute
    end
    object act_close: TAction
      Caption = #36864#20986
      ImageIndex = 16
      OnExecute = act_closeExecute
    end
    object act_add: TAction
      Caption = #22686#21152
      ImageIndex = 4
      OnExecute = act_addExecute
    end
    object act_save: TAction
      Caption = 'act_save'
    end
    object act_SearchReturnTemp: TAction
      Caption = #26597#35810#20020#26102
      OnExecute = act_SearchReturnTempExecute
    end
    object Act_print: TAction
      Caption = #25171#21360
      ImageIndex = 15
    end
  end
  object il1: TImageList
    Left = 620
    Top = 2
    Bitmap = {
      494C010116001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000FDFDFD00FBFB
      FB00F7F7F700F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F7F7F700FAFA
      FA00FCFCFC000000000000000000000000000000000000000000F2F2F200D4D4
      D40087878700D3D3D300F5F5F500F3F3F300EEEEEE00E6E6E60087878700D4D4
      D400F2F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700DFDFDF000909
      8000C6C6C600C5C5C500BCBCBC00BBBBBB00BBBBBB00C5C5C500C5C5C5000606
      7F0022228B00EDEDED00000000000000000000000000EBEBEB0087878700F5F5
      F500EEEEEE00E9E9E90071BD9500DEDEDE00D3D3D300C4C4C400B3B3B300A4A4
      A40087878700D0D0D00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B0B81000B0B
      81000B0B810000000000000000000000000000000000000000000B0B81000B0B
      81000B0B81000B0B81000000000000000000FDFDFD00EBEBEB00FCFCFC00F3F3
      F300EEEEEE0093CCAF0064DE8A0052C07C0052AD7D00C5C5C500B4B4B400A5A5
      A500B3B3B300D6D6D600EDEDED00F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0B81000B0B81000B0B
      81000A0A81000C0C84000000000000000000000000000C0C85000C0C84000B0B
      82000B0B81000B0B8100000000000000000000000000F9F9F900F8F8F800F3F3
      F300EBEDEC0099ECB20080E59E006ADF8E0045D470004CAA7900B5B5B500A6A6
      A60098989800E8E8E800F3F3F300F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009999F4000A0A83000C0C
      84000D0D86000D0D89000E0E8A00000000000E0E89000E0E8A000D0D87000D0D
      87000C0C85000B0B820000000000000000000000000000000000F8F8F800BFE1
      D000EEEEEE00E8E8E8006DBB920085C0A100D6D6D6004CAA7900B6B6B600A7A7
      A70099999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009494F0000E0E
      89000D0D8D000F0F8D000F0F90000E0E8F000E0E90000F0F8E000F0F8E000E0E
      8C000E0E8A000000000000000000000000000000000000000000F7F7F700BEE1
      CF00AFD8C200E8E8E800E1E1E100DDDDDD00D7D7D700C8C8C8004AA87700A8A8
      A8009A9A9A008787870000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      F0001010920011119400111195001111960011119600111195000F0F92001010
      910000000000000000000000000000000000000000009C9C9C00F7F7F700F2F2
      F2009EE8B40088C8A70062D7870050AE7D00D8D8D800C9C9C900B8B8B800A9A9
      A9009B9B9B008787870000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009393F1001212970011119A0013139B0013139B0012129800121298000000
      0000000000000000000000000000000000000000000087878700F7F7F700F2F2
      F200A3D3BA0094E8AD0088E5A40081E7A10084D8A300CACACA00B9B9B900AAAA
      AA009C9C9C008989890000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000013139B0013139E0013139E0013139F001313A00013139F0013139D000000
      00000000000000000000000000000000000000000000B7B7B700F7F7F700F1F1
      F100ECECEC00E7E7E700A5EBBB0090C3A800DADADA00CBCBCB00BABABA00ABAB
      AB009D9D9D00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001313
      9C0013139F001414A2001313A4001515A4001515A5001414A2001212A0001313
      9E000000000000000000000000000000000000000000FDFDFD00F6F6F600F1F1
      F100ECECEC00E7E7E700E1E1E100DDDDDD00DBDBDB00CCCCCC00BBBBBB00ADAD
      AD009E9E9E00BCBCBC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000013139A001313
      9E001414A2001515A7001616A8001616AB001616A9001616A9001515A6001414
      A20013139D0000000000000000000000000000000000FDFDFD00F6F6F600F5F5
      F500FEFEFE00FBFBFB00E9E9E900CCCCCC00F1F1F100F9F9F900FCFCFC00AFAF
      AF009F9F9F00AFAFAF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001212990013139E001414
      A3001515A7001515AA001616AD00000000001B1BB2001717AC001616AA001515
      A4001212A00013139B00000000000000000000000000FCFCFC00B7B7B700A6A6
      A6009C9C9C00939393008D8D8D008C8C8C008E8E8E008A8A8A00878787008484
      8400BCBCBC009F9F9F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011119A0013139E001515
      A5001616A8001717AD000000000000000000000000001616B0001717AD001414
      A8001414A20013139E00000000000000000000000000EEEEEE00C0C0C000B8B8
      B800B1B1B100ABABAB00A7A7A700A6A6A600A8A8A800A1A1A100999999009494
      94008E8E8E00D9D9D90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001313A1001515
      A6001515AB0000000000000000000000000000000000000000001515AE001616
      A8001313A3009494F100000000000000000000000000D3D3D300D2D2D200CBCB
      CB00C6C6C600C1C1C100BFBFBF00BEBEBE00C0C0C000B7B7B700ACACAC00A4A4
      A4009C9C9C00C3C3C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      FE0000000000000000000000000000000000000000000000000000000000A8A8
      FE002E2EB400000000000000000000000000000000000000000087878700EBEB
      EB00EBEBEB00E0E0E000DADADA00DADADA00DADADA00D6D6D600D9D9D900D0D0
      D000979797000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1F1F100DFDFDF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000016191EFFF6F6F6FFFEFEFEFFFEFEFEFFF0F0F0FFFBFBFBFF0000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FCFCFC00FFFF
      FF00FAFAFA00F5F6F200F6F7F300F5F6F200F5F7F100F5F7F100F5F6F200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F6F000F3F5EF00F4F6F000F1F3
      ED00F3F5EF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00F9FBF500F3F5
      EF00F3F4F000F4F5F100F4F6F000F1F2EE00FEFEFE00F1F1F100E3E3E300D7D7
      D700CCCCCC00C2C2C2005BADBF00ACB7B900B9B9B900BEBEBE00C6C6C600D1D1
      D100DCDCDC00E8E8E800F7F7F70000000000000000000000000000000000E9E9
      E9FFFEFEFEFF25A5EAFFC3DDF5FF5C98ECFF0D9DEFFF00A6F1FF6FC4F6FFFEFE
      FEFFFCFCFCFF000000000000000000000000FFFFFF00202020002D2D2D00FDFD
      FD00FFFFFF00F4F5F100F4F7EE00EFF2E900F1F3ED00F6F8F200F5F6F200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F7F100F5F7F100F2F4EE00F8FA
      F400F5F6F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFDF700F5F7
      F100F4F7EE00F5F8EF00F5F7F100F4F5F100F3F3F300E4E4E400D4D4D400C6C6
      C600B8B8B800A0A7A90090E4EF004DD4E50005A4C7007EDBE9005AA7B800BFBF
      BF00CDCDCD00DBDBDB00EBEBEB00F9F9F9000000000000000000EEEEEFFFFEFE
      FEFF1099EEFF029EEFFF5D98EBFFA1C8F0FF5C98ECFF00A1F0FF069CEFFF1198
      EFFFFEFEFEFFD9D9D9FF000000000000000075757500CACACA00131313000B0B
      0B00FAFAFA00FAFBF700EFF3E800F5F7F100F2F4EE00F4F6F000F5F6F200FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F7F300EEF2E700EBEDE700BDBE
      BC000C0C0C00F8FAFB00FFFEFE00FFFEFF00FFFEFF00FAFFFC00F9FAF600F6F9
      F000EDF1E600EDF1E600F1F4EB00F4F5F100F7F7F700EAEAEA00DADADA00CDCD
      CD00C1C1C1006ADAE90001AFCE0036C2DA004FD7E80000A0C40053D5E60000A2
      C600D3D3D300E1E1E100F0F0F000FEFEFE0000000000E4E4E5FFF2F9FEFF0D9B
      EFFF00A2F0FF00A9F2FF00ACF3FF5E98EBFFA0C7F0FF5C98ECFF00A6F1FF00A1
      F0FF1199EEFFFEFEFEFFFCFCFCFF00000000FFFFFF00EAEAEA00CDCDCD001D1D
      1D000A0A0A00F6F7F500F4F8ED00EBEFE400F0EDE800FAF7F200F6F8F200FFFF
      FE00FFFFFF00FDFDFD00FFFFFF00FFFFFF00F6F7F300EEF2E700F5F7F100EFF0
      EE00C3C3C3000B0E0C00EBE3EA00FEF2EE00FEF2EE00DFDEDA00CDCDCD00E1E2
      DE00F3F5EF00F2F4EE00F1F4EB00F4F5F1000000000000000000F2F2F200E9E9
      E900E0E0E00015C6DD0011CBE3001DD3EB0062E0EF0055D7E80003BDD70053D5
      E6008CE0EC0021ABCA00000000000000000000000000FEFEFEFF109AEFFF00A2
      F0FF00ABF2FF21AAEDFF00B3F5FF00B4F5FF5F99EBFFA0C7F0FF5C98ECFFFFFF
      FFFF1A6FCDFF1691EDFFFEFEFEFF00000000FFFFFF00FFFFFF0070707000CECE
      CE001D1D1D0003040200F8F9F500F7F8F400474A48005659570098999700FDFC
      FE00FFFFFF00FEFEFE00FFFFFF00FFFFFF00F5F8EF00DFE0DC00C7D5DB0089D6
      D90061B3BF003E443F0034303B0064DEF40062ABB9005792A20054D6E3006ED8
      E900AED8E400D4BEC000F2F4EE00F4F5F1000000000000000000000000000000
      000000A0C4000BBDD80026D9F0002FDEF60018C7E20002A6C80004C2DA0000A3
      C60053D5E60000A1C5000000000000000000E2E2E3FF1980E9FF009FF0FF00AA
      F2FFFFFFFFFFFFFFFFFFFFFFFFFF00B8F6FFFFFFFFFF5F9AEBFF9FC7F0FF5C98
      ECFFFFFFFFFF089CEFFF75B7F3FFFAFAFAFFF8F9F700F9FAF600F9FAF600EBEC
      EA00C5C6C400D2D1CD006F6D6D008D7D6C00FFEBD200FFF2D900D9C1AD004135
      2F004E4D4900F1F6F700F7F8F400FAFAFA00F6F7F300BBBBBB006CD5E30082DC
      F40079E5F70068919A00FBF6F30021121000C4C8C200C7CDCC00D9C8CB0065A2
      AC0078D4ED008BCFDC00F0F1EF00F4F5F1000000000000000000000000000000
      000000A0C40022D2EB0020C6E3003BE2FA004CD9ED0007C5DD0001ACCC00A3E8
      F1004CBCD500000000000000000000000000FEFEFEFF1487EBFF02A3F1FF00AE
      F3FFFFFFFFFFFFFFFFFFFFFFFFFF00A0F0FFFFFFFFFFFFFFFFFF619AEBFF9FC5
      F0FF5C98ECFF25AEF3FF177AE8FFE4E4E5FFF4F6F000F8F9F500F8F9F500F2F4
      EE00F1F3ED0047424100EFD7BB00F7E6D300FCE9D400FFEED900FFEAD500F0E5
      D1008D7A65003D414600F9FAF600F6F7F300EDF1E600CACBC900B4D3CC00B9CE
      C500F0D1BC00F7D5BD0004090800FFF2E600FBF0E800F8F4E900F8ECE8008979
      7300B6C0B300BE8D7300ECF0EA00ECEEE8000000000000000000000000000000
      000059D4E80041E6FD005CEAFD0048E7FD0021D5ED0002B8D300A3E8F1000000
      000000000000000000000000000000000000FEFEFEFF109AEFFF32B7F4FF00B0
      F4FF1B8CEBFF7FB6EAFF1594EDFF1E9BEFFFFFFFFFFFFFFFFFFF198FECFF629B
      EBFF9EC5F0FF5C98ECFF148CECFFF4F4F4FFF6F7F300FFFFFF00FCFDF900FBFC
      FA0084858300C5A78E00F5DFC600FDE7CE00FFEAD100FFEAD100FFEAD100F9E3
      CA00F1D3B60030312800FFFFFE00F6F7F300EEF2E700C9CAC800D2A99000E7C3
      A500F5D3BB00E4D9BB0042403F00FEF0DD00F9F2E100FEF0E400FDF0E200F3D3
      C600A4907F00AB937B00EBF0E700ECF0E5000000000000000000000000000000
      A400000069005CE8FC0056DCF0003ADFF60016CCE60097E6F000000000000000
      000000000000000000000000000000000000FEFEFEFF109AEFFF32B7F4FF4799
      EEFF1A85EAFF1A89EBFFFFFFFFFFFFFFFFFFFFFFFFFF1A85E4FFA1CFF7FFFFFF
      FFFF629BEBFF9EC4F0FFBDAF97FFF4F4F4FFF9FAF600FEFEFE00F7F8F400FFFF
      FE0045464400E5BE9E00F8E0C400FEE6CA00FFE7CB00FFE7CB00FFE7CB00FCE4
      C800F1D4B900B7977400FCFDFB00F6F7F300EDF1E500CACBC900D3AA8A00E0C4
      A600A9CCA40030A86D005A514400C8E0C200C9E6CC00F2F2E400FEF1E100E8CE
      B6009C877200BE977700EDEDE700EEF1E8000000000000000000000000000000
      69001616D1004747F1004563A60057E6F80000A0C40000000000000000000000
      000000000000000000000000000000000000FEFEFEFF1386E6FF4490E9FF4494
      EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A75D5FF2D8EEBFFFFFFFFFFFFFF
      FFFF4393ECFFF2EEE9FFEEE9E2FF1B229AFFF5F6F200FAFBF90000000000FAFB
      F90042434100E6BD9C00F6DABC00FEE2C400FFE3C500FFE3C500FFE3C500FCE0
      C200F5D3B500C59C7B00FFFFFC00F6F7F300EDF1E500C6C7C500C3C1BE00C6C6
      C600D4CED400D4D1CD0025251C0098B9A200D0D3CB00E2DEDB00FEF5EC00C2AE
      9C00DADBD900EDE4E100EEEEE800EDF0E700000000000000000026BBD50030D4
      E9006BECFD00080877003131DB00000069000000000000000000000000000000
      000000000000000000000000000000000000E2E2E3FF1768D6FF458AE3FF448E
      E7FF4490EBFFD4E5F7FF4091EAFF4596EDFF4596EDFFFFFFFFFFFFFFFFFF498D
      D8FF448DE7FF4589E2FF1B229AFF21289CFFF4F5F300F4F5F100F4F5F100F1F2
      EE0042433F00D4AD8600F5CDB100F8DCBA00FFE0BF00FFE1C000FFDEC000FAD8
      BA00F2C8A50087615500F8F9F700F6F7F30000000000E1FFFF00E1FFFF00E1FF
      FF00E1FFFF00E1FFFF00E1FFFF00E1FFFF00E1FFFF009E968F00FFF9EB008F8E
      8A00EEE4DA00E3D9CF00EDEDE70000000000000000000000000000000000156F
      A6004CCBE2007EEFFD0054BFD600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFF1D6BD5FF4588
      E0FF448BE3FF4990E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAECDEEFF458A
      E3FF4587DFFF1766D2FFFEFEFEFF00000000FFFEFF00FFFFFF00FFFFFF00FCFC
      FC00FFFFFF005E473F00FBDDC000F7D4B300FCD9B800FDDAB900F8D6B800E7C5
      A700CFA68600575C5D00FFFEFF00FFFFFF0000000000E1FFFF00E1FFFF00E1FF
      FF00E1FFFF00E1FFFF00E1FFFF00E1FFFF00E1FFFF0048454600DFE3E400F9E6
      D700ECDFCF00E1D4C400EDEDE700EEF1E8000000000000000000085E94000E72
      B000166EA50003A1C40000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0E0E1FF3680DAFF4280
      D8FF4585DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4488E0FF4586DFFF4585
      DCFF2E71D3FFFEFEFEFFDBDBDCFF00000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00736F6E00AC7D6200FFF9DD00EEC6AD00ECC4AB00F4DFC400CC9A
      7E00504B4A00EAE6E500FFFFFF00FFFFFF0000000000E1FFFF00E1FFFF00E1FF
      FF000000000000000000E1FFFF0000000000E1FFFF00C7BBA600FBE5D300FAE3
      CD00F1DCC700E5D0BB00F8F8F200F4F5F10000000000C7DAE500107DC1000F7A
      BD006E9FBE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEEEEFFF367E
      D8FF1E64CDFF4681D7FF4681D8FF4582D9FF4582D9FF4681D8FF4680D7FF1960
      CBFFF0F6FDFFD9D9D9FF0000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFEFC009D9491009EA3A100453D3000554D40005A574F008C81
      8900FFFFFE00FDFFFE00FFFFFF00FFFFFF0000000000E1FFFF00E1FFFF00E1FF
      FF00E1FFFF00E1FFFF0000000000E1FFFF00E1FFFF00D3D3D300E0DFE100EEEF
      ED00E4DFD600D7CCB000EDEEEC00F4F5F1000000000075B4DB00107DC10063AA
      D700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDDD
      DDFFFEFEFEFF185AC3FF185BC5FF185BC5FF185BC5FF185BC5FF1859C2FFFEFE
      FEFFD2D2D3FF000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5F6F200F0F2EC00E6E8E200EEF2E600F7F9F300F4F5F100FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F5EF00F0F2EC00F5F5F500E9F0
      E100F3F4F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFC00F3F5
      EF00EFF5EA00F3F2F400F1F3ED00F4F5F100000000001A6FA30002598F001163
      9600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9D9D9FFF6F6F6FFFEFEFEFFFEFEFEFFF0F0F0FFD0D0D1FF0000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5F6F200F4F6F000F5F7F100F4F6F000F7F8F600F4F5F100FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F7F100EDF1E600F5F9EE00EEF2
      E700F5F7F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFCF600F5F7
      F100EFF3E800F0F4E900F2F4EE00F4F5F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3934003934
      3000332F2B002C29250027242100201D1B00333130000B0A0900070706000404
      03000000000000000000000000000000000045A35F0043A15D00419F5B003C9B
      580039975600369553002F8F4E002C8B4B0027884800238344001E7F40001A7B
      3C0015783A00117335000E7134000C6F32000000000000000000000000000000
      000000000000EFEFEFFFF6F6F6FFFEFEFEFFFEFEFEFFF0F0F0FFFBFBFBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B4E0F0FF8BCFE9FF8BCFE9FF8BCFE9FF7DA7
      BDFF00000000000000000000000000000000000000000000000046413B00857A
      7000C3B8AE007C7268007F756B0036322D004C4A470095897D00BAAEA2007C72
      68007F756B000101010000000000000000006A957E0053786800527767005175
      66004F7365004F7163004D6E61004B6C5F004A695E0048675D0047645A004662
      5A0045605800435E5700425C5500025B2000000000000000000000000000E9E9
      E9FFFEFEFEFF70D19FFF74D5A9FF36C17EFF3BC280FF74D5A9FF9DDFBAFFFEFE
      FEFFFCFCFCFF000000000000000000000000000000008BCFE9FF8BCFE9FF8BCF
      E9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF93D0E7FF7DA8
      BEFF0000000000000000000000000000000000000000000000004D4741008378
      6F00CCC3BA00786F65007B71670034302D002C2A270095897D00C2B8AD00786F
      65007C7268000605050000000000000000006B967F00E8F2E900E6F1E700E4EF
      E300E2EEE100E0ECE000DDEBDD00DCE9DB00DAE8D900D8E8D800D5E7D600D5E6
      D400D3E5D300D1E4D100D0E3D100055D22000000000000000000EEEEEFFFFEFE
      FEFF27BD78FF24C183FF24C183FF24C183FF24C183FF24C183FF24C183FF46C3
      83FFFEFEFEFFD9D9D9FF0000000000000000000000008CD1EBFFE0DCD6FFE0DC
      D6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFA8D5E4FF7EAA
      C0FF000000000000000000000000000000000000000000000000554E48008378
      6F00CCC3BA007970660071685F005855500049464500857A7000C2B8AD00786F
      65007B7167000D0C0B0000000000000000006C988000EBF3EB00EAF2E900E7F0
      E700E5EFE500E3EEE200E0ECDF00DEEBDE00DCEADC00DBE9DA00D8E7D800D7E7
      D700D5E6D500D3E5D300D2E4D2000861250000000000E4E4E5FFF5FBF7FF25BF
      7EFF24C183FF24C183FF24C183FF26C385FF3E9100FF24C183FF24C183FF24C1
      83FF27BD78FFFEFEFEFFFCFCFCFF00000000000000008CD2EBFFE3DFD9FFE3DF
      D9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFA9D7E5FF7EAB
      C2FF000000000000000000000000000000000000000000000000554E48008378
      6F00CCC3BA007970660071685F005855500049464500857A7000C2B8AD00786F
      65007B7167000D0C0B0000000000000000006E988100EDF5ED00EBF3EC00E9F2
      E900E6F0E700E5EFE400E1EEE200E0ECE000DEEBDE0022542100337235002B6C
      2D00246525001C5E1D00D3E5D3000A63270000000000FEFEFEFF26BE79FF24C1
      83FF24C183FF24C183FF26C385FFFFFFFFFFFFFFFFFF3E9100FF24C183FF24C1
      83FF24C183FF3EBC73FFFEFEFEFF00000000000000008CD3EBFFE5E2DDFFE5E2
      DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFAAD8E7FF7EAC
      C4FF000000000000000000000000000000000000000000000000817B76009F92
      8600CCC3BA00C0B4AA00A6988B00807D790074726F0090847900C2B8AD00C0B4
      AA00A89B8E00494747000000000000000000719B8200DBE9DA0088D0920077BE
      7F006BB4710063AD640060AC61004E8F4E00338938005CAB6300378F4900338B
      47002E7D3F00D7E7D700D5E5D4000E682C00E2E2E3FF48B763FF24C183FF24C1
      83FF24C183FF25C284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E9100FF24C1
      83FF24C183FF24C183FF8BD39EFFFAFAFAFF000000008DD5EDFFE8E5E0FFE8E5
      E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFABDBE9FF7EAE
      C7FF0000000000000000000000000000000000000000FCFCFC0060595200423D
      380058514A003D383300332F2B00393734005F5E5C001A181600252220001917
      15000F0E0D0012121200FDFDFD0000000000729C8300F2F7F200DBE9DA006FB9
      7A0067B26F005DA960004C924E003B8F400068B16D00469A51003A914B002A7A
      370018491E00D8E8D800D6E7D700116B2E00FEFEFEFF37B763FF25C284FF24C1
      83FF25C284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E91
      00FF24C183FF44CB95FF3BB255FFE4E4E5FF000000008DD6EDFFEBE8E4FFEBE8
      E4FFEBE8E4FFEBE8E4FFCCCCCCFFEBE8E4FFEBE8E4FFEBE8E4FFACDCEAFF7EB0
      C8FF0000000000000000000000000000000000000000FDFDFD009D918500B1A3
      96007F756B007C726800776D64006C635B00564F480080766C007C726800776D
      640070675E0001010100FAFAFA0000000000749E8500F4F8F400F2F7F2004F93
      4E0068B2720058A35E004397490073BB7A0053A358004A9D530030813800337D
      3B00388C4900B5D1B600D8E7D700156E3100FEFEFEFF26BE7AFF4FCF9CFF26C2
      84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF3E9100FF4FCF9CFF2CB661FFF4F4F4FF000000008DD6EDFFEEEBE8FFEEEB
      E8FFEEEBE8FFEEEBE8FFEEEBE8FFC9DDF0FF3E87EAFFEEEBE8FFADDDECFF7EB1
      C9FF0000000000000000000000000000000000000000FEFDFD00B8ACA100BAAE
      A20082776D0082776D00AA917B00BAA79400B09781009F8D7D00836D5B007163
      570095897D0023232200FCFCFC000000000077A08800F7FAF700F5F9F400F2F7
      F200DBE9DA0052A2570063B066005FAD610058A75B004D8B4E00E2EEE300E0ED
      E000DFEBDF00DCEBDD00DAE9DB001A743500FEFEFEFF26BE7AFF4FCF9CFF8DD3
      9EFFFFFFFFFFFFFFFFFF60C485FFFFFFFFFFFFFFFFFF55B45AFFFFFFFFFFFFFF
      FFFF3E9100FF4FCF9CFF2CB45EFFF4F4F4FF000000008ED7EDFFF0EEEBFFF0EE
      EBFFF0EEEBFFF0EEEBFFF0EEEBFFEEEDEAFFA7CBF0FF3E87EAFFAFDFEDFF7EB2
      CBFF0000000000000000000000000000000000000000FDFCFC00DDDAD7009B8E
      82009D918500867B7100564F4800504A44006E665D00826C5800A6917D009484
      7400564F48008B8A8A00FEFEFE000000000079A28800F8FAF700F6FAF600F4F8
      F3005BA960008FCD970067B26B0062AF65005A9A5B0054A35F009CC49C00E2EE
      E300E1EDE100DEECDE00DCEADC001D773800FEFEFEFF2DB052FF5BBB66FF60C1
      74FF8AD39AFF6FC886FF5BBF77FFFFFFFFFFFFFFFFFF54B254FF6DC784FF4196
      0BFF5EC071FF5BBA65FF359F23FFE4E4E5FF000000008ED9EFFFF3F1EFFFF3F1
      EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFE4E5E8FFA7CBF0FF3F88EAFF7EB4
      CDFF00000000000000000000000000000000000000000000000000000000746B
      6200A4978A0095897D009F9286003E3934004C4640007E746A00857A70003E39
      340085817E00F5F5F500FDFDFD00000000007BA48B00F9FCF900F8FBF80063B0
      680094D19A0073BC7A006AB56F0060A2630054A35F0065B4740057815A009CC4
      9C00E3EEE300E0ECDF00DEEBDE00217A3B00E2E2E3FF359800FF5CB351FF5CB9
      61FF5BBD6CFF60C174FF63C278FFFFFFFFFFFFFFFFFF58B353FF5FC074FF5BBD
      6AFF5CB85EFF5DB14DFF43A423FFE6E6E6FF000000008FDAEFFFF5F3F1FFF5F3
      F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFCFD6E0FFA8CCF0FF4088
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000000000009B918700C3B8AE00655D55007C726800A89B8E00A69B90000000
      0000000000000000000000000000000000007EA68C00FBFDFC006BB6710081C7
      8C007EC4870079C0810061946600E7EDE70070B4770078C1880065B3730054A3
      5F000B610600E3EEE300E1EDE000257F3F0000000000FEFEFEFF3A9907FF5DB0
      48FF5CB455FF5CB85FFF5BBA63FFFFFFFFFFFFFFFFFF52AD44FF5CB75DFF5CB3
      52FF5DAE42FF359500FFFEFEFEFF00000000000000008FDBEFFFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FF91BBD8FFA9CD
      F0FF4189EAFF0000000000000000000000000000000000000000000000000000
      0000000000009B918700C3B8AE00655D55007C726800A89B8E00A69B90000000
      0000000000000000000000000000000000007FA78D006DB772009AD4A0008ACC
      960088CA920078B68100F4F9F400F2F7F200DBE5DB0078B87F007BC289006EB7
      7B005EA86800E5F0E400E3EEE3002781410000000000E0E0E1FF4FA536FF5CA6
      2FFF5DAB32FF5DAE3CFF5DB048FFFFFFFFFFFFFFFFFF53A631FF5DAD37FF5DAB
      32FF499B18FFFEFEFEFFDBDBDCFF00000000000000008FDBF0FFFAF9F8FFFAF9
      F8FFFAF9F8FFFAF9F8FFFAF9F8FFFAF9F8FFFAF9F8FFFAF9F8FFB3E5F3FF729E
      C9FFAACDF0FFA09C92FF00000000000000000000000000000000000000000000
      000000000000A79C9100BCB0A4009D918500AEA093009D9185007B756E000000
      00000000000000000000000000000000000081A98F00FEFEFE00FDFEFD00FBFD
      FC00FAFCFA00F9FBF800F7FAF600F5F9F500F3F8F300F1F7F100EFF5EE00ECF4
      EC00EBF3EB00E8F1E800E5EFE5002A8444000000000000000000EEEEEFFF4FA2
      36FF3B9007FF5EA532FF5EA632FF5EA832FF5EA732FF5EA632FF5EA532FF378D
      01FFF2F9F2FFD9D9D9FF00000000000000000000000090DCF1FF90DCF1FFD9DA
      DAFFE2E2E3FFDDDDDDFFCFCFD0FFBEBFBFFFB0B1B2FF90DCF1FF90DCF1FF7EBA
      D5FF99A1AAFFD7CDBCFF3F45AAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081AA8F00FFFFFF00FEFFFE00FDFD
      FD00FCFDFC00FAFCFA00F8FBF800F6FAF700F4F9F500F3F7F300F0F6F000EEF5
      EF00ECF4EC00E9F2EA00E7F1E7002D874600000000000000000000000000DDDD
      DDFFFEFEFEFF368700FF368700FF368800FF368800FF368700FF368700FFFEFE
      FEFFD2D2D3FF000000000000000000000000000000000000000000000000EEEE
      EEFFF7F7F7FFE9E9E9FFD4D4D5FFC2C3C3FFB2B3B4FF00000000000000000000
      0000000000003C42ACFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081AA900081A9900080A88E007EA6
      8D007DA68C007AA38B0079A1880076A08700759F8600739D8400719A82006E9A
      81006D9781006B967F006B957F002E8847000000000000000000000000000000
      000000000000D9D9D9FFF6F6F6FFFEFEFEFFFEFEFEFFF0F0F0FFD0D0D1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4E4E5FFD2D2D3FF000000000000000000000000000000000000
      000000000000000000000000000000000000D9D4CDFFDBD6CFFFDBD6CFFFDCD7
      D0FFDCD7D0FFDBD6CFFFDBD6CFFFD9D3CCFFD7D2CAFFD5CFC7FFD3CCC3FFD0CA
      BFFFCDC5BBFF000000000000000000000000D9D4CDFFDBD6CFFFDBD6CFFFDCD7
      D0FFDCD7D0FFDBD6CFFFDBD6CFFFD9D3CCFFD7D2CAFFD5CFC7FFD3CCC3FFD0CA
      BFFFCDC5BBFF0000000000000000000000000000000000000000000000000000
      0000DAC3AFFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDAD3FFDFDBD5FFE0DCD6FFE1DD
      D7FFE1DDD7FFE0DCD6FFDFDBD4FFDDD9D2FFDCD7D0FFD9D4CDFFD7D1C9FFD4CE
      C5FFD1CBC1FF000000000000000000000000DEDAD3FFDFDBD5FFE0DCD6FFE1DD
      D7FFE1DDD7FFE0DCD6FFDFDBD4FFDDD9D2FFDCD7D0FFD9D4CDFFD7D1C9FFD4CE
      C5FFD1CBC1FF0000000000000000000000000000000000000000000000000000
      0000EBD4BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2DFD9FFE4E1DCFF939191FFB1AE
      ACFF868586FF9B9A99FFA8A6A5FFB3D2F4FFDDDAD6FFDDD9D2FFDBD6CFFFD8D3
      CBFFD5CFC7FF000000000000000000000000E2DFD9FFE4E1DCFF939191FFB1AE
      ACFF868586FF9B9A99FFA8A6A5FFB3D2F4FFDDDAD6FFDDD9D2FFDBD6CFFFD8D3
      CBFFD5CFC7FF0000000000000000000000000000000000000000000000000000
      0000EAD2B5FFE9E6E2FFE9E6E2FFE9E6E2FFE9E6E2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000419202FF3E91
      00FF3E9100FF3E9100FF3E9100FF3E9100FF3E9100FF3B67B3FF3E9100FF3E91
      00FF3E9100FF3E9100FF3E9100FF00000000E7E4E0FFE9E6E2FFEAE7E3FFEBE8
      E4FFEBE8E4FFEAE7E3FFE9E6E2FF71A8EDFF8CB9EEFFE0DDD7FFDFDBD4FFDCD7
      D0FFD8D3CBFF000000000000000000000000E7E4E0FFE9E6E2FFEAE7E3FFEBE8
      E4FFEBE8E4FFEAE7E3FFE9E6E2FF71A8EDFF8CB9EEFFE0DDD7FFDFDBD4FFDCD7
      D0FFD8D3CBFF0000000000000000000000000000000000000000000000000000
      0000EAD0B0FFCEC7BCFFCEC7BCFFCEC7BCFFCEC7BCFFFFFFFFFFEFEFEFFFEFEF
      EFFFEFEFEFFFFFFFFFFFD7D1CAFFFFFFFFFF00000000419303FFDBDBDBFF3E91
      00FF3D9308FF3E9100FF3E9100FF3E9100FF3E9100FF3B66B6FF3E9100FF3E91
      00FF3E9100FF3E9100FF3E9100FF3E9100FFECE9E6FFEDEBE8FF9D9C9DFFBAB9
      B9FFAFAEAEFFEFEDEAFF9D9C9CFFD1CFCDFF73A9EDFF8AB8EEFFE2DFD9FFDFDB
      D5FFDCD7D0FF000000000000000000000000ECE9E6FFEDEBE8FF9D9C9DFFBAB9
      B9FFAFAEAEFFEFEDEAFF9D9C9CFFD1CFCDFF73A9EDFF8AB8EEFFE2DFD9FFDFDB
      D5FFDCD7D0FF0000000000000000000000000000000000000000000000000000
      0000E9CEA9FFC4BCB0FFC4BCB0FFC4BCB0FFC4BCB0FFFFFFFFFFEFEFEFFFEFEF
      EFFFEFEFEFFFFFFFFFFFC9C0B5FFFFFFFFFF60A42DFFE7E8E8FFE4E4E4FF93D0
      9AFF93D09AFF93D09AFF93D09AFF93D09AFF93D09AFF476286FF93D09AFF93D0
      9AFF93D09AFF93D09AFF93D09AFF93D09AFFF0EEEBFFF2F1EFFFF4F2F1FFF4F3
      F2FFF4F3F2FFF3F2F0FFF2F0EEFFEFEEEBFFEDEBE7FF74ABEDFF88B7EEFFE2DF
      D9FFDEDAD3FF000000000000000000000000F0EEEBFFF2F1EFFFF4F2F1FFF4F3
      F2FFF4F3F2FFF3F2F0FFF2F0EEFFEFEEEBFFEDEBE7FF74ABEDFF88B7EEFFE2DF
      D9FFDEDAD3FF000000000000000000000000DDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFE8CDA3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1A3FFFFFFFFFFE5E5E5FFE5E5
      E5FFE5E5E5FFFFFFFFFFBAB1A3FFFFFFFFFF00000000EAEAEAFFAC7D6AFF6066
      0BFF60660BFF60660BFF60660BFF60660BFF60660BFF567BC1FF567BC1FF5F66
      0BFF5F660BFF5F660BFF5F660BFF00000000F4F3F2FFF7F6F5FFF9F8F7FFF9F8
      F8FFF9F8F8FFD2D2D2FFDBDADAFFF2F0F0FFF1EFECFFDAD8D5FF76ACEDFF86B6
      EEFFE1DDD8FF000000000000000000000000F4F3F2FFF7F6F5FFF9F8F7FFF9F8
      F8FFF9F8F8FFD2D2D2FFDBDADAFFF2F0F0FFF1EFECFFDAD8D5FF76ACEDFF86B6
      EEFFE1DDD8FF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE7CB9CFFB1A798FFB1A798FFB1A798FFB1A798FFFFFFFFFFE5E5E5FFE5E5
      E5FFE5E5E5FFFFFFFFFFAEA494FFFFFFFFFF00000000A5785EFFD8D8D9FF8337
      17FF6D5A4BFF833717FF833717FF833717FF833717FF698BCBFF698BCBFF8337
      17FF833717FF833717FF833717FF833717FFF8F7F6FFFBFBFBFFC9C9CAFFFBFB
      FBFFFDFDFDFFFDFDFDFFFAFAFAFFE9E8E8FFF0EEEDFFF0EEEBFFECEAE7FF78AD
      EDFF85B5EEFF000000000000000000000000F8F7F6FFFBFBFBFFC9C9CAFFFBFB
      FBFFFDFDFDFFFDFDFDFFFAFAFAFFE9E8E8FFF0EEEDFFF0EEEBFFECEAE7FF78AD
      EDFF85B5EEFF000000000000000000000000FFFFFFFFD7D1C9FFD7D1C9FFD7D1
      C9FFE7C990FFA89E8EFFA89E8EFFA89E8EFFA89E8EFFFFFFFFFFDADADBFFDADA
      DBFFDADADBFFFFFFFFFFA39988FFFFFFFFFFA8A979FFE6E6E7FFD6D7D7FFBF8B
      78FFBF8B78FFBF8B78FFBF8B78FFBF8B78FFBF8B78FF7C9CD4FF898E97FFBF8B
      78FFBF8B78FFBF8B78FFBF8B78FFBF8B78FFFBFBFBFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFBFFF7F6F5FFF3F2F0FFEEECE9FFEAE7
      E3FF79AEEDFF83B4EEFF0000000000000000FBFBFBFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFBFFF7F6F5FFF3F2F0FFEEECE9FFEAE7
      E3FF79AEEDFF83B4EEFF0000000000000000FFFFFFFFCBC3B8FFCBC3B8FFCBC3
      B8FFE6C784FFA19685FFA19685FFA19685FFA19685FFFFFFFFFFDBDBDBFFDBDB
      DBFFDBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFF00000000EDEDEDFFDADBDBFF8439
      1CFF84391CFF84391CFF84391CFF84391CFF84391CFF92AFDEFF8FACDDFF8337
      17FF833717FF833717FF833717FF00000000FDFDFDFFFDFDFDFFFAFAFAFFFEFE
      FEFFD9D9DAFFFDFDFDFFB7B8B9FFE6E6E7FFCACACBFFF5F4F2FFF0EEEBFFECE9
      E6FFE7E3DFFFF2EFEBFFE0D9CFFF00000000FDFDFDFFFDFDFDFFFAFAFAFFFEFE
      FEFFD9D9DAFFFDFDFDFFB7B8B9FFE6E6E7FFCACACBFFF5F4F2FFF0EEEBFFECE9
      E6FFE7E3DFFFF2EFEBFFE0D9CFFF00000000FFFFFFFFBFB6AAFFBFB6AAFFBFB6
      AAFFE5C584FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000006C63B6FFD9D9DAFF2D20
      9AFF274DB3FF2D209AFF2D209AFF2D209AFF2D209AFFAFC7EAFFAEC7EAFF2D20
      9AFF2D209AFF2D209AFF2D209AFF2D209AFFFDFDFDFFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFBFBFBFFF6F5F4FFF1F0EDFFECEA
      E7FFE7E4E0FF000000001B229AFF00000000FDFDFDFFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFBFBFBFFF6F5F4FFF1F0EDFFECEA
      E7FFE7E4E0FF000000001B229AFF00000000FFFFFFFFB7AD9EFFB7AD9EFFB7AD
      9EFFCC9835FFD1AD67FFD1AD67FFD1AD67FFD1AD67FFD1AD67FFD1AD67FFD1AD
      67FFD1AD67FFD1AD67FFD1AD67FFD1AD67FF7168BAFFE6E6E7FFDFE0E0FF7267
      C3FF7267C3FF7267C3FF7267C3FF7267C3FF7267C3FFD4E2F5FFD4E2F5FF7267
      C3FF7267C3FF7267C3FF7267C3FF7267C3FFFDFDFDFFFDFDFDFFC0C0C2FFBEBE
      BFFFB9B9BBFFEEEEEEFFBEBEC0FFFDFDFDFFDBDBDCFF959597FFF2F0EEFFEDEB
      E7FFE8E5E1FF000000000000000000000000FDFDFDFFFDFDFDFFC0C0C2FFBEBE
      BFFFB9B9BBFFEEEEEEFFBEBEC0FFFDFDFDFFDBDBDCFF959597FFF2F0EEFFEDEB
      E7FFE8E5E1FF000000000000000000000000FFFFFFFFADA292FFADA292FFADA2
      92FFC37F00FFC37F00FFC37F00FFC37F00FFC37F00FFC37F00FFC37F00FFC37F
      00FFC37F00FFC37F00FFC37F00FFC37F00FF00000000E6E6E6FFDFE0E5FF5C47
      B9FF5C47B9FF5C47B9FF5C47B9FF5C47B9FF5C47B9FF476EBAFF302A9EFF2D20
      9AFF2D209AFF2D209AFF2D209AFF00000000FDFDFDFFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFBFBFBFFF7F6F5FFF2F0EEFFD1CD
      C5FFFEFEFEFF000000000000000000000000FDFDFDFFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFBFBFBFFF7F6F5FFF2F0EEFFD1CD
      C5FFFEFEFEFF000000000000000000000000FFFFFFFFA49A89FFA49A89FFA49A
      89FFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      000000000000000000000000000000000000000000007F78BFFF9F9DDAFF9F9D
      DAFF9F9DDAFF9F9DDAFF9F9DDAFF2D209AFF7A99D3FF2D209AFF2D209AFF2D20
      9AFF2D209AFF2D209AFF0000000000000000FDFDFDFFFDFDFDFFFDFDFDFFFEFE
      FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFAF9F9FFECEAE7FFFFFFFFFFF1EF
      EDFF00000000000000000000000000000000FDFDFDFFFDFDFDFFFDFDFDFFFEFE
      FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFAF9F9FFECEAE7FFFFFFFFFFF1EF
      EDFF00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000002F229BFFE1E1F6FFE1E1F6FFE1E1
      F6FFE1E1F6FFD2D1EFFF2D239CFFCBDCF3FF2D209AFF2D209AFF2D209AFF2D20
      9AFF2D209AFF000000000000000000000000FDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFBFFF7F6F5FFD5D1CCFFEBE9E6FF0000
      000000000000000000000000000000000000FDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFBFFF7F6F5FFD5D1CCFFEBE9E6FF0000
      000000000000000000000000000000000000DDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F8F8FFFCFCFCFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFBFBFBFFF9F8F7FFF5F4F2FFE3E0DCFF000000000000
      000000000000000000000000000000000000F9F8F8FFFCFCFCFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFBFBFBFFF9F8F7FFF5F4F2FFE3E0DCFF000000000000
      000000000000000000000000000000000000C48000FFC48000FFC48000FFC480
      00FFC48000FFC48000FFC48000FFC48000FFC48000FFC48000FFC48000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEFFFF6F6F6FFFEFEFEFFFEFEFEFFF0F0F0FFFBFBFBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009289
      78FFBDAD95FFCBBCA8FFDDD3C5FFEDE8E2FFFFFFFFFF918878FF000000000000
      000000000000000000003E3D3BFF00000000DABBA0FFDABBA0FFDABBA0FFDABB
      A0FFDABBA0FFDABBA0FFDABBA0FFDABBA0FFDABBA0FFDABBA0FFDABBA0FFDABB
      A0FFDABBA0FFDABBA0FFDABBA0FFD8AE89FF000000000000000000000000E9E9
      E9FFFEFEFEFF70D19FFF74D5A9FF36C17EFF3BC280FF74D5A9FF9DDFBAFFFEFE
      FEFFFCFCFCFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8F7FF0000000000000000000000000000
      00000000000000000000000000000000000000000000998767FFA39273FFB09F
      84FFBDAD95FFCBBCA8FFDDD3C5FFEDE8E2FFFFFFFFFFF3F0EBFFE7E1D7FFD4C9
      B7FF0000000051504EFF191A1DFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE4C2A3FF0000000000000000EEEEEFFFFEFE
      FEFF27BD78FF24C183FF24C183FF24C183FF24C183FF24C183FF24C183FF46C3
      83FFFEFEFEFFD9D9D9FF00000000000000000000000000000000000000000000
      00000000000000000000BBB2A5FF000000000000000000000000000000000000
      000000000000000000000000000000000000C8C0AFFF998767FFA39273FFB09F
      84FFBDAD95FFCBBCA8FFDDD3C5FFEDE8E2FFFFFFFFFFF3F0EBFFE7E1D7FFD4C9
      B7FF504F4DFF191A1DFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC2DCF5FF6C99D6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C19DFF00000000E4E4E5FFF5FBF7FF25BF
      7EFF24C183FF24C183FF24C183FFFFFFFFFFFFFFFFFF24C183FF24C183FF24C1
      83FF27BD78FFFEFEFEFFFCFCFCFF000000000000000000000000000000000000
      000000000000F7F6F4FFFBFBFBFF000000000000000000000000000000000000
      000000000000000000000000000000000000C8C0AFFF998767FFFFFFFFFFBFB3
      A2FFBFB3A2FFBFB3A2FFBFB3A2FFBFB3A2FFBFB3A2FFBFB3A2FFFFFFFFFF504F
      4DFF191A1DFF000000000000000000000000FFFFFFFFD8D3CBFFD8D3CBFFD8D3
      CBFFD8D3CBFFD8D3CBFFFFFFFFFF5896E9FF9EC4EFFF769ED3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE2BE96FF00000000FEFEFEFF26BE79FF24C1
      83FF24C183FF24C183FF24C183FFFFFFFFFFFFFFFFFF24C183FF24C183FF24C1
      83FF24C183FF3EBC73FFFEFEFEFF000000000000000000000000000000000000
      000000000000F8F8F7FFFBFBFBFF000000000000000000000000000000000000
      000000000000000000000000000000000000D3CDC0FF8C7F68FF8C7F68FF8C7F
      68FF8C7F68FF8C7F68FF8C7F68FF8C7F68FF8C7F68FF8C7F68FF504F4DFF191A
      1DFF00000000000000000000000000000000FFFFFFFFCFC8BEFFCFC8BEFFCFC8
      BEFFCFC8BEFFCFC8BEFFFFFFFFFFFFFFFFFF5996EAFF9DC3EFFF88ABDAFFF0F0
      F0FFFFFFFFFFFFFFFFFFFFFFFFFFE1BD91FFE2E2E3FF48B763FF24C183FF24C1
      83FF24C183FF24C183FF24C183FFFFFFFFFFFFFFFFFF24C183FF24C183FF24C1
      83FF24C183FF24C183FF8BD39EFFFAFAFAFF0000000000000000000000000000
      0000C9C3B8FFFBFBFBFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFBFFCEC8
      BEFFDEDAD3FF00000000000000000000000000000000FFFFFFFF9A8A6EFFB09F
      84FFA19A8CFFC7C0B7FFEFEDEAFFEDEAE6FFFBFAFAFFC3BDB3FF111214FFFFFF
      FFFF00000000000000000000000000000000FFFFFFFFC8BFB5FFC8BFB5FFC8BF
      B5FFC8BFB5FFC8BFB5FFFFFFFFFFFFFFFFFFFFFFFFFF5A97EAFF9CC2EFFF9AB7
      DFFFFFFFFFFFCEC7BCFFFFFFFFFFE0BB8BFFFEFEFEFF37B763FF25C284FF24C1
      83FF24C183FF24C183FF52CC96FFFFFFFFFFFFFFFFFF3DC78DFF24C183FF24C1
      83FF24C183FF44CB95FF3BB255FFE4E4E5FF0000000000000000B7AE9FFFFAFA
      FAFFFBFBFBFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFBFB
      FBFFFAFAFAFFF9F9F9FF000000000000000000000000998767FFA39273FFB6B0
      A5FFF8F7F6FFFAFAF9FFF9F8F6FFF8F7F5FFF7F6F4FF928979FFE7E1D7FFD4C9
      B7FF00000000000000000000000000000000FFFFFFFFC0B8ABFFC0B8ABFFC0B8
      ABFFC0B8ABFFC0B8ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B98EAFF9AC1
      EFFFA5BEE0FFC3BAAEFFFFFFFFFFDFB885FFFEFEFEFF26BE7AFF4FCF9CFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF4FCF9CFF2CB661FFF4F4F4FF00000000ADA393FFF9F9F9FFFAFA
      FAFFFBFBFBFFFDFDFDFFFDFDFDFFC9CDD0FFFEFEFEFFFDFDFDFFFDFDFDFFFBFB
      FBFFFAFAFAFFF9F9F9FFF1F1F1FF00000000C8C0AFFF998767FFA39273FFE9E5
      E0FFF6F4F3FFFBFAFAFFFCFCFCFFFAF9F7FFF2F0EDFFE6E2DDFF948B7CFFD4C9
      B7FF00000000000000000000000000000000FFFFFFFFBAB0A2FFBAB0A2FFBAB0
      A2FFBAB0A2FFBAB0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C98
      EAFF99C1EFFF8D9CB0FFFFFFFFFFDFB77DFFFEFEFEFF26BE7AFF4FCF9CFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF4FCF9CFF2CB45EFFF4F4F4FFAFA697FFF0F0F0FFF7F8F8FFFAFA
      FAFFFBFBFBFFFBFBFBFFFDFDFDFFFDFDFDFFCEE2F4FF5890DCFFFBFBFBFFFBFB
      FBFFFAFAFAFFF7F8F8FFF0F0F0FFABA192FFC8C0AFFFFFFFFFFFB4A998FFE8E4
      DFFFF5F3F2FFFBFAF9FFFCFCFBFFFBFAF9FFF1EFECFFE5E1DCFFFFFFFFFFFFFF
      FFFF00000000000000000000000000000000FFFFFFFFB2A899FFB2A899FFB2A8
      99FFB2A899FFB2A899FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5D99EAFFE8E2D9FFCAD3DEFFDEB577FFFEFEFEFF2DB053FF5BBB66FF60C1
      74FF68C47DFF6FC886FF5BBF77FFFFFFFFFFFFFFFFFF5EC079FF6DC784FF66C3
      7BFF5EC071FF5BBA65FF359F23FFE4E4E5FFB7AFA3FFEEEEEFFFF5F5F5FFFAFA
      FAFFFAFAFAFFFBFBFBFFFBFBFBFFFDFDFDFF5C95E2FFACCFF1FF5B90D9FFFAFA
      FAFFFAFAFAFFF5F5F5FFEEEEEFFFA99E8FFFDEDBD7FF80735AFF80735AFFE4E0
      DAFFF6F5F3FFFBFAF9FFFCFBFBFFFAF9F9FFF6F4F2FFE1DCD6FFFFFFFFFF8073
      5AFF00000000000000000000000000000000FFFFFFFFADA292FFADA292FFADA2
      92FFADA292FFADA292FFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFFFFFFFFD7CEBFFF1B229AFFDDB36DFFE2E2E3FF359800FF5CB351FF5CB9
      61FF5BBD6CFF60C174FF63C278FFFFFFFFFFFFFFFFFF63C278FF5FC074FF5BBD
      6AFF5CB85EFF5DB14DFF43A423FFE6E6E6FFAAA192FFEAEBEBFFF1F1F1FFF2F2
      F2FFF3F3F4FFF3F3F4FFF4F4F4FFF4F4F4FFF4F4F4FF5B96E5FFACCFF1FF6495
      DBFFF2F2F2FFF1F1F1FFEAEBEBFFA69C8CFF00000000B8AD9AFFA39273FF9289
      79FFFBFAF9FFFCFBFAFFFCFCFBFFFCFBFAFFFAFAF8FFD8D3CBFFDFD9CEFFE7E3
      DDFF00000000000000000000000000000000FFFFFFFFA79C8CFFA79C8CFFA79C
      8CFFA79C8CFFA79C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA09584FFFFFFFFFFDCB25EFF00000000FEFEFEFF3A9907FF5DB0
      48FF5CB455FF5CB85FFF5BBA63FFFFFFFFFFFFFFFFFF5BB963FF5CB75DFF5CB3
      52FF5DAE42FF359500FFFEFEFEFF00000000A49A89FFE6E7E7FFEDEDEDFFF2F2
      F2FFF8F8F8FFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFF5B97E8FFACCF
      F1FF6A98D7FFEDEDEDFFACA394FF00000000CDC5B6FF998767FFA39273FFB09F
      84FFD8D3CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E1D7FFD4C9
      B7FF00000000000000000000000000000000FFFFFFFFA19685FFA19685FFA196
      85FFA19685FFA19685FFFFFFFFFFFFFFFFFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFFFFFFFFFFFFFFFFFFFFFFFFFDBB053FF00000000E0E0E1FF4FA536FF5CA6
      2FFF5DAB32FF5DAE3CFF5DB048FFFFFFFFFFFFFFFFFF5DAF47FF5DAD37FF5DAB
      32FF499B18FFFEFEFEFFDBDBDCFF0000000000000000A29787FFE9E9E9FFEDED
      EDFFF2F2F2FFF6F6F6FFF8F8F8FFFAFAFAFFFAFAFAFFF8F8F8FFF6F6F6FF5B98
      EAFFACCFF1FF668FC8FFF5F5F3FF00000000C8C0AFFF998767FFA39273FFFAF8
      F7FFFFFFFFFFFFFFFFFFAAA397FFEDECE9FFC0BBB2FFFDFCFBFFE7E1D7FFD4C9
      B7FF00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFDAAE53FF0000000000000000EEEEEFFF4FA2
      36FF3B9007FF5EA532FF5EA632FF5EA832FF5EA732FF5EA632FF5EA532FF378D
      01FFF2F9F2FFD9D9D9FF00000000000000000000000000000000A19685FFE0DF
      DDFFEBECECFFEFEFEFFFF1F1F1FFF2F2F2FFF2F2F2FFF1F1F1FFEFEFEFFFEBEB
      EBFF5C98EAFFACCFF1FF7BA1D5FF00000000C8C0AFFFE0D8CCFFE7E1D7FFF0EC
      E6FFF4F1EEFFF2EFEAFFEAE5DDFFE1D9CEFFD7CDBDFFCEC0ADFFC9BAA5FFC7B9
      A4FF00000000000000000000000000000000DDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFCEA148FF000000000000000000000000DDDD
      DDFFFEFEFEFF368700FF368700FF368800FF368800FF368700FF368700FFFEFE
      FEFFD2D2D3FF0000000000000000000000000000000000000000000000000000
      0000FEFEFEFF9D9281FF9D9281FF9D9281FF9D9281FF9D9281FFFBFBFAFF0000
      0000000000005D99EAFFDCD3C4FFB7BDC5FF000000009D9484FFE9E4DBFFF3F0
      ECFFFBFAF9FFF4F1EEFFECE7E0FFE2DBD0FFD9CFBFFFCFC1AEFFC9BAA5FF9289
      78FF00000000000000000000000000000000C48100FFC48100FFC48100FFC481
      00FFC48100FFC48100FFC48100FFC48100FFC48100FFC48100FFC48100FFC481
      00FFC48100FFC48100FFC48100FFC48100FF0000000000000000000000000000
      000000000000D9D9D9FFF6F6F6FFFEFEFEFFFEFEFEFFF0F0F0FFD0D0D1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000898491FF1B23D3FF0000000000000000B5AFA4FFFFFF
      FFFFF2F1EEFFABA497FF968D7DFFAAA294FFF6F4F2FFFFFFFFFFC3BEB5FF0000
      000000000000000000000000000000000000C37F00FFC37F00FFC37F00FFC37F
      00FFC37F00FFC37F00FFC37F00FFC37F00FFC37F00FFC37F00FFC37F00FFC37F
      00FFC37F00FFC37F00FFC37F00FFC37F00FF0000000000000000ECCEA6FFE4B4
      6DFFE8B96FFFE8B96FFFE4B46DFFDFAD6AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000202022FF000000000000000000000000000000000000
      000000000000EFEFEFFFF6F6F6FFFEFEFEFFFEFEFEFFF0F0F0FFFBFBFBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEFFFF6F6F6FFFEFEFEFFFEFEFEFFF0F0F0FFFBFBFBFF0000
      000000000000000000000000000000000000D2A249FFC58009FFE0AF6BFFE6B7
      6EFFECBE71FFECBE71FFE6B76EFFE0AF6BFFDAA65BFFC88412FFFEFEFDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000026272AFF3D3C3BFF1C1C1FFF000000000000000000000000E9E9
      E9FFFEFEFEFF285BE3FF135EE3FF1932DDFF1835DDFF135DE2FF7891ECFFFEFE
      FEFFFCFCFCFF000000000000000000000000000000000000000000000000E9E9
      E9FFFEFEFEFF70D19FFF74D5A9FF36C17EFF3BC280FF74D5A9FF9DDFBAFFFEFE
      FEFFFCFCFCFF000000000000000000000000D0953DFFD49D48FFE0AE6BFFE5B4
      6DFFE9BA70FFE9BA70FFE5B46DFFE0AE6BFFD9A459FFD1983BFFCD8F27FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026272AFF3E3D3BFF333333FF000000000000000000000000EEEEEFFFFEFE
      FEFF1B28DBFF1A30DCFF1A35DCFF1A38DDFF1A38DDFF1A34DCFF1B2DDBFF1937
      DDFFFEFEFEFFD9D9D9FF00000000000000000000000000000000EEEEEFFFFEFE
      FEFF27BD78FF24C183FF24C183FF24C183FF24C183FF24C183FF24C183FF46C3
      83FFFEFEFEFFD9D9D9FF0000000000000000CA8E32FFCF9742FFDDAA64FFE1AF
      6AFFD5A04FFFD5A04FFFD9A459FFDDAA64FFD7A151FFD09439FFC78A1EFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002627
      2AFF3E3D3BFF333333FF000000000000000000000000E4E4E5FFF2F4FEFF1B2B
      DBFF1A36DCFF193FDDFF1942DEFF1846DFFF1846DFFF1942DEFF193CDDFF1A34
      DCFF1B28DBFFFEFEFEFFFCFCFCFF0000000000000000E4E4E5FFF5FBF7FF25BF
      7EFF24C183FF24C183FF24C183FFFFFFFFFF24C183FF24C183FF24C183FF24C1
      83FF27BD78FFFEFEFEFFFCFCFCFF00000000FEFDFDFFC58A2EFFC88E35FFC98F
      38FF74A5D4FF77A7D6FF72A4D4FFC78A29FFC58A2EFFC38725FFB3921FFF35C1
      8AFF27BF7BFF2FB359FFBFDFB4FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000026272AFF3E3D
      3BFF333333FF00000000000000000000000000000000FEFEFEFF1B29DBFF1A37
      DCFF1B42DEFFFFFFFFFF1743CFFF1552E0FF1552E0FF174DE0FFFFFFFFFF1B22
      9AFF1A34DCFF1B2DDCFFFEFEFEFF0000000000000000FEFEFEFF26BE79FF24C1
      83FF24C183FF24C183FFFFFFFFFFFFFFFFFF3A9710FF24C183FF24C183FF24C1
      83FF24C183FF3EBC73FFFEFEFEFF000000000000000000000000EAD2AFFFCB96
      46FF87B1DBFF8BB4DDFF83AFDAFFC08323FFCA9138FF31C187FF3FC08FFF35C1
      8AFF27BF7BFF2FB359FF39A72BFF3C9F03FF0000000000000000000000000000
      0000000000000000000000000000000000000000000026272AFF3E3D3CFF3332
      32FF00000000000000000000000000000000E2E2E3FF1C24DAFF1A32DCFF1940
      DEFFFFFFFFFFFFFFFFFFFFFFFFFF144ED1FF135CE2FFFFFFFFFFFFFFFFFFFFFF
      FFFF193CDDFF1B2DDBFF787DE9FFFAFAFAFFE2E2E3FF48B763FF24C183FF24C1
      83FF24C183FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24C183FF24C183FF24C1
      83FF24C183FF24C183FF8BD39EFFFAFAFAFF000000000000000000000000EFF4
      FAFF6B9ED0FF6C9FD0FF93B9DFFF33AD45FF2DB766FF26BF7DFF2BC185FF25C0
      81FF2AB96CFF32B04EFF36A719FF4B9A16FF0000000000000000EFEEECFFFFFF
      FFFF978E7FFFA8A093FFE1DFDBFF999082FF00000000151619FF333232FF0000
      000000000000000000000000000000000000FEFEFEFF1B25D8FF1B38DDFF1844
      DEFF1650E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF174D
      E0FF1941DEFF3C51E2FF1C24D3FFE4E4E5FFFEFEFEFF37B763FF25C284FF24C1
      83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E9100FF24C183FF24C1
      83FF24C183FF44CB95FF3BB255FFE4E4E5FF00000000000000000000000077A7
      D5FF79A7D6FF77A7D5FF70A1D2FF559C35FF54A046FF469821FF74A5D4FF72A4
      D3FF3E9100FF559D3BFF569A25FFB1C79AFF000000009C9486FFEEECE8FFFAFA
      F9FFFCFBFBFFFBFAFAFFF8F7F6FFEBE8E3FFFFFFFFFF00000000000000000000
      000000000000000000000000000000000000FEFEFEFF1B29DBFF4761E4FF1847
      DFFF193BDDFF1842DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1941DEFF1A39
      DDFF1843DEFF475EE3FF1C26D7FFF4F4F4FFFEFEFEFF26BE7AFF4FCF9CFFFFFF
      FFFFFFFFFFFFFFFFFFFF70CF9DFFFFFFFFFFFFFFFFFFFFFFFFFF65C98EFF5DC2
      80FF24C183FF4FCF9CFF2CB661FFF4F4F4FF000000000000000081ADD9FF86B0
      DBFF88B2DBFF85AFDAFF7BA9D7FF00000000CADFBFFF7CA67EFF8AB4DCFF89B3
      DCFF83AFD9FF709F46FF000000000000000000000000EBE8E4FFF8F7F6FFFAF9
      F7FFFBFAFAFFFAF9F7FFF7F6F5FFEFECE9FFECE9E5FF948B7CFF000000000000
      000000000000000000000000000000000000FEFEFEFF1B29DBFF4761E4FF494F
      E2FF1B2FDCFF1A36DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A2FCCFF1F30
      DCFF494FE0FF475EE3FF1C26D6FFF4F4F4FFFEFEFEFF26BE7AFF4FCF9CFF6CC5
      82FFFFFFFFFF5AC07CFF60C485FF61C588FFFFFFFFFFFFFFFFFFFEFFFDFF53BD
      71FF6AC580FF4FCF9CFF2CB45EFFF4F4F4FF0000000000000000A1C2E3FF95BA
      DFFF99BEE1FF92B8DFFF86B0DBFFAACAE8FF000000006EA0D1FF6EA0D1FF97BC
      E0FF00000000000000000000000000000000FFFFFFFFF2F0EDFFF8F7F6FFFBFA
      FAFFFEFDFDFFFBFAFAFFF8F7F6FFF0EEEBFFE5E2DDFFD3D0C9FF000000000000
      000000000000000000000000000000000000FEFEFEFF1B26D2FF4950D6FF494F
      DBFF494FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D44
      CFFF494FDBFF4950D6FF1C25C2FFE4E4E5FFFEFEFEFF2DB053FF5BBB66FF60C1
      74FF68C47DFF6FC886FF5BBF77FF52BC72FF95D7A8FFFFFFFFFFFFFFFFFF3E91
      00FF5EC071FF5BBA65FF359F23FFE4E4E5FF00000000B6BAC2FFA6C5E5FFA1C2
      E4FFAACAE7FF9DC0E2FF8CB5DCFF1A233EFFBAD2E9FF7EABD8FF7FABD8FF79A7
      D6FF00000000000000000000000000000000C4BFB6FFEDEAE7FFF7F6F5FFFBFA
      FAFFFCFBFBFFFCFBFBFFF9F9F8FFEFEDEAFFE5E1DCFFB0A89CFF000000000000
      000000000000000000000000000000000000E2E2E3FF1C25BDFF4950D0FF4950
      D4FFFFFFFFFFFFFFFFFFFFFFFFFF494FDEFF494FDEFFFFFFFFFFFFFFFFFFFFFF
      FFFF4950D3FF4950CFFF2D35C8FFE6E6E6FFE2E2E3FF359800FF5CB351FF5CB9
      61FF5BBD6CFF60C174FF63C278FF65C37BFF65C37AFFFFFFFFFFFFFFFFFFFFFF
      FFFF5AB658FF5DB14DFF43A423FFE6E6E6FF000000009DA3AEFF93B9E0FF9EC2
      E4FFA7C8E6FF3E495FFF36435CFF1C2742FF9DBFE1FF8FB7DEFF90B8DEFF87B2
      DBFF72A3D3FF000000000000000000000000D6D2CCFFEAE6E2FFF8F7F6FFFBFB
      FAFFFCFBFAFFFBFBFAFFF9F9F7FFF4F2F0FFE3DFD9FFA29A8CFF000000000000
      00000000000000000000000000000000000000000000FEFEFEFF222BBDFF4950
      CEFFBEC0EFFFFFFFFFFF4950D5FF4950D6FF4950D6FF4950D5FFFFFFFFFF4A51
      D1FF4950CCFF1C24BAFFFEFEFEFF0000000000000000FEFEFEFF3A9907FF5DB0
      48FF5CB455FF5CB85FFF5BBA63FF5BBB66FF5BBB66FF5BB963FFFFFFFFFFFFFF
      FFFF5DAE42FF359500FFFEFEFEFF000000000000000000000000495265FF90B7
      DEFF5A6273FF3E495FFF2A3750FF1C2742FFA5C5E5FFA0C2E4FFA3C4E4FF93BA
      DFFF1A243FFF000000000000000000000000F9F9F8FFE4E0DAFFF9F8F6FFFAFA
      F9FFFBFBFAFFFBFAF9FFF9F8F7FFF7F6F4FFDED9D2FFFEFEFDFF000000000000
      00000000000000000000000000000000000000000000E0E0E1FF3A41C7FF464D
      C5FF4950CAFF4950CCFF4950CEFF4950CFFF4950CFFF4950CDFF4950CBFF4950
      CAFF3239BDFFFEFEFEFFDBDBDCFF0000000000000000E0E0E1FF4FA536FF5CA6
      2FFF5DAB32FF5DAE3CFF5DB048FF5DB14CFF5DB14BFF5DAF47FF5DAD37FF5DAB
      32FF499B18FFFEFEFEFFDBDBDCFF0000000000000000000000003B475DFF454F
      63FF414B61FF344057FF26324CFFC9CCD2FFA6C7E5FFA3C4E4FFA7C8E7FF313D
      56FF1E2944FF00000000000000000000000000000000AAA396FFFDFCFCFFFDFD
      FCFFFDFDFCFFFDFDFCFFFDFDFCFFFCFCFBFFD7D0C7FFDDDBD6FF000000000000
      0000000000000000000000000000000000000000000000000000EEEEEFFF3941
      C4FF222AB5FF494FC4FF494FC5FF494FC7FF494FC5FF494FC5FF494FC3FF1D25
      B3FFF1F2FBFFD9D9D9FF00000000000000000000000000000000EEEEEFFF4FA2
      36FF3B9007FF5EA532FF5EA632FF5EA832FF5EA732FF5EA632FF5EA532FF378D
      01FFF2F9F2FFD9D9D9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E5668FF93BADFFF4A5467FF313D
      56FF1E2944FF00000000000000000000000000000000B9B4AAFFA8A093FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D0C7FFA69E91FF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDDD
      DDFFFEFEFEFF1B24ACFF1B24ADFF1B24AEFF1B24AEFF1B24ADFF1B24ACFFFEFE
      FEFFD2D2D3FF000000000000000000000000000000000000000000000000DDDD
      DDFFFEFEFEFF368700FF368700FF368800FF368800FF368700FF368700FFFEFE
      FEFFD2D2D3FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D495FFF404A60FF37435AFF2834
      4DFF00000000000000000000000000000000000000000000000000000000F8F8
      F7FFD5D2CCFFC2BDB4FFFFFFFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9D9D9FFF6F6F6FFFEFEFEFFFEFEFEFFF0F0F0FFD0D0D1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9D9D9FFF6F6F6FFFEFEFEFFFEFEFEFFF0F0F0FFD0D0D1FF0000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00C007C007000000008003800300000000
      C7C300000000000083838000000000008103C00300000000C007C00300000000
      E00F800300000000F01F800300000000F01F800300000000E00F800300000000
      C00780030000000081038003000000008383800300000000C7C3800300000000
      EFE7C00700000000FFFFFCFF00000000F81F000000000001E007000000000000
      C003000000000000800100000000C003800100000000F003000000000000F007
      000000000000F01F000000000000E03F000000000000E07F000020000000C0FF
      000000000001E1FF800100000000C3FF80010000000087FFC003000000008FFF
      E007000000008FFFF81F00000000FFFFC0030000F81FFE0FC0030000E007800F
      C0030000C003800FC00300008001800FC00300008001800FC00300000000800F
      800100000000800F800100000000800F800100000000800F800100000000800F
      E00100000000800FF81F000080018007F81F000080018003F81F0000C0038001
      FFFF0000E007E07BFFFF0000F81FF9FF00070007F000FFFF00070007F000FFFF
      00070007F000C00100070007F000800000070007F00000000007000700008001
      0007000700008000000700070000000000030003000080010001000100008000
      0005000500000000000700070000800100070007001F8003000F000F001F0007
      001F001F001FFFFF003F003F001FFFFFF81FFFFFE03D0000E007FEFF80090000
      C003FDFF000300008001F9FF000700008001F9FF000F00000000F007800F0000
      0000C003800F000000008001000F000000000000000F000000000000000F0000
      00000000800F000080010001000F000080018001000F0000C003C001000F0000
      E007F018800F0000F81FFFFCC01F0000C0FFFFFDF81FF81F001FFFF8E007E007
      001FFFF1C003C003001FFFE3800180010001FFC780018001C000FF8F00000000
      E000C09F00000000E000807F00000000C103803F00000000C08F003F00000000
      800F003F000000008007003F80018001C007003F80018001C007803FC003C003
      FF07807FE007E007FF0FE1FFF81FF81F00000000000000000000000000000000
      000000000000}
  end
end
