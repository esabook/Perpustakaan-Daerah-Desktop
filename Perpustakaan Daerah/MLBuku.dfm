object MLB: TMLB
  Left = 425
  Top = 219
  Width = 624
  Height = 264
  Caption = 'Menu Laporan Buku'
  Color = clMoneyGreen
  Constraints.MaxHeight = 264
  Constraints.MaxWidth = 624
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
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
      'LAPORAN BUKU')
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    WantReturns = False
    OnKeyPress = dis
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 64
    Width = 569
    Height = 97
    Caption = 'Print Berdasarkan'
    Color = clTeal
    ParentColor = False
    TabOrder = 1
    object Label1: TLabel
      Left = 304
      Top = 24
      Width = 149
      Height = 13
      Caption = 'Yang Mengandung Kata Kunci:'
    end
    object jn: TRadioButton
      Left = 40
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Jenis Buku'
      TabOrder = 0
      OnClick = klik
    end
    object jd: TRadioButton
      Left = 40
      Top = 56
      Width = 113
      Height = 17
      Caption = 'Judul Buku'
      TabOrder = 1
      OnClick = klik
    end
    object pn: TRadioButton
      Left = 160
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Penulis'
      TabOrder = 2
      OnClick = klik
    end
    object sb: TRadioButton
      Left = 160
      Top = 56
      Width = 113
      Height = 17
      Caption = 'Seluruh Buku'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = klik
    end
    object ed: TEdit
      Left = 304
      Top = 40
      Width = 249
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object Button2: TButton
    Left = 424
    Top = 176
    Width = 169
    Height = 41
    Caption = 'Keluar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 272
    Top = 176
    Width = 153
    Height = 41
    Caption = 'Print'
    TabOrder = 3
    OnClick = Button1Click
  end
end
