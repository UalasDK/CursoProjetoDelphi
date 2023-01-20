inherited frmCadCategoria: TfrmCadCategoria
  Caption = 'Cadastro de Categorias'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    inherited TabSheet1: TTabSheet
      inherited pnlListagemTopo: TPanel
        ExplicitLeft = 0
        ExplicitTop = 0
        inherited mskPesquisar: TMaskEdit
          Height = 21
          ExplicitHeight = 21
        end
      end
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
