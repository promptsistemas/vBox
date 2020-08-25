object frmRelatorio: TfrmRelatorio
  Left = 0
  Top = 0
  Caption = 'Relatorios'
  ClientHeight = 525
  ClientWidth = 1061
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1061
    Height = 525
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 20
    ExplicitTop = 24
    ExplicitWidth = 1033
    ExplicitHeight = 465
    object TabSheet1: TTabSheet
      Caption = 'Fretes'
      ExplicitWidth = 1025
      ExplicitHeight = 437
      object QR_FRETE: TQRPQuickrep
        Left = 3
        Top = 3
        Width = 794
        Height = 1123
        ShowingPreview = False
        DataSet = DM.cdsItemFrete
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Continuous = False
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.UseStandardprinter = False
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrinterSettings.MemoryLimit = 1000000
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsMaximized
        PreviewWidth = 500
        PreviewHeight = 500
        PrevInitialZoom = qrZoom100
        PreviewDefaultSaveType = stPDF
        PreviewLeft = 0
        PreviewTop = 0
        LabelSettings.FirstLabel = 0
        LabelSettings.LabelCount = 0
        PrepareAutomatically = False
        object QRBand1: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 246
          Frame.DrawTop = True
          Frame.DrawBottom = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            650.875000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel2: TQRLabel
            Left = 9
            Top = 4
            Width = 50
            Height = 17
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              10.583333333333330000
              132.291666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'C'#243'digo:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel3: TQRLabel
            Left = 117
            Top = 4
            Width = 84
            Height = 17
            Size.Values = (
              44.979166666666670000
              309.562500000000000000
              10.583333333333330000
              222.250000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Data Partida:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel4: TQRLabel
            Left = 271
            Top = 4
            Width = 47
            Height = 17
            Size.Values = (
              44.979166666666670000
              717.020833333333300000
              10.583333333333330000
              124.354166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'C'#243'd.Cli'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel5: TQRLabel
            Left = 354
            Top = 4
            Width = 107
            Height = 17
            Size.Values = (
              44.979166666666670000
              936.625000000000000000
              10.583333333333330000
              283.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Nome do Cliente'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel6: TQRLabel
            Left = 7
            Top = 30
            Width = 35
            Height = 17
            Size.Values = (
              44.979166666666670000
              18.520833333333330000
              79.375000000000000000
              92.604166666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'CNPJ'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel7: TQRLabel
            Left = 171
            Top = 30
            Width = 52
            Height = 17
            Size.Values = (
              44.979166666666670000
              452.437500000000000000
              79.375000000000000000
              137.583333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Insc.Est:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel8: TQRLabel
            Left = 305
            Top = 30
            Width = 65
            Height = 17
            Size.Values = (
              44.979166666666670000
              806.979166666666700000
              79.375000000000000000
              171.979166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Endere'#231'o:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel9: TQRLabel
            Left = 626
            Top = 30
            Width = 55
            Height = 17
            Size.Values = (
              44.979166666666670000
              1656.291666666667000000
              79.375000000000000000
              145.520833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'N'#250'mero:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel10: TQRLabel
            Left = 5
            Top = 55
            Width = 94
            Height = 17
            Size.Values = (
              44.979166666666670000
              13.229166666666670000
              145.520833333333300000
              248.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Complemento:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel11: TQRLabel
            Left = 225
            Top = 55
            Width = 44
            Height = 17
            Size.Values = (
              44.979166666666670000
              595.312500000000000000
              145.520833333333300000
              116.416666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Bairro:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel12: TQRLabel
            Left = 448
            Top = 55
            Width = 31
            Height = 17
            Size.Values = (
              44.979166666666670000
              1185.333333333333000000
              145.520833333333300000
              82.020833333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'CEP:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel13: TQRLabel
            Left = 7
            Top = 82
            Width = 50
            Height = 17
            Size.Values = (
              44.979166666666670000
              18.520833333333330000
              216.958333333333300000
              132.291666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Cidade:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel14: TQRLabel
            Left = 344
            Top = 82
            Width = 22
            Height = 17
            Size.Values = (
              44.979166666666670000
              910.166666666666700000
              216.958333333333300000
              58.208333333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'UF:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel15: TQRLabel
            Left = 563
            Top = 55
            Width = 61
            Height = 17
            Size.Values = (
              44.979166666666670000
              1489.604166666667000000
              145.520833333333300000
              161.395833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Telefone:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel17: TQRLabel
            Left = 394
            Top = 82
            Width = 59
            Height = 17
            Size.Values = (
              44.979166666666670000
              1042.458333333333000000
              216.958333333333300000
              156.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Motorista'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText1: TQRDBText
            Left = 61
            Top = 4
            Width = 52
            Height = 17
            Size.Values = (
              44.979166666666670000
              161.395833333333300000
              10.583333333333330000
              137.583333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'ID_FRETE'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText2: TQRDBText
            Left = 200
            Top = 4
            Width = 71
            Height = 17
            Size.Values = (
              44.979166666666670000
              529.166666666666700000
              10.583333333333330000
              187.854166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'DT_PARTIDA'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText3: TQRDBText
            Left = 321
            Top = 4
            Width = 32
            Height = 17
            Size.Values = (
              44.979166666666670000
              849.312500000000000000
              10.583333333333330000
              84.666666666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'ID_CLIENTE'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText4: TQRDBText
            Left = 465
            Top = 4
            Width = 250
            Height = 17
            Size.Values = (
              44.979166666666670000
              1230.312500000000000000
              10.583333333333330000
              661.458333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'CLIENTE'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText5: TQRDBText
            Left = 47
            Top = 30
            Width = 122
            Height = 17
            Size.Values = (
              44.979166666666670000
              124.354166666666700000
              79.375000000000000000
              322.791666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'CNPJ_CPF'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText6: TQRDBText
            Left = 228
            Top = 30
            Width = 77
            Height = 17
            Size.Values = (
              44.979166666666670000
              603.250000000000000000
              79.375000000000000000
              203.729166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'INSC_RG'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText7: TQRDBText
            Left = 372
            Top = 30
            Width = 254
            Height = 17
            Size.Values = (
              44.979166666666670000
              984.250000000000000000
              79.375000000000000000
              672.041666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'ENDERECO'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText8: TQRDBText
            Left = 682
            Top = 30
            Width = 48
            Height = 17
            Size.Values = (
              44.979166666666670000
              1804.458333333333000000
              79.375000000000000000
              127.000000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'NUMERO'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText9: TQRDBText
            Left = 100
            Top = 55
            Width = 121
            Height = 17
            Size.Values = (
              44.979166666666670000
              264.583333333333300000
              145.520833333333300000
              320.145833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'COMPLEMENTO'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText10: TQRDBText
            Left = 271
            Top = 55
            Width = 175
            Height = 17
            Size.Values = (
              44.979166666666670000
              717.020833333333300000
              145.520833333333300000
              463.020833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'BAIRRO'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText11: TQRDBText
            Left = 481
            Top = 55
            Width = 81
            Height = 17
            Size.Values = (
              44.979166666666670000
              1272.645833333333000000
              145.520833333333300000
              214.312500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'CEP'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText12: TQRDBText
            Left = 61
            Top = 82
            Width = 277
            Height = 17
            Size.Values = (
              44.979166666666670000
              161.395833333333300000
              216.958333333333300000
              732.895833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'CIDADE_CLIENTE'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText13: TQRDBText
            Left = 368
            Top = 82
            Width = 25
            Height = 17
            Size.Values = (
              44.979166666666670000
              973.666666666666700000
              216.958333333333300000
              66.145833333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'UF_CLIENTE'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText14: TQRDBText
            Left = 626
            Top = 55
            Width = 88
            Height = 17
            Size.Values = (
              44.979166666666670000
              1656.291666666667000000
              145.520833333333300000
              232.833333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'TELEFONE'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText16: TQRDBText
            Left = 457
            Top = 82
            Width = 257
            Height = 17
            Size.Values = (
              44.979166666666670000
              1209.145833333333000000
              216.958333333333300000
              679.979166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'MOTORISTA'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel16: TQRLabel
            Left = 7
            Top = 108
            Width = 93
            Height = 17
            Size.Values = (
              44.979166666666670000
              18.520833333333330000
              285.750000000000000000
              246.062500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'N'#186' Nota Fiscal:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText15: TQRDBText
            Left = 104
            Top = 108
            Width = 81
            Height = 17
            Size.Values = (
              44.979166666666670000
              275.166666666666700000
              285.750000000000000000
              214.312500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'NR_NOTA'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel18: TQRLabel
            Left = 191
            Top = 109
            Width = 92
            Height = 17
            Size.Values = (
              44.979166666666670000
              505.354166666666700000
              288.395833333333300000
              243.416666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Vl Nota Fiscal:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText17: TQRDBText
            Left = 289
            Top = 108
            Width = 81
            Height = 17
            Size.Values = (
              44.979166666666670000
              764.645833333333300000
              285.750000000000000000
              214.312500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'VL_NOTA'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel19: TQRLabel
            Left = 376
            Top = 108
            Width = 55
            Height = 17
            Size.Values = (
              44.979166666666670000
              994.833333333333300000
              285.750000000000000000
              145.520833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Vl Frete:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText18: TQRDBText
            Left = 434
            Top = 108
            Width = 81
            Height = 17
            Size.Values = (
              44.979166666666670000
              1148.291666666667000000
              285.750000000000000000
              214.312500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'VL_FRETE'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel20: TQRLabel
            Left = 519
            Top = 108
            Width = 41
            Height = 17
            Size.Values = (
              44.979166666666670000
              1373.187500000000000000
              285.750000000000000000
              108.479166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Placa:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText19: TQRDBText
            Left = 563
            Top = 108
            Width = 81
            Height = 17
            Size.Values = (
              44.979166666666670000
              1489.604166666667000000
              285.750000000000000000
              214.312500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'PLACA_CARRETA'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel21: TQRLabel
            Left = 649
            Top = 108
            Width = 22
            Height = 17
            Size.Values = (
              44.979166666666670000
              1717.145833333333000000
              285.750000000000000000
              58.208333333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'UF:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText20: TQRDBText
            Left = 677
            Top = 108
            Width = 22
            Height = 17
            Size.Values = (
              44.979166666666670000
              1791.229166666667000000
              285.750000000000000000
              58.208333333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'UF_PLACA'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel22: TQRLabel
            Left = 7
            Top = 135
            Width = 46
            Height = 17
            Size.Values = (
              44.979166666666670000
              18.520833333333330000
              357.187500000000000000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Chassi:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText21: TQRDBText
            Left = 56
            Top = 135
            Width = 113
            Height = 17
            Size.Values = (
              44.979166666666670000
              148.166666666666700000
              357.187500000000000000
              298.979166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'CHASSI'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel23: TQRLabel
            Left = 173
            Top = 135
            Width = 27
            Height = 17
            Size.Values = (
              44.979166666666670000
              457.729166666666700000
              357.187500000000000000
              71.437500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Cor:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText22: TQRDBText
            Left = 205
            Top = 135
            Width = 81
            Height = 17
            Size.Values = (
              44.979166666666670000
              542.395833333333300000
              357.187500000000000000
              214.312500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'COR'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel24: TQRLabel
            Left = 291
            Top = 135
            Width = 48
            Height = 17
            Size.Values = (
              44.979166666666670000
              769.937500000000000000
              357.187500000000000000
              127.000000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Marca :'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText23: TQRDBText
            Left = 342
            Top = 135
            Width = 129
            Height = 17
            Size.Values = (
              44.979166666666670000
              904.875000000000000000
              357.187500000000000000
              341.312500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'MARCA'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel25: TQRLabel
            Left = 471
            Top = 135
            Width = 52
            Height = 17
            Size.Values = (
              44.979166666666670000
              1246.187500000000000000
              357.187500000000000000
              137.583333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Modelo:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText24: TQRDBText
            Left = 524
            Top = 135
            Width = 81
            Height = 17
            Size.Values = (
              44.979166666666670000
              1386.416666666667000000
              357.187500000000000000
              214.312500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'MODELO'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel26: TQRLabel
            Left = 608
            Top = 135
            Width = 45
            Height = 17
            Size.Values = (
              44.979166666666670000
              1608.666666666667000000
              357.187500000000000000
              119.062500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'KM Ini:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText25: TQRDBText
            Left = 658
            Top = 135
            Width = 57
            Height = 17
            Size.Values = (
              44.979166666666670000
              1740.958333333333000000
              357.187500000000000000
              150.812500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'KM_INICIO'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText27: TQRDBText
            Left = 171
            Top = 158
            Width = 190
            Height = 17
            Size.Values = (
              44.979166666666670000
              452.437500000000000000
              418.041666666666700000
              502.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'CIDADE_ORIGEM'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText28: TQRDBText
            Left = 390
            Top = 158
            Width = 22
            Height = 17
            Size.Values = (
              44.979166666666670000
              1031.875000000000000000
              418.041666666666700000
              58.208333333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'UF_ORIGEM'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText29: TQRDBText
            Left = 471
            Top = 158
            Width = 190
            Height = 17
            Size.Values = (
              44.979166666666670000
              1246.187500000000000000
              418.041666666666700000
              502.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'CIDADE_DESTINO'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText30: TQRDBText
            Left = 690
            Top = 158
            Width = 22
            Height = 17
            Size.Values = (
              44.979166666666670000
              1825.625000000000000000
              418.041666666666700000
              58.208333333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'UF_DESTINO'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBRichText1: TQRDBRichText
            Left = 414
            Top = 181
            Width = 299
            Height = 52
            Size.Values = (
              137.583333333333300000
              1095.375000000000000000
              478.895833333333300000
              791.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AutoStretch = False
            Color = clWindow
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            HiresExport = False
            Transparent = False
            YIncrement = 50
            DataField = 'OBS'
            DataSet = DM.cdsFrete
          end
          object QRLabel43: TQRLabel
            Left = 4
            Top = 200
            Width = 88
            Height = 17
            Size.Values = (
              44.979166666666670000
              10.583333333333330000
              529.166666666666700000
              232.833333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Data Retorno:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText39: TQRDBText
            Left = 94
            Top = 200
            Width = 91
            Height = 17
            Size.Values = (
              44.979166666666670000
              248.708333333333300000
              529.166666666666700000
              240.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'DT_RETORNO'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel44: TQRLabel
            Left = 5
            Top = 179
            Width = 74
            Height = 17
            Size.Values = (
              44.979166666666670000
              13.229166666666670000
              473.604166666666700000
              195.791666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Peso Bruto:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText40: TQRDBText
            Left = 85
            Top = 179
            Width = 80
            Height = 17
            Size.Values = (
              44.979166666666670000
              224.895833333333300000
              473.604166666666700000
              211.666666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'PESO_BRUTO'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel32: TQRLabel
            Left = 168
            Top = 179
            Width = 60
            Height = 17
            Size.Values = (
              44.979166666666670000
              444.500000000000000000
              473.604166666666700000
              158.750000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Peso Liq:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText31: TQRDBText
            Left = 231
            Top = 179
            Width = 80
            Height = 17
            Size.Values = (
              44.979166666666670000
              611.187500000000000000
              473.604166666666700000
              211.666666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'PESO_LIQ'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel27: TQRLabel
            Left = 5
            Top = 158
            Width = 52
            Height = 17
            Size.Values = (
              44.979166666666670000
              13.229166666666670000
              418.041666666666700000
              137.583333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'KM FIM:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText26: TQRDBText
            Left = 59
            Top = 158
            Width = 58
            Height = 17
            Size.Values = (
              44.979166666666670000
              156.104166666666700000
              418.041666666666700000
              153.458333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = DM.cdsFrete
            DataField = 'KM_FIM'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel28: TQRLabel
            Left = 119
            Top = 158
            Width = 52
            Height = 17
            Size.Values = (
              44.979166666666670000
              314.854166666666700000
              418.041666666666700000
              137.583333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Origem:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel30: TQRLabel
            Left = 416
            Top = 158
            Width = 52
            Height = 17
            Size.Values = (
              44.979166666666670000
              1100.666666666667000000
              418.041666666666700000
              137.583333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Destino:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel29: TQRLabel
            Left = 366
            Top = 158
            Width = 22
            Height = 17
            Size.Values = (
              44.979166666666670000
              968.375000000000000000
              418.041666666666700000
              58.208333333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'UF:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel33: TQRLabel
            Left = 366
            Top = 158
            Width = 22
            Height = 17
            Size.Values = (
              44.979166666666670000
              968.375000000000000000
              418.041666666666700000
              58.208333333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'UF:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel31: TQRLabel
            Left = 664
            Top = 158
            Width = 22
            Height = 17
            Size.Values = (
              44.979166666666670000
              1756.833333333333000000
              418.041666666666700000
              58.208333333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'UF:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel34: TQRLabel
            Left = 320
            Top = 179
            Width = 80
            Height = 17
            Size.Values = (
              44.979166666666670000
              846.666666666666700000
              473.604166666666700000
              211.666666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Observa'#231#227'o:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
        end
        object QRGroup1: TQRGroup
          Left = 38
          Top = 284
          Width = 718
          Height = 21
          AlignToBottom = False
          Color = 13224393
          TransparentBand = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsStrikeOut]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            55.562500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          FooterBand = QRBand3
          Master = QR_FRETE
          ReprintOnNewPage = False
          object QRLabel35: TQRLabel
            Left = 7
            Top = 2
            Width = 46
            Height = 17
            Size.Values = (
              44.979166666666670000
              18.520833333333330000
              5.291666666666667000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'C'#243'digo'
            Color = 13224393
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel36: TQRLabel
            Left = 198
            Top = 2
            Width = 49
            Height = 17
            Size.Values = (
              44.979166666666670000
              523.875000000000000000
              5.291666666666667000
              129.645833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Servi'#231'o'
            Color = 13224393
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel37: TQRLabel
            Left = 437
            Top = 2
            Width = 39
            Height = 17
            Size.Values = (
              44.979166666666670000
              1156.229166666667000000
              5.291666666666667000
              103.187500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Quant'
            Color = 13224393
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel38: TQRLabel
            Left = 531
            Top = 2
            Width = 47
            Height = 17
            Size.Values = (
              44.979166666666670000
              1404.937500000000000000
              5.291666666666667000
              124.354166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Vl. Unit'
            Color = 13224393
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel39: TQRLabel
            Left = 632
            Top = 2
            Width = 62
            Height = 17
            Size.Values = (
              44.979166666666670000
              1672.166666666667000000
              5.291666666666667000
              164.041666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Sub-Total'
            Color = 13224393
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
        end
        object QRBand2: TQRBand
          Left = 38
          Top = 305
          Width = 718
          Height = 17
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            44.979166666666670000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText33: TQRDBText
            Left = 7
            Top = 0
            Width = 78
            Height = 17
            Size.Values = (
              44.979166666666670000
              18.520833333333330000
              0.000000000000000000
              206.375000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DM.cdsItemFrete
            DataField = 'ID_SERVICO'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText34: TQRDBText
            Left = 139
            Top = 0
            Width = 59
            Height = 17
            Size.Values = (
              44.979166666666670000
              367.770833333333300000
              0.000000000000000000
              156.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DM.cdsItemFrete
            DataField = 'SERVICO'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText35: TQRDBText
            Left = 428
            Top = 0
            Width = 45
            Height = 17
            Size.Values = (
              44.979166666666670000
              1132.416666666667000000
              0.000000000000000000
              119.062500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DM.cdsItemFrete
            DataField = 'QUANT'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText36: TQRDBText
            Left = 527
            Top = 0
            Width = 52
            Height = 17
            Size.Values = (
              44.979166666666670000
              1394.354166666667000000
              0.000000000000000000
              137.583333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DM.cdsItemFrete
            DataField = 'VL_UNIT'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText37: TQRDBText
            Left = 648
            Top = 0
            Width = 41
            Height = 17
            Size.Values = (
              44.979166666666670000
              1714.500000000000000000
              0.000000000000000000
              108.479166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DM.cdsItemFrete
            DataField = 'TOTAL'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
        end
        object QRBand3: TQRBand
          Left = 38
          Top = 322
          Width = 718
          Height = 39
          Frame.DrawTop = True
          AlignToBottom = False
          Color = 13224393
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            103.187500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupFooter
          object QRLabel40: TQRLabel
            Left = 282
            Top = 5
            Width = 202
            Height = 23
            Size.Values = (
              60.854166666666670000
              746.125000000000000000
              13.229166666666670000
              534.458333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Total Custo Frete R$ :'
            Color = 13224393
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 14
          end
          object QRDBText38: TQRDBText
            Left = 501
            Top = 5
            Width = 178
            Height = 23
            Size.Values = (
              60.854166666666670000
              1325.562500000000000000
              13.229166666666670000
              470.958333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Color = 13224393
            DataSet = DM.cdsFrete
            DataField = 'VL_CUSTO_FRETE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 14
          end
        end
        object QRBand4: TQRBand
          Left = 38
          Top = 361
          Width = 718
          Height = 32
          Frame.DrawTop = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            84.666666666666670000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel1: TQRLabel
            Left = 4
            Top = 1
            Width = 243
            Height = 17
            Size.Values = (
              44.979166666666670000
              10.583333333333330000
              2.645833333333333000
              642.937500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'SysFrete - Sistema de Controle de Fretes'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel41: TQRLabel
            Left = 272
            Top = 1
            Width = 126
            Height = 17
            Size.Values = (
              44.979166666666670000
              719.666666666666700000
              2.645833333333333000
              333.375000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Por Prompt-Sistemas'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRSysData1: TQRSysData
            Left = 644
            Top = 1
            Width = 46
            Height = 17
            Size.Values = (
              44.979166666666670000
              1703.916666666667000000
              2.645833333333333000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsPageNumber
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel42: TQRLabel
            Left = 609
            Top = 1
            Width = 30
            Height = 17
            Size.Values = (
              44.979166666666670000
              1611.312500000000000000
              2.645833333333333000
              79.375000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'P'#225'g.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
        end
      end
    end
  end
end
