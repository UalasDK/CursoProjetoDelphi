unit uTelaHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, uDTMConexao, uEnum;

type
  TfrmTelaHeranca = class(TForm)
    pgcPrincipal: TPageControl;
    pnlRodape: TPanel;
    TabSheet1: TTabSheet;
    tabManutencao: TTabSheet;
    pnlListagemTopo: TPanel;
    mskPesquisar: TMaskEdit;
    btnPesquisar: TBitBtn;
    grdListagem: TDBGrid;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnNavigator: TDBNavigator;
    qryListagem: TZQuery;
    dtsListagem: TDataSource;
    lblIndice: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure ControlarIndiceTab(pgcPrincipal: TpageControl; indice: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdListagemTitleClick(Column: TColumn);
    procedure mskPesquisarChange(Sender: TObject);
    procedure grdListagemDblClick(Sender: TObject);
  private
    { Private declarations }
    EstadoDoCadastro: TEstadoDoCadastro;
    procedure ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar, btnApagar: TBitBtn; Navegador:TDBNavigator; pgcPrincipal: TPageControl; Flag: Boolean);
    function RetornarCampoTraduzido(Campo: string): string;
    procedure ExibirLabelIndice(Campo: string; aLabel: TLabel);
    function ExisteCampoObrigatorio: Boolean;
    procedure DesabilitarEditPK;
  public
    { Public declarations }
    IndiceAtual: string;
    function Excluir: Boolean; virtual;
    function Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean; virtual;
  end;

var
  frmTelaHeranca: TfrmTelaHeranca;

implementation

{$R *.dfm}
{$region 'OBSERVAÇÕES'}
  //TAG:1 - Chave Primária - PK
  //TAG: 2 - Campos Obrigatórios
{$endregion}

//Esse comando (abaixo) interno do Delphi é muito útil para leitura, criamos uma região e podemos oculta-la inteira e expandi-la
{$region 'FUNÇÕES E PROCEDURES'}
procedure TfrmTelaHeranca.ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar, btnApagar: TBitBtn; Navegador:TDBNavigator; pgcPrincipal: TPageControl; Flag: Boolean);
begin
  btnNovo.Enabled := Flag;
  btnApagar.Enabled := Flag;
  btnAlterar.Enabled := Flag;
  Navegador.Enabled := Flag;
  pgcPrincipal.Pages[0].TabVisible := Flag;
  btnCancelar.Enabled := not(Flag);
  btnGravar.Enabled := not (Flag);
end;

//Procedures de controle de tela
procedure TfrmTelaHeranca.ControlarIndiceTab(pgcPrincipal: TpageControl;
  indice: Integer);
begin
  if (pgcPrincipal.Pages[indice].TabVisible) then
    pgcPrincipal.TabIndex := Indice;
end;

Function TfrmTelaHeranca.RetornarCampoTraduzido (Campo: string) : string;
var i:Integer;
begin
  for i := 0 to QryListagem.Fields.Count-1 do begin
    //Utilizando lowercase para deixar mínusculo tnto o que vem por parametro quanto o que vem da field para evitar problemas de diferença por letras maíusculas e minusculas
    if lowercase(QryListagem.Fields[i].FieldName) = lowercase(Campo) then begin
      Result := QryListagem.Fields[i].DisplayLabel;
      Break;
    end;
  end;
end;


procedure TfrmTelaHeranca.ExibirLabelIndice(Campo: string; aLabel: TLabel);
begin
  aLabel.Caption := RetornarCampoTraduzido(Campo);
end;

function TfrmTelaHeranca.ExisteCampoObrigatorio : Boolean;
var i : Integer;
begin
  Result := False;

  //Verificando cada componente existente na tela
  for i := 0 to ComponentCount -1 do
  begin
    result := False;
    if (Components[i] is TLabeledEdit) then
    begin
      if (TLabeledEdit(Components[i]).Tag = 2) and (TLabeledEdit(Components[i]).Text = EmptyStr) then
      begin
        MessageDlg(TLabeledEdit(Components[i]).EditLabel.Caption + ' é um campo obrigatório', mtInformation, [mbOK], 0);
        TLabeledEdit(Components[i]).SetFocus;
        Result := True;
        Break;
      end;
    end;
  end;

end;

procedure TfrmTelaHeranca.DesabilitarEditPK;
var i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TLabeledEdit) then
      if (TLabeledEdit(Components[i]).Tag = 1) then
      begin
        TLabeledEdit(Components[i]).Enabled := False;
        Break;
      end;
  end;
end;

{$endregion}

{$region 'MÉTODOS VIRTUAIS'}
function TfrmTelaHeranca.Excluir: Boolean;
begin
  ShowMessage('DELETADO');
  Result := True;
end;

function TfrmTelaHeranca.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
begin
  if (EstadoDoCadastro = ecInserir) then
    ShowMessage('Inserir')
  else if (EstadoDoCadastro = ecAlterar) then
    ShowMessage('Alterado');
  result := True; //Creio que isso aqui deve ter sido implementado e não vi, por tanto implementei por conta no final da aula 45
end;
{$endregion}

procedure TfrmTelaHeranca.btnNovoClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, false);
  EstadoDoCadastro := ecInserir;
end;

procedure TfrmTelaHeranca.btnAlterarClick(Sender: TObject);
begin
    ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, false);
    EstadoDoCadastro := ecAlterar;
end;

procedure TfrmTelaHeranca.btnApagarClick(Sender: TObject);
begin
  {REFATURADO NA AULA 45
  if Excluir then
  begin
    ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
    ControlarIndiceTab(pgcPrincipal,0);
    EstadoDoCadastro := ecNenhum;
  end;
  }

  Try
    if Excluir then
    begin
      ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
      ControlarIndiceTab(pgcPrincipal, 0);
    end
    else
    begin
      MessageDLG('Erro na Exclusão', mtError, [mbOK], 0);
    end;
  Finally
    EstadoDoCadastro := ecNenhum;
  End;
end;

procedure TfrmTelaHeranca.btnCancelarClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
  ControlarIndiceTab(pgcPrincipal,0);
  EstadoDoCadastro := ecNenhum;
end;

procedure TfrmTelaHeranca.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTelaHeranca.btnGravarClick(Sender: TObject);
begin
  if ExisteCampoObrigatorio then
    abort;

  Try
    if Gravar(EstadoDoCadastro) then
    begin
      ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
      ControlarIndiceTab(pgcPrincipal,0);
    end

    {REFATORADO NA AUTLA 45
    if (EstadoDoCadastro = ecInserir) then
      showmessage('Inserir')
    else if (EstadoDoCadastro = ecAlterar) then
      showmessage('Alterado')
    else
      showmessage('nada aconteceu');

  Finally
    EstadoDoCadastro := ecNenhum;
  }

    else
    begin
      MessageDLG('Erro na gravação', mtError, [mbOK], 0);
    end;
  Finally
  End;
end;

procedure TfrmTelaHeranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryListagem.Close;
end;

procedure TfrmTelaHeranca.FormCreate(Sender: TObject);
begin
  qryListagem.Connection := dtmPrincipal.ConexaoDB;
  dtsListagem.DataSet := qryListagem;
  grdListagem.DataSource := dtsListagem;
  grdListagem.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgCancelOnExit,dgTitleClick,dgTitleHotTrack]
end;

procedure TfrmTelaHeranca.FormShow(Sender: TObject);
begin
  if (QryListagem.SQL.Text <> EmptyStr) then begin
    //Ordena pelo campo clicado
    QryListagem.IndexFieldNames := IndiceAtual;
    ExibirLabelIndice(IndiceAtual, lblIndice);
    QryListagem.Open;
  end;
  ControlarIndiceTab(pgcPrincipal,0);
  DesabilitarEditPK;
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
end;

procedure TfrmTelaHeranca.grdListagemDblClick(Sender: TObject);
begin
  btnAlterar.Click;
end;

procedure TfrmTelaHeranca.grdListagemTitleClick(Column: TColumn);
begin
  IndiceAtual := Column.FieldName;
  QryListagem.IndexFieldNames := IndiceAtual;
  ExibirLabelIndice(IndiceAtual, lblIndice);
end;

procedure TfrmTelaHeranca.mskPesquisarChange(Sender: TObject);
begin
  qryListagem.Locate(IndiceAtual, TMaskEdit(Sender).Text, [loPartialKey]);
  //Abaixo o mesmo que a linha superior, proém um estou pegando pela classe o outro diretamente pelo componente
  //Usando a classe temos a vantagem que em caso de mudança de nome do objeto o código não quebra, continua rodando sem necessidade de adaptações.
  //O Sender indica qual objeto fez a chamada
  //qryListagem.Locate(IndiceAtual, mskPesquisar.Text, [loPartialKey]);
end;

end.
