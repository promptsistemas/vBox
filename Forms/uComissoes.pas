unit uComissoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls,DB, Vcl.Mask, ACBrBase, ACBrSocket, ACBrCEP, Vcl.XPMan,
  Vcl.ActnMan, Vcl.ActnColorMaps, ACBrConsultaCPF, ACBrConsultaCNPJ,
  ACBrValidador;

type
  TfrmComissoes = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    BB_NOVO: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    BB_SAIR: TBitBtn;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    L_CPF_CNPJ: TLabel;
    DBEdit2: TDBEdit;
    L_NOME: TLabel;
    Label3: TLabel;
    ACBrCEP1: TACBrCEP;
    DBText1: TDBText;
    Label17: TLabel;
    Label18: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ACBrValidador1: TACBrValidador;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label19: TLabel;
    DBText2: TDBText;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BB_NOVOClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BB_GRAVARClick(Sender: TObject);
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure BB_CANCELARMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bb_enviaDJClick(Sender: TObject);
    function TiraPontoeVirgula(sTexto:String):String;
    function  ColocaTextoDir(Texto: string; Qtd: integer; Ch: Char): string;
    procedure BB_TODOSClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenCiaBotoes;
    function cpf(num: string): boolean;
    function cgc(num: string): boolean;
    procedure ConsultaCNPJ;
    procedure ConsultaCPF;
    Procedure verificaClienteExiste;


  public
    { Public declarations }
  end;

var
  frmComissoes: TfrmComissoes;
  Tipo :  string;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM, uConsultaCNPJ, uConsultaCPF, uMenu,
  uPesquisaPadrao, uCadCliente;

function AjustaStr ( str: String; tam: Integer ): String;
begin
while Length ( str ) < tam do
str := str + ' ';
if Length ( str ) > tam then
str := Copy ( str, 1, tam );
Result := str;
end;


Function RemoveAcentos(Str:String): String;
{Remove caracteres acentuados de uma string}
Const ComAcento = '����������������������������';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
Var
x : Integer;
Begin
For x := 1 to Length(Str) do
  Begin
  if Pos(Str[x],ComAcento)<>0 Then
  begin
  Str[x] := SemAcento[Pos(Str[x],ComAcento)];
  end;
  end;
Result := Str;
end;


procedure TfrmComissoes.BB_CANCELARClick(Sender: TObject);
begin

  DM.cdsServico.Cancel;
  GerenCiaBotoes;
end;

procedure TfrmComissoes.BB_CANCELARMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  Tipo := 'Cancelar';
end;

procedure TfrmComissoes.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  DM.cdsServico.Edit;
  GerenCiaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmComissoes.bb_enviaDJClick(Sender: TObject);
var arq: TextFile;
linha, aliquota,vlVenda,F_J,dtCadastro,dtNascimento,vlLimite: String;
begin
end;

procedure TfrmComissoes.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Cliente ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsServico.Delete;
    if DM.cdsServico.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu excluir este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsServico.ApplyUpdates(0);
      GerenciaBotoes;
    end;
  end
  else
  begin
    ShowMessage('Cliente N�o Exclu�do');
  end;
    GerenciaBotoes;

end;

procedure TfrmComissoes.BB_GRAVARClick(Sender: TObject);
begin

  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := 'SELECT MAX(ID_SERVICO) FROM TB_SERVICOS';
    DM.cdsDinamica.Open;
    DM.cdsServicoCOMISSAO.AsFloat := DM.cdsMotoristaCOMISSAO.AsFloat;
    DM.cdsServicoID_SERVICO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;

    if DM.cdsServico.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      bb_enviaDJClick(Self);
      DM.cdsServico.ApplyUpdates(0);
      GerenCiaBotoes;
    end;
  end
  else
  begin
    if DM.cdsServico.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu Alterar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      bb_enviaDJClick(Self);
      DM.cdsServico.ApplyUpdates(0);
      GerenCiaBotoes;
    end;

  end;

end;

procedure TfrmComissoes.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsServico.Open;
  DM.cdsServico.Insert;
  DM.cdsServicoDT_SERVICO.AsDateTime := Now;
  GerenCiaBotoes;
  DBEdit1.SetFocus;
end;

procedure TfrmComissoes.BB_PESQUISARClick(Sender: TObject);
begin
  Pesquisa(DM.cdsServico,['NR_PEDIDO','CLIENTE','FUNCIONARIO'],['N� Pedido','Cliente','Separador'],
    [8,25,20],'','','','','Comiss�es','Comiss�es');
 { frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Veiculo';
  frmPesquisaPadrao.CDS := DM.cdsServico;
  frmPesquisaPadrao.Tabela := 'TB_VEICULO V';
  frmPesquisaPadrao.CampoBusca  := 'M.NOME';
  frmPesquisaPadrao.CampoBusca2 := 'O.DESCRICAO';
  frmPesquisaPadrao.CampoBusca3 := 'V.PLACA_CARRETA';
  frmPesquisaPadrao.CampoBusca4 := 'V.PROPIETARIO';
  frmPesquisaPadrao.CampoChave  := 'M.NOME';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Ve�culos';
  frmPesquisaPadrao.Sql            := ' SELECT V.ID_VEICULO, V.ID_MARCA, V.ID_MODELO, V.UF_PLACA, V.ANO_MODELO, V.ANO_FABRICACAO, '+
                                      ' V.COR, V.CHASSI, V.RNTC_ANTT, V.PLACA_CARRETA, V.UF_PLACA_CARRETA, V.PROPIETARIO, '+
                                      ' V.CPF_CNPJ, V.ENDERECO, V.NUMERO, V.BAIRRO, V.COMPLEMENTO, V.TELEFONE, V.CEP, V.DT_ULT_MANU,'+
                                      ' V.RENAVAM, V.COD_MUNIC, M.NOME AS MARCA, O.DESCRICAO AS MODELO, C.NOME AS CIDADE, C.UF AS UF ';

  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Proprietario';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'PROPIETARIO';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 150;


  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'Marca';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'MARCA';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 150;

  frmPesquisaPadrao.dbgPesquisa.Columns[2].Title.Caption := 'Modelo';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].FieldName:= 'MODELO';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].Width:= 150;

  frmPesquisaPadrao.dbgPesquisa.Columns[3].Title.Caption := 'Placa';
  frmPesquisaPadrao.dbgPesquisa.Columns[3].FieldName:= 'PLACA_CARRETA';
  frmPesquisaPadrao.dbgPesquisa.Columns[3].Width:= 80;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao); }

end;

procedure TfrmComissoes.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmComissoes.BB_TODOSClick(Sender: TObject);
var arq: TextFile;
linha, aliquota,vlVenda,F_J,dtCadastro,dtNascimento,vlLimite: String;
begin
end;

procedure TfrmComissoes.Button1Click(Sender: TObject);
var i : integer;
begin
end;

function TfrmComissoes.cgc(num: string): boolean;
var
 n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
 d1,d2: integer;
 digitado, calculado: string;
begin
 n1:=StrToInt(num[1]);
 n2:=StrToInt(num[2]);
 n3:=StrToInt(num[3]);
 n4:=StrToInt(num[4]);  // Retira cada numero do Edit, e joda p/ variavel
 n5:=StrToInt(num[5]);
 n6:=StrToInt(num[6]);
 n7:=StrToInt(num[7]);
 n8:=StrToInt(num[8]);
 n9:=StrToInt(num[9]);
 n10:=StrToInt(num[10]);
 n11:=StrToInt(num[11]);
 n12:=StrToInt(num[12]);
 d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=inttostr(d1)+inttostr(d2);
 digitado:=num[13]+num[14];
 if calculado=digitado then
   cgc:=true
  else
   cgc:=false;

end;

function TfrmComissoes.ColocaTextoDir(Texto: string; Qtd: integer;
  Ch: Char): string;
var
  x: integer;
  str: string;
begin
  if  Length(Texto) > Qtd then
      Result := Copy( Texto, (Length(Texto)-Qtd) + 1, Length(Texto) )
  else
    begin
      str := '';
      for x := Length(Texto) to Qtd - 1 do
      begin
        str := str + Ch;
      end;
      Result := str + Texto;
    end
  {endif};

end;

procedure TfrmComissoes.ConsultaCNPJ;
begin
  frmConsultaCNPJ.ClienteFornecedor := 'veiculo';
  frmConsultaCNPJ.ShowModal;
end;

procedure TfrmComissoes.ConsultaCPF;
begin
  frmConsultaCPF.ClienteVendedor := 'veiculo';
  frmConsultaCPF.ShowModal;
end;

function TfrmComissoes.cpf(num: string): boolean;
var
 n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
 d1,d2: integer;
 digitado, calculado: string;
begin
 n1:=StrToInt(num[1]);
 n2:=StrToInt(num[2]);
 n3:=StrToInt(num[3]);
 n4:=StrToInt(num[4]);
 n5:=StrToInt(num[5]);
 n6:=StrToInt(num[6]);
 n7:=StrToInt(num[7]);
 n8:=StrToInt(num[8]);
 n9:=StrToInt(num[9]);
 d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=inttostr(d1)+inttostr(d2);
 digitado:=num[10]+num[11];
 if calculado=digitado then
   cpf:=true
  else
   cpf:=false;
end;

procedure TfrmComissoes.DBComboBox1Exit(Sender: TObject);
begin

  if Tipo = 'Cancelar' then
  begin
    DM.cdsServico.Cancel;
    GerenCiaBotoes;
    Exit;
  end;

end;

procedure TfrmComissoes.DBEdit1Exit(Sender: TObject);
//var
//i,j : integer;
//texto,textofinal,result:string;

begin



{texto := dbedit1.text;
textofinal := '';
for i:=1 to length(texto) do
begin
 if not((copy(texto,i,1) = '-')or(copy(texto,i,1) = '.')or(copy(texto,i,1) = '/')) then
begin
 textofinal := textofinal+copy(texto,i,1);
end;
end;
 result := textofinal;

if ( DM.cdsServicoCPF_CNPJ.EditMask = '##.###.###/####-##') or (DM.cdsServicoCPF_CNPJ.EditMask = '###.###.###-##') then
 begin
   DM.cdsServicoCPF_CNPJ.EditMask := '';
   DBEdit2.SetFocus;
   Exit;
 end;

  DM.cdsServicoCPF_CNPJ.EditMask := '';
  if Tipo = 'Cancelar' then
  begin
    DM.cdsServico.Cancel;
    GerenCiaBotoes;
    Exit;
  end;
  verificaClienteExiste;

  if (DBEdit1.Text <> ' .  .   /    -  ') and (DBEdit1.Text <> '   .   .   -  ') then
  begin
   if DBComboBox1.Text= 'Juridica' then
   begin
      If not cgc(result) then  //Se a fun�ao CGC retornar Falso, Nao libera o Focus
      Begin
        ShowMessage('CNPJ Inv�lido !!');
        DBEdit1.SetFocus;
        Exit;
      END;
   end;

   if DBComboBox1.Text = 'Fisica' then
   begin

      If not cpf(result) then  //Se a fun�ao CGC retornar Falso, Nao libera o Focus
      Begin
        ShowMessage('CPF Inv�lido !!');
        DBEdit1.SetFocus;
        Exit;
      END;
   end;
  end
  else
  begin
    ShowMessage('Nenhum N�mero Informado. Caso Seja Nulo Preencher com Zeros.');
    DBEdit1.SetFocus;
  end;}

end;

procedure TfrmComissoes.DBEdit6Enter(Sender: TObject);
begin
  if NOT(DM.cdsServicoCOMISSAO.IsNull) then
  begin
    DM.cdsServicoVL_RECEBER.AsFloat := (DM.cdsServicoVL_UNIT.AsFloat * DM.cdsServicoCOMISSAO.AsFloat)/10;
  end;
end;

procedure TfrmComissoes.DBEdit6Exit(Sender: TObject);
begin
  BB_GRAVAR.SetFocus;
end;

procedure TfrmComissoes.DBLookupComboBox1Enter(Sender: TObject);
begin
  DM.cdsCliente.Open;
end;

procedure TfrmComissoes.DBLookupComboBox1Exit(Sender: TObject);
begin
  DM.cdsServicoID_CLIENTE.AsInteger := DM.cdsClienteID_CLIENTE.AsInteger;
end;

procedure TfrmComissoes.DBLookupComboBox2Enter(Sender: TObject);
begin
  DM.cdsMotorista.Open;
end;

procedure TfrmComissoes.DBLookupComboBox2Exit(Sender: TObject);
begin
  DM.cdsServicoID_MOTORISTA.AsInteger := DM.cdsMotoristaID_MOTORISTA.AsInteger;
  DM.cdsServicoCOMISSAO.AsFloat       := DM.cdsMotoristaCOMISSAO.AsFloat;
end;

procedure TfrmComissoes.DBMemo1Exit(Sender: TObject);
begin
  BB_GRAVAR.SetFocus;
end;

procedure TfrmComissoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.cdsServico.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    Action := caFree;
    frmComissoes := nil;
    DM.cdsServico.Close;
  end;
end;

procedure TfrmComissoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmComissoes.FormShow(Sender: TObject);
begin
  DM.cdsServico.Open;
  GerenCiaBotoes;

  if DM.cdsServico.RecordCount > 0 then
  begin
    DM.cdsMotorista.Open;
    DM.cdsCliente.Open;
  end;
end;

procedure TfrmComissoes.GerenCiaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsServico.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsServico.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  Panel2.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmComissoes.SpeedButton1Click(Sender: TObject);
begin
{  if DBComboBox1.Text = 'Juridica' then
    ConsultaCNPJ
  else
    ConsultaCPF;
}
end;

procedure TfrmComissoes.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

function TfrmComissoes.TiraPontoeVirgula(sTexto: String): String;
var
 Temp_01 : string;
 Temp_03, conta: Integer;
begin
 Conta := 0;
 Temp_03 := length(sTexto);
while conta < temp_03 do
  begin
   Conta := Conta + 1;
    Temp_01 := Copy(Stexto,conta,1);
  if Temp_01 = '.' then
 begin
  sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
end;
if Temp_01 = ',' then
 begin
  sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
end;
if Temp_01 = '/' then
 begin
  sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
end;
if Temp_01 = '-' then
 begin
  sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
end;

end;
Result := sTexto;
end;

procedure TfrmComissoes.verificaClienteExiste;
var
Codigo, Nome : string;
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText:='SELECT C.ID_CLIENTE,C.NOME FROM TB_CLIENTE C WHERE C.CNPJ_CPF ='+QuotedStr(DBEdit1.Text);
    DM.cdsDinamica.Open;

    codigo:= DM.cdsDinamica.Fields[0].AsString;
    Nome  := DM.cdsDinamica.Fields[1].AsString;
    if DM.cdsDinamica.IsEmpty then
    begin

    end
    else
    begin
      ShowMessage('       Cliente J� Cadastrado :   '+#13+
                  '                                      '+#13+
                  'C�digo '+Codigo+' Nome : '+Nome);
      DBEdit1.SetFocus;
    end;
  end;
end;

end.
