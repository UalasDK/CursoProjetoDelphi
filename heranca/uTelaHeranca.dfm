object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O T'#205'TULO'
  ClientHeight = 497
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 772
    Height = 456
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Listagem'
      object pnlListagemTopo: TPanel
        Left = 0
        Top = 0
        Width = 764
        Height = 57
        Align = alTop
        TabOrder = 0
        object lblIndice: TLabel
          Left = 3
          Top = 5
          Width = 75
          Height = 13
          Caption = 'CampoPesquisa'
        end
        object mskPesquisar: TMaskEdit
          Left = 0
          Top = 26
          Width = 282
          Height = 21
          TabOrder = 0
          Text = ''
          TextHint = 'Digite sua pesquisa'
          OnChange = mskPesquisarChange
        end
        object btnPesquisar: TBitBtn
          Left = 288
          Top = 24
          Width = 97
          Height = 27
          Caption = '&PESQUISAR'
          TabOrder = 1
          Visible = False
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 57
        Width = 764
        Height = 371
        Align = alClient
        DataSource = dtsListagem
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = grdListagemDblClick
        OnTitleClick = grdListagemTitleClick
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 456
    Width = 772
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnNovo: TBitBtn
      Left = 9
      Top = 7
      Width = 81
      Height = 25
      Caption = '&NOVO'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF686868
        6868686868686767676767676767676767676767676666666666666666666666
        66666666FF00FFFF00FFFF00FF767676FCFCFCF7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F6F6F6F6F6F6F6F6F6FCFCFC747474FF00FFFF00FFFF00FF818181
        F7F7F7E0E0E0E1E1E1E1E1E1E1E1E1E1E1E1E0E0E0E0E0E0DEDEDEDDDDDDF6F6
        F67F7F7FFF00FFFF00FFFF00FF8B8B8BF8F8F8E3E3E3E5E5E5E5E5E5E5E5E5E5
        E5E5E3E3E3E2E2E2E1E1E1E0E0E0F7F7F78A8A8AFF00FFFF00FFFF00FF959595
        F8F8F8E7E7E7E7E7E7E9E9E9E9E9E9E7E7E7E7E7E7E6E6E6E5E5E5E3E3E3F8F8
        F8929292FF00FFFF00FFFF00FF9A9A9AFAFAFAEAEAEAEBEBEBEBEBEBEBEBEBEB
        EBEBEAEAEAEAEAEAE9E9E9E6E6E6F8F8F8999999FF00FFFF00FFFF00FFA1A1A1
        FBFBFBEDEDEDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDEDEDEBEBEBEAEAEAFAFA
        FAA0A0A0FF00FFFF00FFFF00FFA5A5A5FBFBFBEFEFEFF0F0F0F2F2F2F2F2F2F0
        F0F0F0F0F0EFEFEFEEEEEEEDEDEDFAFAFAA5A5A5FF00FFFF00FFFF00FFA9A9A9
        FBFBFBF2F2F2F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F2F2F2F0F0F0EEEEEEFBFB
        FBA7A7A7FF00FFFF00FFFF00FFABABABFCFCFCF4F4F4F6F6F6F6F6F6F6F6F6F6
        F6F6F4F4F4F3F3F3F2F2F2F0F0F0FBFBFBABABABFF00FFFF00FFFF00FFACACAC
        FCFCFCF6F6F6F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F6F6F3F3F3F2F2F2FBFB
        FBACACACFF00FFFF00FFFF00FFADADADFCFCFCF7F7F7F8F8F8F8F8F8FAFAFAF8
        F8F8F8F8F8F7F7F7F6F6F6F3F3F3FCFCFCADADADFF00FFFF00FFFF00FFAFAFAF
        FEFEFEF8F8F8FAFAFAFAFAFAFAFAFAFAFAFAF8F8F8F7F7F7AFAFAFBCBCBCD0D0
        D0ADADADFF00FFFF00FFFF00FFAFAFAFFEFEFEFAFAFAFAFAFAFBFBFBFBFBFBFB
        FBFBFAFAFAF8F8F8BCBCBCD9D9D9AFAFAFFF00FFFF00FFFF00FFFF00FFAFAFAF
        FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF8F8F8D0D0D0AFAFAFFF00
        FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
        AFAFAFAFAFAFAFAFAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Left = 90
      Top = 7
      Width = 81
      Height = 25
      Caption = '&ALTERAR'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FF00FFFF00FF
        FF00FF7F331B8833138A37128A3B168A3B16FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF84351E8E32107C321FFF00FFFF00FFFF00FF93
        4112853F1EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF35221D35221D
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8C4219984A13984A13FF00FFFF00
        FFFF00FFFF00FFFF00FF35221D1C63780076A900699A004C88FF00FFFF00FFFF
        00FFFF00FFFF00FF9A4E15A8590FA55A12A65C14B36810AA6214FF00FF02AAD8
        00B6EA036C970930940B0983FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0281AB00BEEE03161707119C0C16980B0C83FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0281AB
        056AF2061C7402000007119C0C17990B0C83FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0B1CBB2555FF061C7402000007119C0C
        169C0B0C82FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0F26BF2455FF061C7402000007119C0C169C0B0C83FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1028C22455FF061C7402
        000007119C0C169C0A0C83FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF1129C42454FF061C7402000007119C0B169D0B0C83FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF112CC924
        55FF061C7402000007119C07119C0A0C83FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF132FCD2354FF061C7400000007119C999C
        D9171895FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF1531D11E4EFF061C74A3A19A7B7BD700018FFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1532D2ACBFFF6C76E10000
        A6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF2F31A4020EAAFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnCancelar: TBitBtn
      Left = 171
      Top = 7
      Width = 81
      Height = 25
      Caption = '&CANCELAR'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF892602FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF8A27039C34028A2703FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8A2703AD4101AB3E018A27
        03FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF8A27038E2903B849009F35018A2703FF00FFFF00FF892602892602
        8926028926028926028926028926028A27038A2703FF00FF8A27038E2903B849
        009830028A2703FF00FF892602D8721BC65B0CB64902B44300B54500B64500B6
        46009C3402892602FF00FF8A2703932E02B849008E2903FF00FF892602FFA637
        E27B1ED86C10892602892602892602892602892602FF00FFFF00FFFF00FF8A27
        03A63B01A63B018A2703892602FFAA39E27B1EDE791EC1590F872302FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF902B02B64500892703892602FFAA39
        A03B0A8A2803F6932AAC460C872402FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF892603C45100892603892602FFAB3A8926028623019D3809FA982EC25B1287
        2402FF00FFFF00FFFF00FFFF00FF8A2703932D02BC4B00892603892602FFAB3A
        892602FF00FF8824029E3809EB8928D16C198E2803892502FF00FF8A26038926
        03B14300A63B018A2703892602FFAC3A892602FF00FFFF00FF8925028F2A03D5
        701FEA8623AB43099A3403972F02B14300B645008E2903FF00FF882402FB9C33
        892602FF00FFFF00FFFF00FF892602882402A5400CCB6516CB600FB246039A33
        028926038A2703FF00FFFF00FF892502FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF8926028925028926028926038A2703FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnGravar: TBitBtn
      Left = 252
      Top = 6
      Width = 81
      Height = 25
      Caption = '&GRAVAR'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF823909
        8239098239096046296C6C6C6D6D6D6666667B7B7B6D6D6D6464645353536046
        297E2801652803652803FF00FF843A09B6510DB7510E6046296969697E28017E
        2801A4A4A4AAAAAA9090906D6D6D6046297E28017D2F03782C04FF00FF90410A
        BB560FBC560F6046296464647E28017E2801B6B6B6C1C1C1A1A1A17979796046
        297E28017D3004782C04FF00FF93440CC05B11C15C116046295E5E5E7E28017E
        2801C6C6C6DADADAB8B8B88686866046297E28017F3204792D04FF00FF97480D
        C56215C66416604629595959595959595959C9C9C9F3F3F3D0D0D09696966046
        297E28018033047B2E05FF00FF9A5016CA6E23CB702692561F60462960462960
        46296046296046296046296046296A3711772E03893A077D2F05FF00FF9E5920
        BB6A2CC4956FC1926DBF8F6ABC8C67BA8862B6835CB5815AB48059B27F59B17E
        58B07D58A3460F7E3005FF00FFA1632DC48653EBEBEBE7E7E7E2E2E2DDDDDDD9
        D9D9D4D4D4D0D0D0CBCBCBCACACACACACACACACAA95D2B7F3205FF00FFA56B38
        C2885ADCDCDCD8D8D8D4D4D4D1D1D1CECECECACACAC7C7C7C4C4C4C0C0C0BDBD
        BDBBBBBBA65B287F3306FF00FFA97343CC966AFEFEFEFBFBFBF7F7F7F2F2F2EE
        EEEEE9E9E9E5E5E5E0E0E0DADADAD7D7D7D1D1D1AB5F2D803306FF00FFAA784C
        C7936BE1E1E1E1E1E1E1E1E1E0E0E0DDDDDDD9D9D9D7D7D7D3D3D3CFCFCFCCCC
        CCC9C9C9AA5E2B803306FF00FFAB7A50CF9D75FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFCFCFCF8F8F8F4F4F4EFEFEFEBEBEBE6E6E6B16530813406FF00FFAB794D
        C7956CE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1DEDEDEDCDC
        DCD8D8D8AD622D803406FF00FFAB794DBB835AFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFAAA6030762D04FF00FFAB794D
        BB835A2A16792A16792A16792A16792A16792A16792A16792A16792A16792A16
        792A1679AA6030762D04FF00FF9D66427F412D340D59340D59340D59340D5934
        0D59340D59340D59340D59340D59340D59340D596B26146D2903}
      TabOrder = 3
      OnClick = btnGravarClick
    end
    object btnApagar: TBitBtn
      Left = 339
      Top = 6
      Width = 81
      Height = 25
      Caption = 'APAGA&R'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        2D2BAA252595FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0101
        60000073FF00FFFF00FFFF00FF3836B61111B81C1CB82F2FA4FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF06066D01018A00008B020074FF00FF3F3FBB1616C5
        0A0AC20A0AC02222C43737ADFF00FFFF00FFFF00FFFF00FF11117B0505910000
        9000009000008B0200743B3BB22C2CD30D0DD00D0DCE0C0CC92828CC3D3DB4FF
        00FFFF00FF1F1F8E0C0C9F00009200009000009000008800005DFF00FF4747C1
        3333DE1111DA0F0FD50D0DCF2A2AD13C3CB42F2FA41717B40303A30101990000
        91010189010160FF00FFFF00FFFF00FF5454CC3C3CE71313E11111DA0E0ED328
        28CF2222C60707B50505AA0303A0060693050566FF00FFFF00FFFF00FFFF00FF
        FF00FF5C5CD33F3FEA1414E31111DC0E0ED10C0CC70909BC0606B10D0DA40E0E
        77FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5B5BD03D3DE61414E311
        11DA0D0DCF0A0AC21616B5181886FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF6E6ECE5B5BE92020E71313E10F0FD40C0CC91616B7181887FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7878CE7474E75353EE4848ED35
        35E92020DD1111CE0A0ABF0F0FAB0E0E79FF00FFFF00FFFF00FFFF00FFFF00FF
        7F7FCB8787E56D6DF26363F05757EF5C5CDE5252D83B3BDA2D2DCE1F1FC01818
        A5111176FF00FFFF00FFFF00FF8484C79797E38484F47B7BF37070F27272E05B
        5BBB4D4DB15151CF4141D43838C92F2FBD2929A51B1B78FF00FF8686C2A0A0E0
        9999F69191F68888F48383DE6767BCFF00FFFF00FF4747A55050C54242CB3737
        C02E2EB52929A01D1D7A9393B7A5A5EAA1A1F79A9AF69292DD6E6EBDFF00FFFF
        00FFFF00FFFF00FF3F3F9C4A4ABC3B3BC03232B52D2DA92B2B8EFF00FF9594B6
        A7A7E99D9DDC7676BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3C3C984141
        B53535B0343495FF00FFFF00FFFF00FF9796B68080C0FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF3636933E3E9AFF00FFFF00FF}
      TabOrder = 4
      OnClick = btnApagarClick
    end
    object btnFechar: TBitBtn
      Left = 685
      Top = 7
      Width = 75
      Height = 25
      Caption = '&FECHAR'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF000288010893010B99010C99010893000389FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000186010D9D021CAF021FB402
        1FB5021FB5021FB2021CB0010F9F000287FF00FFFF00FFFF00FFFF00FFFF00FF
        00038A0118B2021FB7021EB1021DB1021DB1021DB1021DB1021EB2021FB40219
        AC00048EFF00FFFF00FFFF00FF0001830118BB0220CC011CBF0015B4011AB002
        1DB1021DB1011CB00015AD011BB0021FB4021AAC000287FF00FFFF00FF010CA7
        0121E0011CD30726CC4966D70B28BC0018B00019AF0622B44A66CE0D2BB7011B
        B0021FB5010F9FFF00FF000187011CDC0120ED0017DC3655E2FFFFFFA4B4ED05
        20BB0119B28B9EE1FFFFFF4E6ACF0014AC021EB2021CB000038900069A0120F8
        011FF6001DE9031FE1738BEEFFFFFFA0B1ED93A5E7FFFFFF91A4E20823B4011B
        B0021DB1021FB4010895020CAA0A2EFE0323FB011FF6001CEB0018E1788FF0FF
        FFFFFFFFFF96A7EA021BB50019AF021DB1021DB10220B5010C99040EAC294DFE
        0D30FB011FFA001CF7011CEE8EA1F4FFFFFFFFFFFFA6B6EE0520C20018B6021D
        B1021DB10220B5010B980208A04162FB2F51FC001EFA0725FA8AA0FEFFFFFF8E
        A3F67991F2FFFFFFA3B4EE0C29C6011BB8021DB4021FB2000793000189314FEF
        7690FF0F2DFA3354FBFFFFFF91A5FE021EF30017E7738BF3FFFFFF4765E00016
        C2021FBD021CB2000288FF00FF0C1BBC819AFF728BFE1134FA3456FB0526FA00
        1CFA001CF40220ED3353ED0625DA011DD00220CB010DA1FF00FFFF00FF000189
        2943E6A5B7FF849AFC2341FB0323FA011FFA011FFA001EF7011BEE021FE50121
        E20118BF000184FF00FFFF00FFFF00FF01038F2A45E693A9FFABBBFF758FFE49
        69FC3658FB3153FC2346FC092CF70118CB00038BFF00FFFF00FFFF00FFFF00FF
        FF00FF0001890F1DBF3E5BF36B87FE728CFF5E7BFE395BFB1231EB010FB50001
        84FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000189030AA306
        11B2050FB10107A0000188FF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 415
      Top = 7
      Width = 188
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object qryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Params = <>
    Left = 468
    Top = 24
  end
  object dtsListagem: TDataSource
    DataSet = qryListagem
    Left = 548
    Top = 24
  end
end
