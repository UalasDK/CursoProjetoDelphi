inherited frmCadCategoria: TfrmCadCategoria
  Caption = 'Cadastro de Categorias'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 764
      ExplicitHeight = 428
      inherited grdListagem: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'categoriaId'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 365
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      object edtCategoriaId: TLabeledEdit
        Left = 32
        Top = 88
        Width = 121
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object edtDescricao: TLabeledEdit
        Tag = 1
        Left = 32
        Top = 144
        Width = 465
        Height = 21
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 30
        TabOrder = 1
      end
    end
  end
  inherited pnlRodape: TPanel
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited qryListagem: TZQuery
    SQL.Strings = (
      'SELECT  categoriaId,'
      '        descricao'
      'FROM categorias')
    object qryListagemcategoriaId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaId'
      ReadOnly = True
    end
    object qryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
  end
end
