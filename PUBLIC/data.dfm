object dm: Tdm
  OnCreate = DataModuleCreate
  Height = 728
  Width = 998
  object DS_comm: TDataSource
    DataSet = Q_comm
    Left = 160
    Top = 10
  end
  object DS_MedStore: TDataSource
    DataSet = Q_MedStore
    Left = 399
    Top = 12
  end
  object DS_public: TDataSource
    DataSet = Q_public
    Left = 470
    Top = 434
  end
  object DS_public1: TDataSource
    DataSet = Q_public1
    Left = 160
    Top = 482
  end
  object Ds_tyygs: TDataSource
    DataSet = Q_tyygs
    Left = 526
    Top = 357
  end
  object DS_public2: TDataSource
    DataSet = Q_public2
    Left = 296
    Top = 483
  end
  object DS_xyzb: TDataSource
    DataSet = Q_xyzb
    Left = 120
    Top = 333
  end
  object DS_song: TDataSource
    DataSet = Q_song
    Left = 160
    Top = 350
  end
  object DS_sumrk: TDataSource
    DataSet = Q_sumrk
    Left = 280
    Top = 13
  end
  object DS_sumck1: TDataSource
    DataSet = Q_sumck1
    Left = 280
    Top = 180
  end
  object DS_sumck2: TDataSource
    DataSet = Q_sumck2
    Left = 280
    Top = 239
  end
  object DS_sumck3: TDataSource
    DataSet = Q_sumck3
    Left = 280
    Top = 294
  end
  object DS_kcun: TDataSource
    DataSet = Q_kcun
    Left = 280
    Top = 65
  end
  object DS_use: TDataSource
    DataSet = Q_use
    Left = 160
    Top = 236
  end
  object DS_cx: TDataSource
    DataSet = Q_cx
    Left = 399
    Top = 242
  end
  object DS_tj: TDataSource
    DataSet = Q_tj
    Left = 526
    Top = 298
  end
  object DS_ks: TDataSource
    DataSet = Q_ks
    Left = 399
    Top = 67
  end
  object DS_master: TDataSource
    DataSet = Q_master
    Left = 280
    Top = 122
  end
  object DS_detail: TDataSource
    DataSet = Q_detail
    Left = 399
    Top = 185
  end
  object DS_MXYZB: TDataSource
    DataSet = Q_MXYZB
    Left = 280
    Top = 351
  end
  object Ds_comm1: TDataSource
    DataSet = Q_comm1
    Left = 160
    Top = 180
  end
  object ds_zb2: TDataSource
    DataSet = q_zb2
    Left = 399
    Top = 122
  end
  object ds_zd: TDataSource
    DataSet = q_zd
    Left = 399
    Top = 348
  end
  object DS_yp: TDataSource
    DataSet = qry_yp
    Left = 526
    Top = 121
  end
  object DS_qldb: TDataSource
    DataSet = Q_qldb
    Left = 526
    Top = 67
  end
  object DS_rktemp: TDataSource
    DataSet = Q_rktemp
    Left = 526
    Top = 10
  end
  object Ds_sell: TDataSource
    DataSet = Q_sell
    Left = 399
    Top = 295
  end
  object ds_kcl: TDataSource
    DataSet = q_kcl
    Left = 526
    Top = 183
  end
  object sqlsrvrnprvdr1: TSQLServerUniProvider
    Left = 29
    Top = 66
  end
  object con1: TUniConnection
    ProviderName = 'SQL Server'
    Database = 'yiyuandb_mssq'
    SpecificOptions.Strings = (
      'SQL Server.Provider=prDirect'
      'SQL Server.LockTimeout=20000')
    Username = 'founder'
    LoginPrompt = False
    Left = 29
    Top = 11
    EncryptedPassword = '99FF9BFF'
  end
  object Q_comm: TUniQuery
    Connection = con1
    Left = 104
    Top = 8
  end
  object Q_public1: TUniQuery
    Connection = con1
    Left = 112
    Top = 480
  end
  object Q_public2: TUniQuery
    Connection = con1
    Left = 240
    Top = 481
  end
  object Q_comm1: TUniQuery
    Connection = con1
    Left = 104
    Top = 178
  end
  object Q_use: TUniQuery
    Connection = con1
    Left = 104
    Top = 234
  end
  object Q_xyzb: TUniQuery
    Connection = con1
    Left = 72
    Top = 323
  end
  object Q_song: TUniQuery
    Connection = con1
    Left = 64
    Top = 380
  end
  object Q_sumrk: TUniQuery
    Connection = con1
    Left = 222
    Top = 10
  end
  object Q_kcun: TUniQuery
    Connection = con1
    Left = 222
    Top = 64
  end
  object Q_master: TUniQuery
    Connection = con1
    Left = 222
    Top = 120
  end
  object Q_sumck1: TUniQuery
    Connection = con1
    Left = 222
    Top = 180
  end
  object Q_sumck2: TUniQuery
    Connection = con1
    Left = 222
    Top = 240
  end
  object Q_sumck3: TUniQuery
    Connection = con1
    Left = 222
    Top = 296
  end
  object Q_MXYZB: TUniQuery
    Connection = con1
    Left = 222
    Top = 352
  end
  object Q_MedStore: TUniQuery
    Connection = con1
    Left = 341
    Top = 10
  end
  object Q_ks: TUniQuery
    Connection = con1
    Left = 341
    Top = 64
  end
  object q_zb2: TUniQuery
    Connection = con1
    Left = 341
    Top = 121
  end
  object Q_detail: TUniQuery
    Connection = con1
    Left = 341
    Top = 184
  end
  object Q_cx: TUniQuery
    Connection = con1
    Left = 341
    Top = 240
  end
  object Q_sell: TUniQuery
    Connection = con1
    Left = 341
    Top = 296
  end
  object q_zd: TUniQuery
    Connection = con1
    Left = 341
    Top = 349
  end
  object Q_rktemp: TUniQuery
    Connection = con1
    Left = 465
    Top = 8
  end
  object Q_qldb: TUniQuery
    Connection = con1
    Left = 465
    Top = 66
  end
  object qry_yp: TUniQuery
    Connection = con1
    Left = 465
    Top = 121
  end
  object q_kcl: TUniQuery
    Connection = con1
    Left = 465
    Top = 184
  end
  object Q_inbank: TUniQuery
    Connection = con1
    Left = 613
    Top = 11
  end
  object Q_public: TUniQuery
    Connection = con1
    Left = 425
    Top = 432
  end
  object Q_tj: TUniQuery
    Connection = con1
    Left = 465
    Top = 296
  end
  object Q_tyygs: TUniQuery
    Connection = con1
    Left = 465
    Top = 352
  end
  object DS_inbank: TDataSource
    DataSet = Q_inbank
    Left = 691
    Top = 13
  end
  object UpdateSQL_Outbank: TUniUpdateSQL
    ModifySQL.Strings = (
      ' ')
    Left = 29
    Top = 121
  end
  object UpdateSQL1: TUniUpdateSQL
    InsertSQL.Strings = (
      'insert into xyzb'
      '  (Inp_Place, Outp_Place)'
      'values'
      '  (:Inp_Place, :Outp_Place)')
    ModifySQL.Strings = (
      'update xyzb'
      'set'
      '  Inp_Place = :Inp_Place,'
      '  Outp_Place = :Outp_Place'
      'where'
      '  ypbh = :OLD_ypbh')
    Left = 29
    Top = 235
  end
  object UpdateSQL: TUniUpdateSQL
    InsertSQL.Strings = (
      '')
    ModifySQL.Strings = (
      'update permission'
      'set'
      '  [select] = :select'
      'where'
      '  no = :OLD_no')
    Left = 29
    Top = 178
  end
  object ds_qrcfview1: TDataSource
    DataSet = qrcfview1
    Left = 846
    Top = 121
  end
  object ds_qrcfview2: TDataSource
    DataSet = qrcfview2
    Left = 846
    Top = 169
  end
  object ds_qrcfview3: TDataSource
    DataSet = qrcfview3
    Left = 846
    Top = 227
  end
  object qrcfview3: TUniQuery
    Connection = con1
    Left = 752
    Top = 224
  end
  object qrcfview2: TUniQuery
    Connection = con1
    Left = 752
    Top = 168
  end
  object qrcfview1: TUniQuery
    Connection = con1
    Left = 752
    Top = 120
  end
  object DS_RipTitle: TDataSource
    DataSet = Q_RipTitle
    Left = 846
    Top = 73
  end
  object Q_RipTitle: TUniQuery
    Connection = con1
    Left = 760
    Top = 72
  end
  object ds_temp: TDataSource
    DataSet = q_temp
    Left = 710
    Top = 379
  end
  object q_temp: TUniQuery
    Connection = con1
    Left = 616
    Top = 376
  end
  object Q_OUT: TUniQuery
    Connection = con1
    Left = 401
    Top = 536
  end
  object DS_yzzl: TDataSource
    DataSet = Q_yzzl
    Left = 832
    Top = 546
  end
  object Q_yzzl: TUniQuery
    Connection = con1
    Left = 736
    Top = 544
  end
  object DS_yztemp: TDataSource
    DataSet = Q_yztemp
    Left = 824
    Top = 626
  end
  object Q_yztemp: TUniQuery
    Connection = con1
    Left = 728
    Top = 624
  end
  object DS_ksby: TDataSource
    DataSet = Q_ksby
    Left = 832
    Top = 482
  end
  object Q_ksby: TUniQuery
    Connection = con1
    Left = 736
    Top = 480
  end
  object DS_cfcx: TDataSource
    DataSet = Q_cfcx
    Left = 576
    Top = 466
  end
  object Q_cfcx: TUniQuery
    Connection = con1
    Left = 536
    Top = 464
  end
  object DS_fybq: TDataSource
    DataSet = Q_fybq
    Left = 592
    Top = 586
  end
  object Q_fybq: TUniQuery
    Connection = con1
    Left = 504
    Top = 584
  end
  object DS_SendMedDetail: TDataSource
    DataSet = Q_SendMedDetail
    Left = 152
    Top = 602
  end
  object Q_SendMedDetail: TUniQuery
    Connection = con1
    Left = 48
    Top = 600
  end
  object DS_FY: TDataSource
    DataSet = Qry_fy
    Left = 344
    Top = 626
  end
  object Qry_fy: TUniQuery
    Connection = con1
    Left = 280
    Top = 624
  end
  object DS_mm: TDataSource
    DataSet = Q_mm
    Left = 480
    Top = 658
  end
  object Q_mm: TUniQuery
    Connection = con1
    Left = 416
    Top = 656
  end
  object qrcfview4: TUniQuery
    Connection = con1
    Left = 752
    Top = 288
  end
end
