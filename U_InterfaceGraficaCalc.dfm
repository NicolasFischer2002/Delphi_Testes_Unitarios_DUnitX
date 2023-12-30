object F_InterfaceGraficaCalc: TF_InterfaceGraficaCalc
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'F_InterfaceGraficaCalc'
  ClientHeight = 260
  ClientWidth = 430
  Color = clMenuHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lbl_base: TLabel
    Left = 20
    Top = 61
    Width = 41
    Height = 18
    Caption = 'Base:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl_altura: TLabel
    Left = 20
    Top = 109
    Width = 44
    Height = 18
    Caption = 'Altura:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 112
    Top = 13
    Width = 231
    Height = 18
    Caption = 'Calculadora de '#225'rea de Tri'#226'ngulo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl_area: TLabel
    Left = 208
    Top = 152
    Width = 38
    Height = 18
    Caption = #193'rea:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object edt_base: TEdit
    Left = 80
    Top = 58
    Width = 333
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edt_altura: TEdit
    Left = 80
    Top = 106
    Width = 333
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object pnl_top: TPanel
    Left = 0
    Top = 0
    Width = 430
    Height = 5
    Align = alTop
    Color = clRed
    ParentBackground = False
    TabOrder = 2
  end
  object edt_resultadoArea: TEdit
    Left = 168
    Top = 176
    Width = 121
    Height = 26
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object btn_calcularArea: TButton
    Left = 0
    Top = 212
    Width = 430
    Height = 48
    Align = alBottom
    Caption = 'Calcular '#225'rea do tri'#226'ngulo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btn_calcularAreaClick
  end
end
