object MLA: TMLA
  Left = 181
  Top = 105
  Width = 630
  Height = 303
  Caption = 'Menu Laporan Anggota'
  Color = clMoneyGreen
  Constraints.MaxHeight = 303
  Constraints.MaxWidth = 630
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = clllose
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 48
    Top = 16
    Width = 529
    Height = 33
    Alignment = taCenter
    BevelEdges = [beRight, beBottom]
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      'LAPORAN ANGGOTA')
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    OnKeyPress = dis
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 64
    Width = 569
    Height = 137
    Caption = 'Print Berdasarkan'
    Color = clTeal
    ParentColor = False
    TabOrder = 1
    object Label2: TLabel
      Left = 232
      Top = 104
      Width = 34
      Height = 13
      Caption = 'Hingga'
    end
    object Label1: TLabel
      Left = 40
      Top = 80
      Width = 100
      Height = 13
      Caption = 'Nilai Rentang/Antara'
    end
    object tm: TRadioButton
      Left = 40
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Tanggal Masuk'
      TabOrder = 0
      OnClick = klik
    end
    object id: TRadioButton
      Left = 152
      Top = 32
      Width = 113
      Height = 17
      Caption = 'ID Anggota'
      TabOrder = 1
      OnClick = klik
    end
    object se: TRadioButton
      Left = 248
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Seluruhnya'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = klik
    end
    object ed1: TComboBox
      Left = 40
      Top = 96
      Width = 177
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
    end
    object ed2: TComboBox
      Left = 288
      Top = 96
      Width = 177
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 4
    end
  end
  object Button1: TButton
    Left = 272
    Top = 208
    Width = 153
    Height = 49
    Caption = 'Print'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 424
    Top = 208
    Width = 169
    Height = 49
    Caption = 'Keluar'
    TabOrder = 3
    OnClick = Button2Click
  end
end
