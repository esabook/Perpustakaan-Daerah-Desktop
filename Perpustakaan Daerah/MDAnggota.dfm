object MDA: TMDA
  Left = 571
  Top = 27
  Width = 780
  Height = 742
  HorzScrollBar.Visible = False
  Caption = 'Menu Data Anggota'
  Color = clMoneyGreen
  Constraints.MaxWidth = 780
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 112
    Top = 16
    Width = 529
    Height = 57
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
      'INPUT DATA ANGGOTA PERPUSTAKAAN DAERAH '
      'JAYAPURA')
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    OnKeyPress = dis
  end
  object Panel1: TPanel
    Left = 3
    Top = 80
    Width = 758
    Height = 297
    BevelInner = bvLowered
    BevelOuter = bvNone
    BiDiMode = bdRightToLeftReadingOnly
    Color = clMedGray
    ParentBiDiMode = False
    TabOrder = 1
    object Shape3: TShape
      Left = 0
      Top = 0
      Width = 761
      Height = 297
      Brush.Color = clGray
    end
    object Label1: TLabel
      Left = 40
      Top = 24
      Width = 54
      Height = 13
      Caption = 'ID Anggota'
    end
    object Label2: TLabel
      Left = 40
      Top = 64
      Width = 28
      Height = 13
      Caption = 'Nama'
    end
    object Label3: TLabel
      Left = 40
      Top = 104
      Width = 62
      Height = 13
      Caption = 'Tempat Lahir'
    end
    object Label4: TLabel
      Left = 40
      Top = 184
      Width = 32
      Height = 13
      Caption = 'Alamat'
    end
    object Label5: TLabel
      Left = 40
      Top = 272
      Width = 73
      Height = 13
      Caption = 'Nomor Telepon'
    end
    object Label6: TLabel
      Left = 40
      Top = 144
      Width = 65
      Height = 13
      Caption = 'Tanggal Lahir'
    end
    object Label7: TLabel
      Left = 376
      Top = 16
      Width = 74
      Height = 13
      Caption = 'Tanggal Masuk'
    end
    object jk: TRadioGroup
      Left = 376
      Top = 48
      Width = 321
      Height = 65
      Caption = 'Jenis Kelamin'
      Items.Strings = (
        'Laki-laki'
        'Perempuan')
      TabOrder = 6
    end
    object GroupBox1: TGroupBox
      Left = 376
      Top = 128
      Width = 321
      Height = 113
      Caption = 'Tombol Kontrol'
      TabOrder = 7
      object Br: TButton
        Left = 16
        Top = 24
        Width = 97
        Height = 43
        Caption = 'Baru'
        TabOrder = 0
        OnClick = BrClick
      end
      object Sp: TButton
        Left = 16
        Top = 64
        Width = 97
        Height = 43
        Caption = 'Simpan'
        TabOrder = 3
        OnClick = SpClick
      end
      object Ed: TButton
        Left = 112
        Top = 24
        Width = 97
        Height = 43
        Caption = 'Edit'
        TabOrder = 1
        OnClick = EdClick
      end
      object Hp: TButton
        Left = 112
        Top = 64
        Width = 97
        Height = 43
        Caption = 'Hapus'
        TabOrder = 4
        OnClick = HpClick
      end
      object bt: TButton
        Left = 208
        Top = 24
        Width = 97
        Height = 43
        Caption = 'Batal'
        TabOrder = 2
        OnClick = btClick
      end
      object Kl: TButton
        Left = 208
        Top = 64
        Width = 98
        Height = 43
        Caption = 'Keluar'
        TabOrder = 5
        OnClick = KlClick
      end
    end
    object tgm: TDateTimePicker
      Left = 488
      Top = 8
      Width = 209
      Height = 24
      BevelInner = bvNone
      BevelOuter = bvNone
      Date = 42742.586309479160000000
      Time = 42742.586309479160000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object id: TEdit
      Left = 152
      Top = 16
      Width = 185
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      MaxLength = 6
      TabOrder = 0
      OnKeyPress = press
    end
    object nama: TEdit
      Left = 152
      Top = 56
      Width = 185
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 1
      OnKeyPress = press
    end
    object tmpl: TEdit
      Left = 152
      Top = 96
      Width = 185
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 2
    end
    object tgll: TDateTimePicker
      Left = 152
      Top = 136
      Width = 185
      Height = 24
      BevelEdges = [beBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      Date = 42742.586309479160000000
      Time = 42742.586309479160000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object nt: TEdit
      Left = 152
      Top = 264
      Width = 185
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      MaxLength = 12
      TabOrder = 4
      OnKeyPress = nomor
    end
    object alm: TMemo
      Left = 152
      Top = 176
      Width = 185
      Height = 73
      TabOrder = 8
      WantReturns = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 384
    Width = 753
    Height = 297
    Ctl3D = False
    DataSource = DataSource1
    FixedColor = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = gridclik
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_Anggota'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAMA'
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEMPAT_LAHIR'
        Title.Alignment = taCenter
        Title.Caption = 'TEMPAT LAHIR'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TANGGAL_LAHIR'
        Title.Alignment = taCenter
        Title.Caption = 'TANGGAL LAHIR'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TANGGAL_MASUK'
        Title.Alignment = taCenter
        Title.Caption = 'TANGGAL MASUK'
        Width = 113
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'JENIS_KELAMIN'
        Title.Alignment = taCenter
        Title.Caption = 'JK'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALAMAT'
        Title.Alignment = taCenter
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NO_TELP'
        Title.Alignment = taCenter
        Title.Caption = 'TELP'
        Width = 79
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 664
    Top = 344
  end
  object ADOTable1: TADOTable
    Connection = MU.ADOConnection1
    CursorType = ctStatic
    TableName = 'Anggota'
    Left = 627
    Top = 344
  end
  object ADOQuery1: TADOQuery
    Connection = MU.ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'Select * from Anggota')
    Left = 587
    Top = 344
  end
end
