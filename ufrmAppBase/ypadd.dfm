object Fm_ypadd: TFm_ypadd
  Left = 593
  Top = 240
  Caption = #22686#21152#33647#21697
  ClientHeight = 519
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 13
  object Panel_title: TPanel
    Left = 0
    Top = 0
    Width = 932
    Height = 33
    Align = alTop
    Color = clMenuBar
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label44: TLabel
      Left = 440
      Top = 11
      Width = 120
      Height = 14
      Caption = #32418#33394#20869#23481#20026#24517#22635#39033
    end
    object Label45: TLabel
      Left = 984
      Top = -3
      Width = 48
      Height = 12
      Caption = #24211#25151#31867#22411
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object BBtn_add: TBitBtn
      Left = 6
      Top = 4
      Width = 86
      Height = 25
      Caption = #26032#22686'[&A]'
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
      TabOrder = 0
      OnClick = BBtn_addClick
    end
    object BBtn_save: TBitBtn
      Left = 183
      Top = 4
      Width = 86
      Height = 25
      Caption = #20445#23384'[&S]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        AD4901952E00942B00932A00932A00932A00942900942900942A00962F00962F
        00942C00942E00B24C00FFFFFFA94604DE7C0BCF6500FFE9F1FFDAE0FFE0E7FF
        E3E4FCE9E7FAF0EEF8FEFECD6200CC6400FFDEB0CF6700CE6800AA4501DA811F
        FFA614D16600FFF6FE8B1F00D36700FFD6DBFAD9D6F7DFDBF7EEEECA5F00C960
        00FFD7AAD36A00CC6600CB6400FFB63FFFA212D86D00FFFFFF8F2500DE7500FF
        D0D6FDD2D1FAD9D6F9E6E7CA5F00C96000FFD6AADB7200CB6500C96200FFB43E
        FFA112E07400FFFFFF8B1A00E47500FFDDE2FFC8C8FDCFCEFCDEE0CA5F00C960
        00FFD6AAE37A00CB6500C96200FFB43EFFA112E77B00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFCA5F00C96000FFD7ACE98100CA6400C96200FFB43E
        FFA012F08900BD52008C21008E22008E22008E22008E22008D2100CB6400C860
        00F4B981F18900CA6400C96200FFB33CFF9C07F68A00F98E00FB9000FB9000FB
        9000FB9000FB9000FB9000F98E00F98D00D4751DFA9200CA6400C96200FFAF33
        FFFFFFF2F1F4F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F2F1
        F4FFFFFFFF9400C96300C96200FFAF31FFFFFFF3F1EBF4F2EDF4F2EDF4F2EDF4
        F2EDF4F2EDF4F2EDF4F2EDF4F2EDF3F1EBFFFFFFFF9D02C96300C96200FFAF31
        FFFFFFFFC6C6FFC8C8FFC8C8FFC8C8FFC8C8FFC8C8FFC8C8FFC8C8FFC8C8FFC6
        C6FFFFFFFFAA24C96200C96200FFAF31FFFFFFF7F7F4F7F8F5F7F8F5F7F8F5F7
        F8F5F7F8F5F7F8F5F7F8F5F7F8F5F7F7F4FFFFFFFFB946C96100CA6300FFB433
        FFFFFFFFC5C5FFC7C8FFC7C8FFC7C8FFC7C8FFC7C8FFC7C8FFC7C8FFC7C8FFC5
        C5FFFFFFFFCC6DCA6200CD6600881900FFFFFFFAFBFAFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFAFBFAFFFFFF881800CD6600CA6200FFEDB7
        FFFFF3FFFFDCFFFFDCFFFFDCFFFFDCFFFFDCFFFFDCFFFFDCFFFFDCFFFFDCFFFF
        DCFFFFF3FFEDB7CA6200CC6500C75F00FF79E9FF78DFFF78DFFF78DFFF78DFFF
        78DFFF78DFFF78DFFF78DFFF78DFFF78DFFF79E9C75F00CC6500}
      ParentFont = False
      TabOrder = 1
      OnClick = BBtn_saveClick
    end
    object BBtn_canel: TBitBtn
      Left = 96
      Top = 4
      Width = 86
      Height = 25
      Cancel = True
      Caption = #28165#38500'[&Q]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333FFFFF333333000033333388888833333333333F888888FFF333
        000033338811111188333333338833FFF388FF33000033381119999111833333
        38F338888F338FF30000339119933331111833338F388333383338F300003391
        13333381111833338F8F3333833F38F3000039118333381119118338F38F3338
        33F8F38F000039183333811193918338F8F333833F838F8F0000391833381119
        33918338F8F33833F8338F8F000039183381119333918338F8F3833F83338F8F
        000039183811193333918338F8F833F83333838F000039118111933339118338
        F3833F83333833830000339111193333391833338F33F8333FF838F300003391
        11833338111833338F338FFFF883F83300003339111888811183333338FF3888
        83FF83330000333399111111993333333388FFFFFF8833330000333333999999
        3333333333338888883333330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = BBtn_canelClick
    end
    object BBtn_quit: TBitBtn
      Left = 274
      Top = 4
      Width = 86
      Height = 25
      Caption = #36864#20986
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      Kind = bkClose
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnClick = BBtn_quitClick
    end
    object Cmbx_storetype: TComboBox
      Left = 575
      Top = 5
      Width = 82
      Height = 22
      TabOrder = 4
      Text = 'A'#24211
      Visible = False
      Items.Strings = (
        'A'#24211
        'B'#24211
        'C'#24211)
    end
  end
  object Panel_yp: TPanel
    Left = 0
    Top = 33
    Width = 932
    Height = 486
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = True
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = -16
      Width = 60
      Height = 15
      Caption = #19968#32423#31867#21517
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 932
      Height = 486
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 0
      object GroupBox4: TGroupBox
        Left = 16
        Top = 16
        Width = 369
        Height = 441
        Caption = #22522#26412#20449#24687
        TabOrder = 0
        object Image1: TImage
          Left = 272
          Top = 416
          Width = 55
          Height = 21
          Center = True
          Picture.Data = {
            0A544A504547496D616765E3120000FFD8FFE000104A46494600010101000000
            000000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
            0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
            3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
            3232323232323232323232323232323232323232323232323232323232323232
            32323232323232323232323232FFC00011080084008303012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7EA
            28A0F140086A2B89C411FDD2EEDC2203CB1F4FFEBF6EB45CCE208FEE9776E110
            1E58FA7FF5FB75AE03C6BE354F0CC6F6D6D2473EB732E320656DD0F4E3F90EFD
            4D26ECAE69468CAACB961B8FF1978DE2F0B8F22D8C575AD4A0641FB90275C1E9
            F80EA7A9E82B861F16BC5000F9ACB3DCF9079FFC7AB8A9A796E269269A579259
            18B33B1C9627AE4FD6A3AE59556DE87D561F2CA34A9A8CD5DF73B9FF0085B7E2
            8FEF597FE039FF00E2A97FE16DF8A3FBD63FF80E7FF8AAE168A9E797736FA8E1
            BFE7DA3BAFF85B7E28FEF58FFE039FFE2A8FF85B7E28FEF58FFE039FFE2AB85A
            28E79771FD470DFF003ED1DCFF00C2DAF1463EF58FFDF83FFC5569E85F15AEA6
            BF16FE21480D84B853243194688FA9C1E40F6E475AF33A3F4F7C6714FDA3EE44
            F2FC34A2D7258FA96DAE4623DD22C88E3314E31B5C1E719F5C7E07B7A0BA1BA0
            38CD783781BC72744234AD559A4D224385624936E73D41EBB7BFA8EA31CD7B6D
            ADCAFEEC348B2A48330CE31B5C1E7191DF1F81EDE83AA135247CBE2F093C34F9
            5EDD197A8A4C8F514B54728B451450034E2A2B99C431FDD2EEDC2203CB1F4FFE
            BF6EB45CCCB047F74BBB70880F2C7D3FFAFDBAD701E35F1B2786A37B7B69239B
            5B9971C0CADB21E9C7F21DFA9E3149B495D9A51A32AD35086E2F8D7C6D1F86A3
            6B7B69239B5B9971C0CADB21E9C7F21DFA9E315E2734D2DC4D24D34AF24B2316
            7766C9627AE4FD7FCF4A269A5B89A49A695E496462CCECD92C4F5C9FAFF9E951
            D724E7CCFC8FAEC1E0E186879F70A28A2A0ED0A28A2800A28A2800A28A28001D
            7FFAD9AEE7C0DE393A230D2B5566934890E0364936C73D41EBB7BFA8EA31CD70
            D47E9EF8CE29C64E2EE8C2B5085683A751687D4B6D70088F322CA920CC338C61
            C1E7191DF1F81EDE82E83D33D6BC1BC0DE393A211A5EAACD2692E7018924DB9C
            F507AEDEFC723A8C735EDB6B3AFEEF748B2A38CC338230E0F38CFAFE87B7A0EC
            84D491F238BC24F0D3E57B772FD14991EB4551CA79DF8D7C6B1F86627B6B6912
            7D6E55C640CADB27F9E83BF535E273CD2DC4D24D3CAD24B23167766C9627AE4F
            D7FCF4ADFF001F7FC8F7AC67FE7B2FFE80BC561D959DC6A17B15A5A44F2DC4AD
            B5113A93FE7BF6AE4A9272958FAFC061A961E8A9F7576C828AF57D2FE0E29B55
            7D5B5264723263B645C2FF00C0981CFD715475FF0084775636AF71A45E7DAC27
            26DE450AE47B11C13ED8143A52B5EC3599E19CF914B53CDBA515BBE13F0D9F13
            EB2DA77DA4DA911190B347BB905463191EBEB5DD7FC2946FFA0F2FFE021FFE2E
            92A6DEC695B1D87A32E59B3CA075A5AF563F051BFE83CBFF008087FF008BAE63
            C63E056F095A5ACC751175E7C863C793B36F19CF534DD3925764D3CC2855972C
            65ABF238FE940AD9F0DF86B50F13EA06D6C54008A1A695B21231920678E49C1E
            2BD261F835A7087171AADD34DEB1A22AFE4413FAD254DBD875F1F4283E59BD4F
            1ECD15D8F8BBE1E5F7866037B14DF6BB11F7E40BB5A2FF007873C7BE6B8DE9DA
            A5C5A7666D46BD3AB1E783D05CD06BD553E0BBBA8275E19F7B5CFEBBC529F82C
            F838D7573EF6A7FF008BAD3D948E5FED5C36DCDF81E51FE7A66BB9F0378E4E88
            CBA56A8CD269521C29C926DCE7A83D76E79E391D4639AA5E25F87DAC786E06BB
            7097566BF7E7873F27FBC0F41EFCD7278CE47E06A55E0CDA6A86328EF73EA18A
            E2E5E247B79209E1601925DE7E607A1E148FCA8ACDF05207F04E8CC73CDAA753
            ED4575267C84E9C63271EC789F8FFF00E47BD631CFEF871EBF22D75FF06B4E8A
            4BAD4B5275064842C319FEEE725BF92F3F5AE43C7E33E3BD6074CCC07FE38B5B
            7F0B7C496FA3EB5358DE48B1417DB423B1C059013804F6CEE23EB8AE7834AA6A
            7D2E2233960128EF65F7686BFC40F1FEAFA778865D2B4B985AADB0512CBB1599
            D994377C8030476F5AD1F027C431A85B5C5AF88AF6D619A2DA639E5758C480E7
            20F419181D3D6B47C6BF0EA0F124A751B2985B6A5B403B86525C74CE3A1E9C8A
            F16D5348BED12F0D9EA16CD04CA3207661EA08E08FF3D6A9CA5195FA1C986A38
            5C561D535A497DE74FE28D59343F1DDDEA5E1BBF8317318732C3B2450CC7E71D
            C72403F89F5ADEF87FE33D7F5AF164163A85FF009D6ED13929E522E481C72141
            AF2CAED7E15FFC8F76FF00F5C65FE42A6326E48ECC56169C70CEEAED2DCEEFE2
            7F88F55F0FC7A6B69775F67699A4F33F768D9C6DC7DE07D6BCA359F146B1AFC3
            145A9DDF9F1C4DB94796A8549E09E00CD7A1FC6AFF0055A37FBD37F24AF24DA5
            BE51D4F028A9277B19E57469FD5E356DAEBAFDE7D01F0F74A8740F04C37336D4
            92E13ED73B9EC08C8CFB05C7EB5E61AA7C4BF10DDEAB25CD95EB5A5B6EFDD40A
            8A70B9FE2C8E4F4CF35EAFE3690E97F0FB51107CA12D842B8EC0909FD6BE76C0
            E9D7AD5D4938A491865B4618873AD555EECFA2BC31AA41E33F0807BB890B48AD
            6F75181C6EE8C3F11823EA2BC0353B0934BD56EF4F94E5EDA668D89EF82707F1
            1835EA5F05EE5DADF58B42495578E551E84820FF00E822B91F89B0083C7B7E40
            03CD48E4C0FF00700FE62949DE2A4CAC1AF638AA9456CF5FEBEF3DA7C4F7D3E9
            7E11D46F6D582CF05B97424038207A1AF1B1F147C54AE09BAB77C1C6D68060FE
            5CD7AFF8C6096E7C13AAC3044F2CAF6ACAA91A966638E800EB5E023C31AF33ED
            1A26A59278FF004571FAE38FAD3A8E7A7298E594A84E127552DFAFA1EEDE12D7
            E2F18786CDCCD02AC9968278BAA938EDEC4107F1C76AF06F1069CBA4F88B50D3
            D73B6DE6644CF5DB9CAFE8457B7FC38F0F5D787BC32D1DF2ECBAB894CCE99CEC
            18002FE4A0FD4D78C78B6F63D47C5DAADD44C1A37B82148E4103E5CE7DF6E695
            5BF2AB9A65B6589A91A7F09EEFE07FF911F45FFAF44FE5451E07FF00911F45FF
            00AF44FE5456F1D8F1ABFF00165EACF11F1F7FC8F7AC7FD761FF00A02D739FA5
            747E3EE7C79ABE7FE7BAFF00E80B5D3683F0BA2D7341B4D4D757910DC47BDA3F
            201C1E411D7DB1D2B9395CA4EC7D4C3114E861E12A8FB7E450F0A7C4BD4341D9
            6BA979979A7AF032732443D413F7BE87F31D2BD4751D3F45F1EF87976BA4D0B8
            2619D3EF42FD09E7904771F9D7CEAC8F19D8C0A38E0A918391D7F1CD7AA7C179
            AE3ED1AB5BFCDF64548D80CE42BF238FA803F21574E6DBE5671663848538FD66
            968D763CDB55D36E348D4EE74FBB5C4F6EFB5B1D0F4C11EC460FE55D47C2AFF9
            1EEDFF00EB8CBFFA08A93E2C2469E367298DCF6D1B3E3FBD961CFE007E54CF85
            5FF23DDBFF00D7197FF4115295AA58EAA951D4C0B9BDDA7F91D3FC69FF0053A3
            7FBD37FEC95E4F0FFAF8FF00DE1FCEBD63E34FFA9D1BFDE9BFF64AF236CED3B4
            E0E383EF4EA7C61962BE122BD7F33E87F88E37FC3FD4F1DC467FF22257CF2BDA
            BE8EBE55F13FC3F93CA1937B61B900E70C5723F235F380E40CF1C018FAD3ADBA
            39F257684A0FBFF5F91EABF0501FB66B47B79707F37AC0F8ACC1BC77363B5BC6
            0FEB5D97C1CD3DE0D0AFB5075C1B99C2AF1FC2991FFA1161F8579DF8FAF52FBC
            6FAA48872A8E221FF0050A7F507F3A72FE1A268BE7CC2A49745FE47D01A96A50
            E8FA3CFA85C07315BC7BDC20C9C015C69F8BDE1CE7F737FC76F2579FFC7AB77C
            71FF002226B1FF005E8FFCABE713D4FD69D49B8DAC7265D81A38984A552FA3E8
            7A5789FE2C4BA8594B65A3DB496A922956B8988DE01EBB541383EF935E6BDE92
            8EF58CA4E5B9EF50C353A10B53563E91F03FFC88FA2FFD7A27F2A28F041FF8A1
            F45FFAF48FF9515D91D91F235FF8B2F56788F8FBFE47BD638CFEFD78FF00802D
            767F0ABC5B0416DFF08FDECC23F98BDABB700E4E4A73D0E791EB935CCFC4AD2E
            F2C7C6179753C2CB05DB892193AAB0DA011F5041E3D08AE3CF6ED5CB7719DCFA
            55878627091837FD58F76D77E1768DAD6A325EACF716724CD99440576B37F7B0
            54F3CFE7CF739D6B6B6D0FC01E1F9583082DD496777219E47FEA78C6057885A7
            8CFC49630086DF58BA58C0C05721F03EAD9E2B3B50D5350D5A6136A1793DD483
            806572703D86703F2ABF6B1E8B5393FB37113B42AD4BC5136BFABCBAF6B977A9
            48BB7CF7F9533F75470A3DF000FCCD747F0B39F1DC1FF5C64FE55C50E39A9AD6
            EEE6C2513DA5C4B04CB901E262AD8FA820D65195A5CC7AB528A95074A1A6963D
            57E349062D1BFDE9BF925792FB671EFE956AF354D4351082FAFAEAE8213B7CF9
            DA4DB9EB8C9FA555A272E6774460B0EF0F463093BD8F5FF84FE288A5B13E1FBB
            9024F192F6C09FBC87E62A33D4839E3D3E95A9AA7C29D1752D51EF56E2E6D848
            E5E48612BB327938C8E39CFE75E1AACC8C194ED60720838C1F5ADF87C71E2782
            2F2935ABA2A38F9C239FFBE9813FAD691A91B5A470D6CBEAAAAEA61E56B9ECDA
            F6ABA6F817C2AB1DBAA218A3115A41D4B3638FF127FC6BE7A77791DA4762CEC4
            B331EA49EA7F3A9AF2FAEF51B833DEDD4D7331FE395CB1C7B67B7B71507D7A54
            4E77F43AB0582FABA7CCEF27D4FA3BC6FF00F2226B03BFD91BF957CE07AFE35A
            33EBDACDCDBBDBDC6AD7F2C4E36BA3DCBB2B0FA138FD2B3F9C7F9FF3DA9CE4A4
            C597E125868B8C9EEEE25145490C32DC4F1C30C6F24B2305444192C4F61F5ACC
            EE6ECAE7D17E09FF00912345FF00AF48FF00951563C31693697E18D32C6E976C
            F05BA248ABC8071C8068AEF4F43E26ABBCE4D771359D1ACF52D35F4FD4221258
            49F74E30603D88F4FAF6FA1E3C1BC53E17BEF0B6A46DAE7F7904996867518590
            0F5F4603A8FE600AFA518753827DAB1359D1ACF51D364D3F518849A7C98DAD8C
            180F623D00F5EDF43C454A6A48DF038F961A56DE3D4F9A68ADDF14F85EFBC2BA
            91B6B9FDE41265A19D461641EFE8C06323F9802B0BA1AE369A7667D6539C6A45
            4E0EE98B494B4941A052D252D00145145001451450014633C0A29F0C125CCF1D
            BC31B4B24AC11634196727B01EA6806D25762430C97332410C6D2C9230458D06
            4B93D80F535EDFE09F052F86A35BABA449F5C994B73CADB29EBF8FA91D79038C
            9A4F0578297C370ADD5CA24FAE4C9900F2B6CA7AF3EBEA475E838C9AEEEDEDD6
            0E0649639666EA4FB9AE9A74EDAB3E6331CC5D5BD2A4FDDEFDC8869B6E46648D
            657EEF22658FD4D157A8AD8F1C4A6BFDC3919F6A75068030759D1ACF52D364D3
            F5088496127DD38C180F623D07BF6FA1E3C1BC53E17BEF0AEA46DEEB3241265A
            19C0C2C83DFD180C647F30057D28E060F05B3DBD6B1359D16CB51D324D3F5184
            49A7C98C3630603D88F403D7B7D0F11529A923BF038F961A56DE3D4F9A68ADEF
            14F862F7C2BA91B6B9FDE43265A19D461641FD187008FE7C560D71B4D3B33EB2
            9CE3512941DD30A28A28340A28A2800A28A7C10C9753C70431B4B24AC1163419
            2E4F1803D6806D2D58430C9733241146D2C92B0458D064B93D80F535EDDE09F0
            52F86E25BAB98D2E35C99770C9CADB29EBF8FA91D79038C9A3C13E0A5F0D42B7
            572893EB932646795B653D7F1F523AF41C64D7776F6EB074C92C72CCDD49F7AE
            9A74EDAB3E6331CC5D5BD2A4FDDEFDC5B7B75B7520658939666EAC7DFD6A7A28
            AD8F1C5A28A280128A28A00291BEE9F619A28A00C2BED1EC35682E34ABEB7135
            A2ED64524829D71B48E4631C7D48E9C560AFC2BF0AE0036B73D3FE7E9FFC68A2
            B3923BF0D52718E8DA1DFF000AABC29FF3EB73FF00814FFE34BFF0AAFC2BFF00
            3EB73FF814FF00E34514B95763A7DB54FE67F789FF000AABC2BFF3EB73FF0081
            4FFE341F857E1503FE3D6E7FF029FF00C68A28E55D83DB54FE67F789FF000AB3
            C2B8FF008F5B83FF006F2FFE35774EF06E87E1979750D3AD185D2C4C15E5919F
            6E149E3278FC28A29A4AE635AAD47069C9FDE74D6B12C6AF8C96246E73D58E07
            24D58A28AD0F3428A28A005A28A2803FFFD9}
          Stretch = True
          Transparent = True
        end
        object Label3: TLabel
          Left = 190
          Top = 124
          Width = 36
          Height = 12
          Caption = #27969#27700#30721
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 14
          Top = 156
          Width = 33
          Height = 12
          Caption = #35268' '#26684
          Color = 14215660
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 14
          Top = 247
          Width = 26
          Height = 12
          Caption = #21058#22411
          Color = 14215660
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label10: TLabel
          Left = 14
          Top = 126
          Width = 39
          Height = 12
          Caption = #25340#38899#30721
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 190
          Top = 90
          Width = 36
          Height = 12
          Caption = #33521#25991#21517
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 190
          Top = 247
          Width = 48
          Height = 12
          Caption = #33647#21697#24615#36136
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 14
          Top = 95
          Width = 24
          Height = 12
          Caption = #21035#21517
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 190
          Top = 217
          Width = 30
          Height = 12
          Caption = 'DDD'#20540
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 14
          Top = 368
          Width = 48
          Height = 12
          Caption = #26159#21542#30382#35797
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 190
          Top = 370
          Width = 55
          Height = 15
          AutoSize = False
          Caption = #32039#24613#33647#21697
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label4: TLabel
          Left = 14
          Top = 186
          Width = 52
          Height = 12
          Caption = #29983#20135#21378#23478
          Color = 14215660
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label37: TLabel
          Left = 14
          Top = 399
          Width = 48
          Height = 12
          Caption = #33258#21046#33647#21697
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 895
          Top = 169
          Width = 72
          Height = 12
          Caption = '15:'#33647#21697#22823#31867'A'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 894
          Top = 187
          Width = 72
          Height = 12
          Caption = '16:'#33647#21697#22823#31867'B'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 190
          Top = 399
          Width = 24
          Height = 12
          Caption = #20572#29992
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 190
          Top = 277
          Width = 52
          Height = 12
          Caption = #33647#21697#20998#31867
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label41: TLabel
          Left = 14
          Top = 338
          Width = 48
          Height = 12
          Caption = #22269#23478#22522#33647
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 14
          Top = 29
          Width = 48
          Height = 12
          Caption = #33647#21697#32534#21495
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 14
          Top = 65
          Width = 52
          Height = 12
          Caption = #33647#21697#21517#31216
          Color = 14215660
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label48: TLabel
          Left = 14
          Top = 308
          Width = 52
          Height = 12
          Caption = #21457#31080#31867#21035
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label49: TLabel
          Left = 190
          Top = 28
          Width = 36
          Height = 12
          Caption = #26465#30721#21495
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label50: TLabel
          Left = 14
          Top = 277
          Width = 52
          Height = 12
          Caption = #24211#23384#20998#31867
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 14
          Top = 217
          Width = 52
          Height = 12
          Caption = #25209#20934#25991#21495
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 190
          Top = 338
          Width = 48
          Height = 12
          Caption = #30465#32423#22522#33647
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Tag = 13
          Left = 193
          Top = 309
          Width = 48
          Height = 12
          Caption = #38598#20013#37319#36141
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Edt_pym: TEdit
          Tag = 5
          Left = 82
          Top = 121
          Width = 98
          Height = 20
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ImeMode = imClose
          ParentFont = False
          TabOrder = 4
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = Edt_pymKeyPress
        end
        object Edt_ywm: TEdit
          Tag = 4
          Left = 244
          Top = 90
          Width = 98
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = Edt_ywmKeyPress
        end
        object Edt_ddd: TEdit
          Tag = 12
          Left = 245
          Top = 212
          Width = 98
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          Text = '0'
          OnKeyPress = Edt_dddKeyPress
        end
        object ComBox_jx: TComboBox
          Tag = 13
          Left = 82
          Top = 242
          Width = 96
          Height = 20
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnChange = ComBox_jxChange
          OnKeyPress = ComBox_jxKeyPress
        end
        object ComBox_ypzl: TComboBox
          Tag = 14
          Left = 245
          Top = 242
          Width = 96
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnKeyPress = ComBox_ypzlKeyPress
        end
        object Edt_gg: TEdit
          Tag = 7
          Left = 82
          Top = 151
          Width = 260
          Height = 20
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ImeMode = imClose
          ParentFont = False
          TabOrder = 6
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = Edt_ggKeyPress
        end
        object Edt_lsm: TEdit
          Tag = 6
          Left = 244
          Top = 121
          Width = 98
          Height = 20
          Color = clWhite
          Ctl3D = True
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = Edt_lsmKeyPress
        end
        object Edt_bm: TEdit
          Tag = 3
          Left = 82
          Top = 90
          Width = 98
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = Edt_bmKeyPress
        end
        object ComBox_jjyp: TComboBox
          Tag = 18
          Left = 245
          Top = 364
          Width = 96
          Height = 20
          Style = csDropDownList
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          OnKeyPress = ComBox_jjypKeyPress
          Items.Strings = (
            #26159
            #21542)
        end
        object edt_produce: TEdit
          Tag = 8
          Left = 183
          Top = 181
          Width = 158
          Height = 20
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnExit = Ed_ypbhExit
        end
        object edt_lba: TEdit
          Tag = 15
          Left = 979
          Top = 161
          Width = 314
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = edt_lbaKeyPress
        end
        object edt_lbb: TEdit
          Tag = 16
          Left = 979
          Top = 182
          Width = 314
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = edt_lbbKeyPress
        end
        object CmbBx_selfyp: TComboBox
          Tag = 19
          Left = 82
          Top = 394
          Width = 96
          Height = 21
          Style = csDropDownList
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          OnKeyPress = CmbBx_selfypKeyPress
          Items.Strings = (
            #26159
            #21542)
        end
        object CmbBx_ifzy: TComboBox
          Tag = 20
          Left = 245
          Top = 394
          Width = 96
          Height = 21
          Style = csDropDownList
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          OnChange = CmbBx_ifzyChange
          OnKeyPress = CmbBx_ifzyKeyPress
          Items.Strings = (
            #22312#29992
            #20572#29992)
        end
        object com_skintry: TComboBox
          Tag = 17
          Left = 82
          Top = 363
          Width = 96
          Height = 21
          Style = csDropDownList
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          OnKeyPress = com_skintryKeyPress
          Items.Strings = (
            #19981#38656#35201
            #38656#35201)
        end
        object CmbBx_lb: TComboBox
          Tag = 21
          Left = 245
          Top = 272
          Width = 96
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 19
          OnChange = CmbBx_lbChange
          OnKeyPress = CmbBx_lbKeyPress
          Items.Strings = (
            '1:'#35199#33647
            '2:'#20013#33609#33647
            '3:'#20013#25104#33647)
        end
        object CmbBx_basic: TComboBox
          Tag = 11
          Left = 82
          Top = 333
          Width = 96
          Height = 22
          TabOrder = 10
          OnKeyPress = CmbBx_basicKeyPress
          Items.Strings = (
            #26159
            #21542)
        end
        object edt_cjbm: TEdit
          Tag = 8
          Left = 82
          Top = 181
          Width = 98
          Height = 20
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = edt_cjbmKeyPress
        end
        object Ed_ypbh: TEdit
          Left = 82
          Top = 24
          Width = 98
          Height = 20
          Color = clWhite
          Ctl3D = True
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
        end
        object Ed_ym: TEdit
          Left = 82
          Top = 60
          Width = 262
          Height = 20
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ImeMode = imOpen
          ImeName = #35895#27468#25340#38899#36755#20837#27861' 2'
          ParentFont = False
          TabOrder = 1
          OnExit = Ed_ymExit
          OnKeyPress = Ed_ymKeyPress
        end
        object cmbx_fplb: TComboBox
          Tag = 21
          Left = 82
          Top = 303
          Width = 96
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 20
          OnKeyPress = cmbx_fplbKeyPress
          Items.Strings = (
            '1:'#35199#33647
            '2:'#33609#33647
            '3:'#25104#33647)
        end
        object edt_barcode: TEdit
          Left = 244
          Top = 24
          Width = 98
          Height = 22
          TabOrder = 21
          Text = 'edt_barcode'
          OnExit = Ed_ymExit
          OnKeyPress = edt_barcodeKeyPress
        end
        object cmb_StoreClass: TComboBox
          Tag = 21
          Left = 82
          Top = 272
          Width = 96
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 22
          OnChange = cmb_StoreClassChange
          OnKeyPress = cmb_StoreClassKeyPress
          Items.Strings = (
            '1:'#35199#33647
            '2:'#33609#33647
            '3:'#25104#33647
            '4:'#32791#26448)
        end
        object edt_pwh: TEdit
          Tag = 7
          Left = 82
          Top = 212
          Width = 98
          Height = 20
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ImeMode = imClose
          ParentFont = False
          TabOrder = 23
          OnKeyPress = edt_pwhKeyPress
        end
        object cmb_basicProvince: TComboBox
          Tag = 11
          Left = 245
          Top = 333
          Width = 96
          Height = 22
          TabOrder = 24
          OnKeyPress = CmbBx_basicKeyPress
          Items.Strings = (
            #26159
            #21542)
        end
        object ed_status: TEdit
          Left = 306
          Top = 57
          Width = 59
          Height = 24
          Color = clBlue
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
          Text = 'ed_status'
        end
        object cbb_groupbuy: TComboBox
          Tag = 19
          Left = 246
          Top = 303
          Width = 93
          Height = 21
          Style = csDropDownList
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 26
          OnKeyPress = cbb_groupbuyKeyPress
          Items.Strings = (
            #26159
            #21542)
        end
      end
      object GroupBox1: TGroupBox
        Left = 398
        Top = 17
        Width = 490
        Height = 175
        Caption = #33647#21697#21333#20301#20449#24687
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label14: TLabel
          Left = 339
          Top = 28
          Width = 52
          Height = 12
          Caption = #26368#23567#21333#20301
          Color = 14215660
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object Label24: TLabel
          Left = 12
          Top = 28
          Width = 52
          Height = 12
          Caption = #21253#35013#21333#20301
          Color = 14215660
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label25: TLabel
          Left = 12
          Top = 63
          Width = 52
          Height = 12
          Caption = #21058#37327#21333#20301
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 342
          Top = 63
          Width = 48
          Height = 12
          Caption = #25286#20998#31867#21035
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 16
          Top = 153
          Width = 36
          Height = 12
          Caption = #22788#26041#27604
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 14
          Top = 127
          Width = 52
          Height = 12
          Caption = #20303#38498#21806#20215
          Color = 14215660
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Lbl_dw: TLabel
          Left = 157
          Top = 128
          Width = 14
          Height = 12
          Caption = 'dw'
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 12
          Top = 95
          Width = 39
          Height = 12
          Caption = #25209#21457#20215
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 204
          Top = 95
          Width = 26
          Height = 12
          Caption = #36827#20215
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl1: TLabel
          Left = 204
          Top = 126
          Width = 52
          Height = 12
          Caption = #38376#35786#21806#20215
          Color = 14215660
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 339
          Top = 125
          Width = 14
          Height = 12
          Caption = 'dw'
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 204
          Top = 28
          Width = 52
          Height = 12
          Caption = #21253#35013#25968#37327
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label46: TLabel
          Left = 204
          Top = 62
          Width = 57
          Height = 15
          AutoSize = False
          Caption = #22522#26412#21058#37327
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 349
          Top = 95
          Width = 36
          Height = 12
          Caption = #21152#25104#29575
        end
        object ComBox_zxdw: TComboBox
          Tag = 31
          Left = 394
          Top = 23
          Width = 85
          Height = 20
          Style = csDropDownList
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = ComBox_zxdwChange
          OnKeyPress = ComBox_zxdwKeyPress
        end
        object ComBox_jldw: TComboBox
          Tag = 30
          Left = 72
          Top = 23
          Width = 82
          Height = 20
          Style = csDropDownList
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = ComBox_jldwChange
          OnKeyPress = ComBox_jldwKeyPress
        end
        object Combox_cfzxdw: TComboBox
          Tag = 32
          Left = 72
          Top = 58
          Width = 83
          Height = 21
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = Combox_cfzxdwChange
          OnKeyPress = Combox_cfzxdwKeyPress
        end
        object Edt_hsb: TEdit
          Tag = 35
          Left = 261
          Top = 23
          Width = 64
          Height = 20
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Text = '1'
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = Edt_hsbKeyPress
        end
        object edt_cfhsb: TEdit
          Tag = 36
          Left = 72
          Top = 149
          Width = 81
          Height = 20
          TabOrder = 9
          Text = '1'
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = edt_cfhsbKeyPress
        end
        object ComBox_kind: TComboBox
          Tag = 33
          Left = 394
          Top = 58
          Width = 86
          Height = 21
          Style = csDropDownList
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = ComBox_kindKeyPress
          Items.Strings = (
            '0:'#26410#30693
            '98:'#21487#25286#20998
            '99:'#19981#21487#25286#20998)
        end
        object Edt_lsj: TEdit
          Tag = 34
          Left = 72
          Top = 124
          Width = 82
          Height = 20
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = Edt_lsjKeyPress
        end
        object Edt_pfj: TEdit
          Tag = 9
          Left = 72
          Top = 89
          Width = 83
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = Edt_pfjKeyPress
        end
        object Edt_ypjj: TEdit
          Tag = 10
          Left = 261
          Top = 89
          Width = 66
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = Edt_ypjjKeyPress
        end
        object edt_mzlsj: TEdit
          Tag = 34
          Left = 261
          Top = 121
          Width = 68
          Height = 20
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
          OnKeyPress = edt_mzlsjKeyPress
        end
        object edt_dosage: TEdit
          Tag = 35
          Left = 261
          Top = 59
          Width = 68
          Height = 20
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          Text = '1'
          OnEnter = Ed_ypbhEnter
          OnExit = edt_dosageExit
          OnKeyPress = edt_dosageKeyPress
        end
        object cbb_AddRate: TComboBox
          Left = 394
          Top = 89
          Width = 85
          Height = 20
          TabOrder = 11
          Text = '1'
        end
      end
      object GroupBox2: TGroupBox
        Left = 400
        Top = 245
        Width = 490
        Height = 122
        Caption = #22269#23478#21307#20445#20449#24687
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label15: TLabel
          Left = 4
          Top = 22
          Width = 48
          Height = 12
          Caption = #21307#20445#31867#21035
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 5
          Top = 47
          Width = 48
          Height = 12
          Caption = #21307#20445#32534#30721
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 5
          Top = 96
          Width = 48
          Height = 12
          Caption = #21307#20445#22791#27880
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 5
          Top = 72
          Width = 48
          Height = 12
          Caption = #21307#20445#21517#31216
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Combox_yb: TComboBox
          Tag = 22
          Left = 89
          Top = 14
          Width = 296
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edt_ybbm_country: TEdit
          Tag = 23
          Left = 89
          Top = 40
          Width = 296
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edt_ybmc_country: TEdit
          Tag = 23
          Left = 89
          Top = 66
          Width = 296
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edt_ybremark: TEdit
          Tag = 23
          Left = 89
          Top = 94
          Width = 296
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox3: TGroupBox
        Left = 400
        Top = 375
        Width = 489
        Height = 81
        Caption = #33647#21697#23450#20301#20449#24687
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label7: TLabel
          Left = 4
          Top = 29
          Width = 48
          Height = 12
          Caption = #33647#24211#20301#32622
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 208
          Top = 27
          Width = 48
          Height = 12
          Caption = #38376#35786#20301#32622
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 5
          Top = 59
          Width = 48
          Height = 12
          Caption = #38376#35786#20301#32622
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object edt_bankplace: TEdit
          Tag = 27
          Left = 89
          Top = 24
          Width = 100
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
        end
        object edt_inplace: TEdit
          Tag = 28
          Left = 260
          Top = 21
          Width = 101
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
        end
        object edt_outplace: TEdit
          Tag = 29
          Left = 90
          Top = 53
          Width = 100
          Height = 20
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnEnter = Ed_ypbhEnter
          OnExit = Ed_ypbhExit
        end
        object cmbx_jxdw: TComboBox
          Tag = 13
          Left = 259
          Top = 51
          Width = 102
          Height = 20
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Visible = False
        end
      end
      object grp1: TGroupBox
        Left = 402
        Top = 196
        Width = 488
        Height = 47
        Caption = #65288#33647#25151#38646#21806#20215'='#38646#21806#20215'/'#21253#35013#25968#37327#65289
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object Label42: TLabel
          Left = 4
          Top = 25
          Width = 84
          Height = 12
          Caption = #20303#38498#33647#25151#38646#21806#20215
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object lbl_zyyfdw: TLabel
          Left = 190
          Top = 24
          Width = 14
          Height = 12
          Caption = 'dw'
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl3: TLabel
          Left = 209
          Top = 24
          Width = 84
          Height = 12
          Caption = #38376#35786#33647#25151#38646#21806#20215
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object lbl_mzyfdw: TLabel
          Left = 374
          Top = 22
          Width = 14
          Height = 12
          Caption = 'dw'
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edt_xsj: TEdit
          Tag = 34
          Left = 95
          Top = 20
          Width = 77
          Height = 20
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = edt_xsjKeyPress
        end
        object edt_mzxsj: TEdit
          Tag = 34
          Left = 292
          Top = 19
          Width = 77
          Height = 20
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = edt_xsjKeyPress
        end
      end
      object DBGrd_xm: TDBGrid
        Left = 900
        Top = 242
        Width = 405
        Height = 228
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Visible = False
        OnDblClick = DBGrd_xmDblClick
        OnExit = DBGrd_xmExit
        OnKeyPress = DBGrd_xmKeyPress
      end
      object dbgrd_ym: TDBGrid
        Left = 894
        Top = 226
        Width = 387
        Height = 226
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #23435#20307
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 6
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Visible = False
        OnDblClick = dbgrd_ymDblClick
        OnExit = dbgrd_ymExit
        OnKeyPress = dbgrd_ymKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'ypbh'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Caption = #33647#21697#32534#21495
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ym'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Caption = #33647#21517
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gg'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Caption = #35268#26684
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'produce'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Caption = #29983#20135#21378#23478
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 125
            Visible = True
          end>
      end
    end
  end
end
