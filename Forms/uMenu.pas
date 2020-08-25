unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls,IniFiles, Vcl.Buttons;

type
  TfrmMenu = class(TForm)
    Panel4: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Image2: TImage;
    Panel9: TPanel;
    Image4: TImage;
    Panel10: TPanel;
    Image5: TImage;
    Panel11: TPanel;
    Image6: TImage;
    Panel12: TPanel;
    Image7: TImage;
    Panel13: TPanel;
    Image8: TImage;
    Panel14: TPanel;
    Image9: TImage;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Lanamentos1: TMenuItem;
    Clientes1: TMenuItem;
    Panel6: TPanel;
    Label2: TLabel;
    L_USUARIO: TLabel;
    Panel8: TPanel;
    Label5: TLabel;
    Image3: TImage;
    Panel3: TPanel;
    L_HORA_WIN10: TLabel;
    l_data_dia: TLabel;
    Timer1: TTimer;
    Memo1: TMemo;
    Usurios1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Motoristas1: TMenuItem;
    N2: TMenuItem;
    Marcas1: TMenuItem;
    ModelosFabricante1: TMenuItem;
    N3: TMenuItem;
    Veculos1: TMenuItem;
    LogOff1: TMenuItem;
    Fretes1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    function DiaSemana(Data:TDateTime): String;
    procedure Usurios1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Motoristas1Click(Sender: TObject);
    procedure Marcas1Click(Sender: TObject);
    procedure ModelosFabricante1Click(Sender: TObject);
    procedure Veculos1Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel14MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure LogOff1Click(Sender: TObject);
    procedure Fretes1Click(Sender: TObject);

  private
    { Private declarations }
    Fecha : Boolean;

  public
      recInformacoes: record
      nm_Usuario: String;
      id_Usuario:Integer;
      Nivel: Integer;
      lojaCredenciada : String;
      login: String;
  end;
    Inicontrole : TIniFile;
    IniSistema: TIniFile;
    sNovo,sNovoAnt,sNome_Novo: String;
    bPesquisa,bSenha: Boolean;
    procedure NovoCadastro;
    Procedure NovoAcesso;

  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses uLogin, uCadCliente, uCadMotorista, uCadMarcas, uCadModelos, uCadVeiculo,
   uDM, uSenha, uFrmFrete;

procedure TfrmMenu.Clientes1Click(Sender: TObject);
begin
  if frmCadCliente = nil then
  begin
    frmCadCliente := TfrmCadCliente.Create(Application);
    frmCadCliente.ShowModal;
  end;
end;

function TfrmMenu.DiaSemana(Data: TDateTime): String;
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String[13];
begin
{ Dias da Semana }
  DiaDasemana [1]:= 'Domingo';
  DiaDasemana [2]:= 'Segunda-feira';
  DiaDasemana [3]:= 'Ter�a-feira';
  DiaDasemana [4]:= 'Quarta-feira';
  DiaDasemana [5]:= 'Quinta-feira';
  DiaDasemana [6]:= 'Sexta-feira';
  DiaDasemana [7]:= 'S�bado';
  NoDia:=DayOfWeek(Data);
  DiaSemana:=DiaDasemana[NoDia];
end;

procedure TfrmMenu.NovoAcesso;
begin
  if frmMenu.Fecha = True then
  begin
    Application.Terminate;
  end;
  bSenha := False;
  Application.CreateForm(TfrmSenha, frmSenha);
  frmSenha.ShowModal;
  L_USUARIO.Caption := recInformacoes.nm_Usuario;

end;


procedure TfrmMenu.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Panel2.Color := clTeal;
 Panel2.Font.Color := clWhite;
 Panel13.Color := clTeal;
 Panel13.Font.Color := clWhite;

 Panel14.Color := clTeal;
 Panel14.Font.Color := clWhite;

 Panel5.Color := clTeal;
 Panel5.Font.Color := clWhite;
 Label5.Font.Color := clWhite;
 Panel9.Color := $00B9B900;
 Panel9.Font.Color := clWhite;
 Panel10.Color := $00B9B900;
 Panel10.Font.Color := clWhite;
 Panel11.Color := $003D836D;
 Panel11.Font.Color := clWhite;
 Panel12.Color := $003D836D;
 Panel12.Font.Color := clWhite;
 Panel8.Color := $005EAEFF;
 Panel8.Font.Color := clWhite;
 Label5.Font.Color := clWhite;


end;

procedure TfrmMenu.FormShow(Sender: TObject);
begin
  NovoAcesso;
end;

procedure TfrmMenu.Fretes1Click(Sender: TObject);
begin
  if frmFrete = nil then
  begin
    frmFrete := TfrmFrete.Create(Application);
    frmFrete.ShowModal;
  end;
end;

procedure TfrmMenu.LogOff1Click(Sender: TObject);
begin
  NovoAcesso;
end;

procedure TfrmMenu.Marcas1Click(Sender: TObject);
begin
  if frmCadMarcas = nil then
  begin
    frmCadMarcas := TfrmCadMarcas.Create(Application);
    frmCadMarcas.ShowModal;
  end;
end;

procedure TfrmMenu.ModelosFabricante1Click(Sender: TObject);
begin
  if frmCadModelos = nil then
  begin
    frmCadModelos := TfrmCadModelos.Create(Application);
    frmCadModelos.ShowModal;
  end;
end;

procedure TfrmMenu.Motoristas1Click(Sender: TObject);
begin
  if frmCadMotorista = nil then
  begin
    frmCadMotorista := TfrmCadMotorista.Create(Application);
    frmCadMotorista.ShowModal;
  end;
end;

procedure TfrmMenu.Timer1Timer(Sender: TObject);
begin
   L_HORA_WIN10.Caption := TimeToStr(Time);
   l_data_dia.Caption   := DiaSemana(date)+ ','+DateToStr(Date);
end;
procedure TfrmMenu.Usurios1Click(Sender: TObject);
begin
  if frmLogin = nil then
  begin
    frmLogin := TfrmLogin.Create(Application);
    frmLogin.ShowModal;
  end;
end;

procedure TfrmMenu.Veculos1Click(Sender: TObject);
begin
  if frmCadVeiculo = nil then
  begin
    frmCadVeiculo := TfrmCadVeiculo.Create(Application);
    frmCadVeiculo.ShowModal;
  end;
end;

procedure TfrmMenu.NovoCadastro;
begin
  {if sNovo = 'Artigo' then
  begin
   if frmCadArtigo = nil then
   begin
     frmCadArtigo := TfrmCadArtigo.Create(Application);
     frmCadArtigo.ShowModal;
   end;
  end;
  if sNovo = 'Fornecedor' then
  begin
   if frmCadfor = nil then
   begin
     frmCadfor := TfrmCadfor.Create(Application);
     frmCadfor.ShowModal;
   end;
  end;
  if sNovo = 'Cliente' then
  begin
   if frmCadCliente = nil then
   begin
     frmCadCliente := TfrmCadCliente.Create(Application);
     frmCadCliente.ShowModal;
   end;
  end;

  if sNovo = 'Mat�ria-Prima' then
  begin
   if frmCadMatPrima = nil then
   begin
     frmCadMatPrima := TfrmCadMatPrima.Create(Application);
     frmCadMatPrima.ShowModal;
   end;
  end;
  if sNovo = 'Cores' then
  begin
   if frmCadCores = nil then
   begin
     frmCadCores := TfrmCadCores.Create(Application);
     frmCadCores.ShowModal;
   end;
  end;}

end;


procedure TfrmMenu.Panel10MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel10.Color := $00E7FEFD;
  Panel10.Font.Color := clBlue;

end;

procedure TfrmMenu.Panel11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel11.Color := $00E7FEFD;
  Panel11.Font.Color := clBlue;

end;

procedure TfrmMenu.Panel12MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel12.Color := $00E7FEFD;
  Panel12.Font.Color := clBlue;

end;

procedure TfrmMenu.Panel13MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel13.Color := $00E7FEFD;
  Panel13.Font.Color := clBlue;

end;

procedure TfrmMenu.Panel14MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel14.Color := $00E7FEFD;
  Panel14.Font.Color := clBlue;

end;

procedure TfrmMenu.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel2.Color := $00E7FEFD;
  Panel2.Font.Color := clBlue;

end;

procedure TfrmMenu.Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Panel2.Color := clTeal;
 Panel2.Font.Color := clWhite;
 Panel13.Color := clTeal;
 Panel13.Font.Color := clWhite;

 Panel14.Color := clTeal;
 Panel14.Font.Color := clWhite;

 Panel5.Color := clTeal;
 Panel5.Font.Color := clWhite;
 Label5.Font.Color := clWhite;
 Panel9.Color := $00B9B900;
 Panel9.Font.Color := clWhite;
 Panel10.Color := $00B9B900;
 Panel10.Font.Color := clWhite;
 Panel11.Color := $003D836D;
 Panel11.Font.Color := clWhite;
 Panel12.Color := $003D836D;
 Panel12.Font.Color := clWhite;
 Panel8.Color := $005EAEFF;
 Panel8.Font.Color := clWhite;
 Label5.Font.Color := clWhite;


end;

procedure TfrmMenu.Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel5.Color := $00E7FEFD;
  Panel5.Font.Color := clBlue;

end;

procedure TfrmMenu.Panel9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel9.Color := $00E7FEFD;
  Panel9.Font.Color := clBlue;

end;

procedure TfrmMenu.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
