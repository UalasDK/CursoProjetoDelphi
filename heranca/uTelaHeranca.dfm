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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pjcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 772
    Height = 456
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 432
    object TabSheet1: TTabSheet
      Caption = 'Listagem'
      ExplicitHeight = 404
      object pnlListagemTopo: TPanel
        Left = 0
        Top = 0
        Width = 764
        Height = 42
        Align = alTop
        TabOrder = 0
        object mskPesquisar: TMaskEdit
          Left = 0
          Top = 10
          Width = 282
          Height = 21
          TabOrder = 0
          Text = ''
          TextHint = 'Digite sua pesquisa'
        end
        object btnPesquisar: TBitBtn
          Left = 288
          Top = 8
          Width = 97
          Height = 25
          Caption = '&PESQUISAR'
          TabOrder = 1
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 42
        Width = 764
        Height = 386
        Align = alClient
        DataSource = dtsListagem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
      ExplicitHeight = 404
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
      Width = 75
      Height = 25
      Caption = '&NOVO'
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 90
      Top = 7
      Width = 75
      Height = 25
      Caption = '&ALTERAR'
      TabOrder = 1
    end
    object btnCancelar: TBitBtn
      Left = 171
      Top = 7
      Width = 75
      Height = 25
      Caption = '&CANCELAR'
      TabOrder = 2
    end
    object btnGravar: TBitBtn
      Left = 252
      Top = 7
      Width = 75
      Height = 25
      Caption = '&GRAVAR'
      TabOrder = 3
    end
    object btnApagar: TBitBtn
      Left = 333
      Top = 7
      Width = 75
      Height = 25
      Caption = 'APAGA&R'
      TabOrder = 4
    end
    object btnFechar: TBitBtn
      Left = 685
      Top = 7
      Width = 75
      Height = 25
      Caption = '&FECHAR'
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 414
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