object LPG: TLPG
  Left = 187
  Top = 127
  Width = 620
  Height = 246
  Caption = 'Laporan Pengembalian Buku'
  Color = clMoneyGreen
  Constraints.MaxHeight = 246
  Constraints.MaxWidth = 620
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = clllose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 48
    Top = 16
    Width = 529
    Height = 25
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
      'LAPORAN PENGEMBALIAN BUKU')
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    OnKeyPress = dis
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 64
    Width = 569
    Height = 81
    Caption = 'Print Berdasarkan'
    Color = clTeal
    ParentColor = False
    TabOrder = 1
    object tgb: TRadioButton
      Left = 8
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Tanggal'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = tklik
    end
    object blb: TRadioButton
      Left = 128
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Bulan'
      TabOrder = 1
      OnClick = Bklik
    end
    object thb: TRadioButton
      Left = 352
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Tahun'
      TabOrder = 2
      OnClick = thklik
    end
    object tg: TComboBox
      Left = 24
      Top = 48
      Width = 97
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        ''
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'#9
        '09'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20'
        '21'
        '22'
        '23'
        '24'
        '25'
        '26'
        '27'
        '28'
        '29'
        '30'
        '31')
    end
    object bl: TComboBox
      Left = 144
      Top = 48
      Width = 201
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        ''
        'Januari'
        'Februari'
        'Maret'
        'April'
        'Mei'
        'Juni'
        'Juli'
        'Agustus'
        'September'
        'Oktober'
        'November'
        'Desember')
    end
    object th: TComboBox
      Left = 368
      Top = 48
      Width = 105
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        '')
    end
    object RadioButton1: TRadioButton
      Left = 480
      Top = 32
      Width = 81
      Height = 17
      Caption = 'seluruh data'
      TabOrder = 6
      OnClick = kll
    end
  end
  object Button1: TButton
    Left = 272
    Top = 152
    Width = 153
    Height = 41
    Caption = 'Print'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 424
    Top = 152
    Width = 169
    Height = 41
    Caption = 'Keluar'
    TabOrder = 3
    OnClick = Button2Click
  end
end
