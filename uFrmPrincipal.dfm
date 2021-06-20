object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Calculo de indice corporal'
  ClientHeight = 267
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 64
    Width = 117
    Height = 29
    Caption = 'Sua Altura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 112
    Width = 105
    Height = 29
    Caption = 'Seu Peso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 160
    Width = 106
    Height = 29
    Caption = 'Seu Sexo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BtnResultado: TButton
    Left = 88
    Top = 224
    Width = 75
    Height = 30
    Caption = 'Resultado'
    TabOrder = 0
    OnClick = BtnResultadoClick
  end
  object BtnRequisitos: TButton
    Left = 318
    Top = 224
    Width = 91
    Height = 30
    Caption = 'Ver Requisitos'
    TabOrder = 1
    OnClick = BtnRequisitosClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 501
    Height = 50
    Align = alTop
    Caption = 'Calculadora - '#205'ndice de Massa Corporal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 628
  end
  object EdtAltura: TEdit
    Left = 224
    Top = 60
    Width = 185
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TextHint = 'Digite sua altura'
  end
  object EdtPeso: TEdit
    Left = 224
    Top = 108
    Width = 185
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TextHint = 'Digite seu peso'
  end
  object CmbSexo: TComboBox
    Left = 224
    Top = 160
    Width = 185
    Height = 33
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TextHint = 'Escolha o sexo'
    Items.Strings = (
      'F'
      'M')
  end
end
