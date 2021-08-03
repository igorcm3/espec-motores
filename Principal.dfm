object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 513
  ClientWidth = 1063
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 228
    Top = 232
    Width = 203
    Height = 19
    Caption = 'Potencia nominal (Pn [N.m])'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object menuSp: TSplitView
    Left = 0
    Top = 48
    Width = 0
    Height = 465
    Color = clBlack
    Opened = False
    OpenedWidth = 220
    Padding.Top = 5
    Placement = svpLeft
    TabOrder = 0
    object pnBtnCalcularMenu: TPanel
      Left = 0
      Top = 5
      Width = 0
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'CALCULAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 16
      ExplicitTop = 88
      ExplicitWidth = 185
      object btnCalcularMenu: TSpeedButton
        Left = 0
        Top = 0
        Width = 0
        Height = 41
        Align = alClient
        Flat = True
        OnClick = btnCalcularMenuClick
        ExplicitLeft = 120
        ExplicitTop = 16
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
  end
  object pnTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1063
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Especifica'#231#227'o de motores'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Roboto'
    Font.Style = []
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 6
    ExplicitTop = -1
    object imgMenu: TImage
      Left = 5
      Top = 5
      Width = 36
      Height = 38
      Align = alLeft
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
        003008060000005702F98700000006624B474400FF00FF00FFA0BDA793000000
        C44944415478DAED98B10DC23014051D091AC4141016620196A061029AB40CC0
        024C0453202A90E0B98DB07EBAB3A377D235918B774AD2B84B8DD3D1031C400F
        70003DC001F40007FC79769647B9A0C78DF8C8419EA280975CD16B0BE46DEB28
        A0D637F0949734E10D348503681C40E3001A07D0CC32A09707B9A4C78D78CBAB
        BC4701F9C0965E5B206FDB45010FB9A19716C8DBFA28201FD8A7FAFE8FAFBCA5
        099F50533880C601340EA07100CD2C036ABDD8F2D5228DAF16ABC401340EA071
        004DF3013F85391A31CC6B7B5D0000000049454E44AE426082}
      Stretch = True
      OnClick = imgMenuClick
    end
  end
  object pnConteudo: TPanel
    Left = 0
    Top = 48
    Width = 1063
    Height = 465
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnConteudo'
    TabOrder = 2
    ExplicitLeft = 226
    ExplicitTop = 54
    ExplicitWidth = 843
    object pControl: TPageControl
      Left = 0
      Top = 0
      Width = 1063
      Height = 465
      ActivePage = tabCalculo
      Align = alClient
      HotTrack = True
      MultiLine = True
      TabOrder = 0
      object tabCalculo: TTabSheet
        Caption = 'tabCalculo'
        ParentShowHint = False
        ShowHint = False
        ExplicitLeft = 6
        object lblPn: TLabel
          Left = 224
          Top = 112
          Width = 203
          Height = 19
          Caption = 'Potencia nominal (Pn [N.m])'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 224
          Top = 155
          Width = 203
          Height = 19
          Caption = 'Potencia nominal (Pn [N.m])'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object load: TActivityIndicator
          Left = 821
          Top = 390
          Animate = True
        end
        object SpinEdit1: TSpinEdit
          Left = 440
          Top = 112
          Width = 121
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 1
          Value = 0
        end
        object SpinEdit2: TSpinEdit
          Left = 440
          Top = 157
          Width = 121
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 2
          Value = 0
        end
        object pnBtnRealizaCalculo: TPanel
          Left = 891
          Top = 385
          Width = 145
          Height = 41
          BevelOuter = bvNone
          Caption = 'CALCULAR'
          Color = clActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
          object btnRealizaCalculo: TSpeedButton
            Left = 0
            Top = 0
            Width = 145
            Height = 41
            Margins.Left = 10
            Align = alClient
            Flat = True
            OnClick = btnRealizaCalculoClick
            ExplicitLeft = -32
            ExplicitTop = 32
            ExplicitWidth = 231
            ExplicitHeight = 49
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
      end
    end
  end
end
