object FD_PESQUISA: TFD_PESQUISA
  Left = 163
  Top = 130
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Caixa de Pesquisa...'
  ClientHeight = 296
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    526
    296)
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 5
    Top = 246
    Width = 282
    Height = 30
    Hint = 
      'Ap'#243's digitar as iniciais da chave desejada, utilize as setas... ' +
      'Pressione a tecla <Insert> para cadastrar um novo...'
    AutoSize = False
    Caption = 
      'Pressione <Enter> para confirmar, <Esc> para cancelar ou  <Inser' +
      't> para cadastrar um novo registro...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
    WordWrap = True
  end
  object Label1: TLabel
    Left = 5
    Top = 5
    Width = 266
    Height = 13
    Caption = 'Digite as iniciais referentes a chave de busca desejada:'
    FocusControl = E_PESQUISA
    Transparent = True
  end
  object Label2: TLabel
    Left = 5
    Top = 48
    Width = 239
    Height = 13
    Caption = 'Utilize as setas para selecionar a op'#231#227'o desejada:'
    Transparent = True
  end
  object E_PESQUISA: TEdit
    Left = 5
    Top = 20
    Width = 516
    Height = 19
    AutoSize = False
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    MaxLength = 15
    ParentCtl3D = False
    TabOrder = 0
    OnChange = E_PESQUISAChange
    OnKeyDown = E_PESQUISAKeyDown
  end
  object E_PESQUISA2: TEdit
    Left = 5
    Top = 63
    Width = 516
    Height = 180
    TabStop = False
    Anchors = []
    AutoSelect = False
    AutoSize = False
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = True
    Enabled = False
    ParentCtl3D = False
    TabOrder = 5
    Text = ' '
  end
  object SB_STATUS: TStatusBar
    Left = 0
    Top = 276
    Width = 526
    Height = 20
    BiDiMode = bdLeftToRight
    Panels = <
      item
        Text = 'YTYTY'
        Width = 50
      end
      item
        Text = 'TTTTTT'
        Width = 50
      end>
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = False
  end
  object BB_OK: TBitBtn
    Left = 299
    Top = 248
    Width = 110
    Height = 25
    Caption = '&OK'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BB_OKClick
  end
  object BB_CANCELAR: TBitBtn
    Left = 411
    Top = 248
    Width = 110
    Height = 25
    Caption = '&Cancelar'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BB_CANCELARClick
  end
  object DG_PESQUISA: TDBGrid
    Left = 5
    Top = 64
    Width = 513
    Height = 178
    TabStop = False
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = False
    DataSource = DS_PESQUISA
    FixedColor = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PM_INSERIR
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DG_PESQUISADrawColumnCell
    OnDblClick = BB_OKClick
    OnTitleClick = DG_PESQUISATitleClick
  end
  object DS_PESQUISA: TDataSource
    AutoEdit = False
    Left = 348
    Top = 4
  end
  object AL_PESQUISA: TActionList
    Left = 376
    Top = 4
    object A_PRIMEIRO: TAction
      Caption = 'A_PRIMEIRO'
      ShortCut = 16496
      OnExecute = A_PRIMEIROExecute
    end
    object A_SEGUNDO: TAction
      Tag = 1
      Caption = 'A_SEGUNDO'
      ShortCut = 16497
      OnExecute = A_PRIMEIROExecute
    end
    object A_TERCEIRO: TAction
      Tag = 2
      Caption = 'A_TERCEIRO'
      ShortCut = 16498
      OnExecute = A_PRIMEIROExecute
    end
    object A_QUARTO: TAction
      Tag = 3
      Caption = 'A_QUARTO'
      ShortCut = 16499
      OnExecute = A_PRIMEIROExecute
    end
    object A_QUINTO: TAction
      Tag = 4
      Caption = 'A_QUINTO'
      ShortCut = 16500
      OnExecute = A_PRIMEIROExecute
    end
    object A_SEXTO: TAction
      Caption = 'A_SEXTO'
      ShortCut = 16501
      OnExecute = A_PRIMEIROExecute
    end
    object A_SETIMO: TAction
      Caption = 'A_SETIMO'
      ShortCut = 16502
      OnExecute = A_PRIMEIROExecute
    end
    object A_OITAVO: TAction
      Caption = 'A_OITAVO'
      ShortCut = 16503
      OnExecute = A_PRIMEIROExecute
    end
    object A_NONO: TAction
      Caption = 'A_NONO'
      ShortCut = 16504
      OnExecute = A_PRIMEIROExecute
    end
    object A_DECIMO: TAction
      Caption = 'A_DECIMO'
      ShortCut = 16505
      OnExecute = A_PRIMEIROExecute
    end
    object A_NOVO: TAction
      Caption = 'A_NOVO'
      ShortCut = 45
      OnExecute = A_NOVOExecute
    end
  end
  object PM_INSERIR: TPopupMenu
    Left = 224
    Top = 144
    object Inserirnovoregistro1: TMenuItem
      Caption = 'Inserir novo registro'
      OnClick = Inserirnovoregistro1Click
    end
  end
end
