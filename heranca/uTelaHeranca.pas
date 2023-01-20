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
  private
    { Private declarations }
    EstadoDoCadastro: TEstadoDoCadastro;
    procedure ControlarBotoes(btnNovo, btnAlterar, btnCancelar,btnGravar, btnApagar: TBitBtn; Navegador:TDBNavigator; pgcPrincipal: TPageControl; Flag: Boolean);
    function RetornarCampoTraduzido(Campo: string): string;
  public
    { Public declarations }
    IndiceAtual: string;
  end;

var
  frmTelaHeranca: TfrmTelaHeranca;

implementation

{$R *.dfm}


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
    if QryListagem.Fields[i].FieldName = Campo then begin
      Result := QryListagem.Fields[i].DisplayLabel;
      Break;
    end;
  end;
end;

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
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
  ControlarIndiceTab(pgcPrincipal,0);
  EstadoDoCadastro := ecNenhum;

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
    Try
      ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
      ControlarIndiceTab(pgcPrincipal,0);

      if (EstadoDoCadastro = ecInserir) then
        showmessage('Inserir')
      else if (EstadoDoCadastro = ecAlterar) then
        showmessage('Alterado')
      else
        showmessage('nada aconteceu');

    Finally
      EstadoDoCadastro := ecNenhum;
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
end;

procedure TfrmTelaHeranca.FormShow(Sender: TObject);
begin
  if (QryListagem.SQL.Text <> EmptyStr) then begin
    QryListagem.Open;
  end;
end;

procedure TfrmTelaHeranca.grdListagemTitleClick(Column: TColumn);
begin
  IndiceAtual := Column.FieldName;
  QryListagem.IndexFieldNames := IndiceAtual;
  lblIndice.Caption := RetornarCampoTraduzido(IndiceAtual);
end;

end.
