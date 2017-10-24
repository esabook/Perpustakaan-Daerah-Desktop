object IPG: TIPG
  Left = 461
  Top = 67
  Width = 836
  Height = 770
  HorzScrollBar.Visible = False
  Caption = 'Input Pengembalian Buku'
  Color = clMoneyGreen
  Constraints.MaxWidth = 836
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
  object Label10: TLabel
    Left = 120
    Top = 8
    Width = 553
    Height = 65
    Alignment = taCenter
    AutoSize = False
    Caption = 'INPUT PENGEMBALIAN BUKU PERPUSTAKAAN DAERAH JAYAPURA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Panel1: TPanel
    Left = 43
    Top = 72
    Width = 726
    Height = 337
    BevelInner = bvLowered
    BevelOuter = bvNone
    BiDiMode = bdRightToLeftReadingOnly
    Color = clMedGray
    Ctl3D = False
    ParentBiDiMode = False
    ParentCtl3D = False
    TabOrder = 0
    object Shape1: TShape
      Left = 0
      Top = 0
      Width = 729
      Height = 337
      Brush.Color = clGray
      Pen.Color = clGray
      Pen.Style = psClear
    end
    object Label1: TLabel
      Left = 48
      Top = 24
      Width = 95
      Height = 13
      Caption = 'Kode Pengembalian'
    end
    object Label2: TLabel
      Left = 400
      Top = 56
      Width = 28
      Height = 13
      Caption = 'Nama'
    end
    object Label3: TLabel
      Left = 400
      Top = 24
      Width = 54
      Height = 13
      Caption = 'ID Anggota'
    end
    object Label6: TLabel
      Left = 400
      Top = 88
      Width = 79
      Height = 13
      Caption = 'Tanggal Kembali'
    end
    object kpc: TLabel
      Left = 292
      Top = 35
      Width = 13
      Height = 46
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -40
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 40
      Top = 268
      Width = 75
      Height = 13
      Caption = 'Terlambat (Hari)'
    end
    object Label8: TLabel
      Left = 40
      Top = 300
      Width = 60
      Height = 13
      Caption = 'Denda (IDR)'
    end
    object Label9: TLabel
      Left = 48
      Top = 56
      Width = 85
      Height = 13
      Caption = 'Kode Peminjaman'
    end
    object Label11: TLabel
      Left = 40
      Top = 168
      Width = 657
      Height = 13
      AutoSize = False
    end
    object Label12: TLabel
      Left = 40
      Top = 184
      Width = 657
      Height = 13
      AutoSize = False
    end
    object Memo3: TMemo
      Left = 40
      Top = 208
      Width = 297
      Height = 41
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeMode = imDisable
      Lines.Strings = (
        'Harap menekan ENTER setelah memilih/mengisi pilihan yang '
        'bertanda asterik (*) jika pilihan tidak merespon.')
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      OnKeyPress = dis
    end
    object GroupBox1: TGroupBox
      Left = 376
      Top = 216
      Width = 313
      Height = 105
      Caption = 'Tombol Kontrol'
      Color = clTeal
      ParentColor = False
      TabOrder = 8
      object Br: TButton
        Left = 8
        Top = 16
        Width = 97
        Height = 40
        Caption = 'Baru'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BrClick
      end
      object Sp: TButton
        Left = 8
        Top = 56
        Width = 97
        Height = 43
        Caption = 'Simpan'
        TabOrder = 2
        OnClick = SpClick
      end
      object Ed: TButton
        Left = 104
        Top = 16
        Width = 90
        Height = 40
        Caption = 'Edit'
        TabOrder = 1
        OnClick = EdClick
      end
      object Kl: TButton
        Left = 216
        Top = 56
        Width = 90
        Height = 43
        Caption = 'Keluar'
        TabOrder = 5
        OnClick = KlClick
      end
      object bt: TButton
        Left = 104
        Top = 56
        Width = 90
        Height = 43
        Caption = 'Batal'
        TabOrder = 3
        OnClick = btClick
      end
      object ht: TButton
        Left = 216
        Top = 16
        Width = 89
        Height = 40
        Caption = 'Hitung'
        TabOrder = 4
        OnClick = HtClick
      end
    end
    object tk: TDateTimePicker
      Left = 480
      Top = 80
      Width = 193
      Height = 24
      BevelInner = bvNone
      BevelOuter = bvNone
      Date = 0.586309479156625400
      Time = 0.586309479156625400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object kp: TEdit
      Left = 160
      Top = 16
      Width = 177
      Height = 22
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = kpjpress
    end
    object nm: TEdit
      Left = 480
      Top = 48
      Width = 193
      Height = 22
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnChange = nmChange
      OnKeyPress = kpjpress
    end
    object Memo2: TMemo
      Left = 40
      Top = 88
      Width = 297
      Height = 25
      BevelEdges = [beRight, beBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        'BUKU YANG DIKEMBALIKAN')
      ParentFont = False
      TabOrder = 0
      OnKeyPress = dis
    end
    object Panel2: TPanel
      Left = 40
      Top = 112
      Width = 649
      Height = 49
      BevelOuter = bvLowered
      BiDiMode = bdRightToLeftNoAlign
      Color = clAppWorkSpace
      ParentBiDiMode = False
      TabOrder = 7
      object Shape2: TShape
        Left = 8
        Top = 0
        Width = 649
        Height = 49
        Brush.Color = clTeal
      end
      object Label4: TLabel
        Left = 40
        Top = 24
        Width = 34
        Height = 13
        Caption = 'Buku 1'
      end
      object Label5: TLabel
        Left = 360
        Top = 24
        Width = 34
        Height = 13
        Caption = 'Buku 2'
      end
      object b1c: TLabel
        Left = 300
        Top = 3
        Width = 13
        Height = 46
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -40
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object b2c: TLabel
        Left = 620
        Top = 3
        Width = 13
        Height = 46
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -40
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object b1: TComboBox
        Left = 120
        Top = 16
        Width = 177
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        MaxLength = 6
        ParentFont = False
        TabOrder = 0
        OnChange = b1Change
        OnKeyPress = b1press
      end
      object b2: TComboBox
        Left = 440
        Top = 16
        Width = 177
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        MaxLength = 6
        ParentFont = False
        TabOrder = 1
        OnChange = b2Change
        OnKeyPress = b2press
      end
      object BitBtn1: TBitBtn
        Left = 320
        Top = 16
        Width = 25
        Height = 25
        Caption = '><'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
    object tl: TEdit
      Left = 136
      Top = 260
      Width = 57
      Height = 22
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnKeyPress = dis
    end
    object dd: TEdit
      Left = 136
      Top = 292
      Width = 129
      Height = 22
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnKeyPress = dis
    end
    object kpj: TComboBox
      Left = 160
      Top = 48
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      MaxLength = 7
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnChange = idfill
      OnKeyPress = kpjpress
      OnMeasureItem = tx
    end
    object idf: TButton
      Left = 312
      Top = 48
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 3
      OnClick = idfClick
    end
    object id: TComboBox
      Left = 480
      Top = 16
      Width = 193
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      MaxLength = 6
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnChange = b1Change
      OnKeyPress = b1press
    end
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 408
    Width = 814
    Height = 321
    Ctl3D = False
    DataSource = DataSource2
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = gridclik
    Columns = <
      item
        Expanded = False
        FieldName = 'Kode_Pengembalian'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Pengembalian'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kode_peminjaman'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Peminjaman'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_Anggota'
        Title.Alignment = taCenter
        Title.Caption = 'ID Anggota'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tgl_Kembali'
        Title.Alignment = taCenter
        Title.Caption = 'Tgl Kembali'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kode_Buku1'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Buku1'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kode_Buku2'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Buku2'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Terlambat'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Denda'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    Left = 771
    Top = 240
  end
  object ADOQuery1: TADOQuery
    Connection = MU.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT pg.Kode_Pengembalian,pg.Kode_peminjaman,pj.ID_Anggota,pg.' +
        'Tgl_Kembali,pj.Kode_Buku1,pj.Kode_Buku2,pg.Terlambat,pg.Denda fr' +
        'om Peminjaman pj,pengembalian pg where pj.Kode_peminjaman=pg.Kod' +
        'e_peminjaman')
    Left = 771
    Top = 208
  end
  object ADOQuery2: TADOQuery
    Connection = MU.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT pg.Kode_Pengembalian,pg.Kode_peminjaman,pj.ID_Anggota,Ag.' +
        'nama,pg.Tgl_Kembali,pj.Kode_Buku1,pj.Kode_Buku2,pg.Terlambat,pg.' +
        'Denda '
      'from Peminjaman pj,pengembalian pg, Anggota Ag '
      
        'where pj.Kode_peminjaman=pg.Kode_peminjaman and Ag.Id_anggota=Pj' +
        '.id_anggota')
    Left = 779
    Top = 152
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 776
    Top = 184
  end
end
