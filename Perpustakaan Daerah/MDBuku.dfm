object MDB: TMDB
  Left = 250
  Top = 12
  Width = 750
  Height = 746
  HorzScrollBar.Visible = False
  Caption = 'Menu Data Buku'
  Color = clMoneyGreen
  Constraints.MaxWidth = 750
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
    Left = 120
    Top = -8
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
      ''
      'INPUT DATA BUKU PERPUSTAKAAN')
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    OnKeyPress = dis
  end
  object Panel1: TPanel
    Left = 3
    Top = 72
    Width = 729
    Height = 217
    BevelInner = bvLowered
    BevelOuter = bvNone
    BiDiMode = bdRightToLeftReadingOnly
    Color = clMedGray
    ParentBiDiMode = False
    TabOrder = 1
    object Shape3: TShape
      Left = 0
      Top = 0
      Width = 729
      Height = 217
      Brush.Color = clGray
    end
    object Label1: TLabel
      Left = 40
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Kode Buku'
    end
    object Label2: TLabel
      Left = 40
      Top = 64
      Width = 52
      Height = 13
      Caption = 'Jenis Buku'
    end
    object Label3: TLabel
      Left = 40
      Top = 104
      Width = 53
      Height = 13
      Caption = 'Judul Buku'
    end
    object Label4: TLabel
      Left = 40
      Top = 192
      Width = 34
      Height = 13
      Caption = 'Penulis'
    end
    object Label6: TLabel
      Left = 40
      Top = 144
      Width = 39
      Height = 13
      Caption = 'Penerbit'
    end
    object Label7: TLabel
      Left = 384
      Top = 16
      Width = 61
      Height = 13
      Caption = 'Tahun Terbit'
    end
    object GroupBox1: TGroupBox
      Left = 384
      Top = 48
      Width = 321
      Height = 129
      Caption = 'Tombol Kontrol'
      TabOrder = 6
      object Br: TButton
        Left = 16
        Top = 32
        Width = 97
        Height = 41
        Caption = 'Baru'
        TabOrder = 0
        OnClick = BrClick
      end
      object Sp: TButton
        Left = 16
        Top = 72
        Width = 97
        Height = 43
        Caption = 'Simpan'
        TabOrder = 3
        OnClick = SpClick
      end
      object Ed: TButton
        Left = 112
        Top = 32
        Width = 98
        Height = 41
        Caption = 'Edit'
        TabOrder = 1
        OnClick = EdClick
      end
      object Hp: TButton
        Left = 112
        Top = 72
        Width = 98
        Height = 43
        Caption = 'Hapus'
        TabOrder = 4
        OnClick = HpClick
      end
      object Bt: TButton
        Left = 208
        Top = 32
        Width = 98
        Height = 41
        Caption = 'Batal'
        TabOrder = 2
        OnClick = BtClick
      end
      object Kl: TButton
        Left = 208
        Top = 72
        Width = 98
        Height = 43
        Caption = 'Keluar'
        TabOrder = 5
        OnClick = KlClick
      end
    end
    object kb: TEdit
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
    object jdb: TEdit
      Left = 152
      Top = 96
      Width = 185
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 2
    end
    object tt: TComboBoxEx
      Left = 456
      Top = 8
      Width = 145
      Height = 22
      ItemsEx = <>
      ItemHeight = 16
      TabOrder = 5
      DropDownCount = 8
    end
    object jb: TComboBoxEx
      Left = 152
      Top = 56
      Width = 185
      Height = 22
      AutoCompleteOptions = [acoAutoSuggest, acoAutoAppend, acoSearch, acoFilterPrefixes]
      ItemsEx = <>
      ItemHeight = 16
      TabOrder = 1
      DropDownCount = 8
    end
    object pb: TComboBoxEx
      Left = 152
      Top = 136
      Width = 185
      Height = 22
      AutoCompleteOptions = [acoAutoSuggest, acoAutoAppend, acoSearch, acoFilterPrefixes]
      ItemsEx = <>
      ItemHeight = 16
      TabOrder = 3
      DropDownCount = 8
    end
    object pl: TComboBoxEx
      Left = 152
      Top = 184
      Width = 185
      Height = 22
      AutoCompleteOptions = [acoAutoSuggest, acoAutoAppend, acoSearch, acoFilterPrefixes]
      ItemsEx = <>
      ItemHeight = 16
      TabOrder = 4
      DropDownCount = 8
    end
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 296
    Width = 720
    Height = 401
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
    OnCellClick = gridklik
    Columns = <
      item
        Expanded = False
        FieldName = 'KODE_BUKU'
        Title.Alignment = taCenter
        Title.Caption = 'KODE BUKU'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JENIS_BUKU'
        Title.Alignment = taCenter
        Title.Caption = 'JENIS BUKU'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JUDUL_BUKU'
        Title.Alignment = taCenter
        Title.Caption = 'JUDUL BUKU'
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PENERBIT'
        Title.Alignment = taCenter
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PENULIS'
        Title.Alignment = taCenter
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAHUN'
        Title.Alignment = taCenter
        Width = 76
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 688
    Top = 80
  end
  object ADOTable1: TADOTable
    Connection = MU.ADOConnection1
    CursorType = ctStatic
    TableName = 'Buku'
    Left = 651
    Top = 80
  end
  object ADOQuery1: TADOQuery
    Connection = MU.ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'select * from Buku')
    Left = 611
    Top = 80
  end
end
