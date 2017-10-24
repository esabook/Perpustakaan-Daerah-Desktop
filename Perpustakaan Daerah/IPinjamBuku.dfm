object IPJ: TIPJ
  Left = 436
  Top = 234
  Width = 755
  Height = 762
  HorzScrollBar.Visible = False
  Caption = 'Input Peminjaman Buku'
  Color = clMoneyGreen
  Constraints.MaxWidth = 755
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
    Left = 112
    Top = 0
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
      'INPUT PEMINJAMAN BUKU PERPUSTAKAAN '
      'DAERAH '
      'JAYAPURA')
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    OnKeyPress = dis
  end
  object Panel1: TPanel
    Left = 0
    Top = 72
    Width = 737
    Height = 297
    BevelInner = bvLowered
    BevelOuter = bvNone
    BiDiMode = bdRightToLeftReadingOnly
    Color = clMedGray
    ParentBiDiMode = False
    TabOrder = 1
    object Shape1: TShape
      Left = 0
      Top = 0
      Width = 737
      Height = 297
      Brush.Color = clGray
    end
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 85
      Height = 13
      Caption = 'Kode Peminjaman'
    end
    object Label2: TLabel
      Left = 432
      Top = 80
      Width = 28
      Height = 13
      Caption = 'Nama'
    end
    object Label3: TLabel
      Left = 403
      Top = 48
      Width = 54
      Height = 13
      Caption = 'ID Anggota'
    end
    object Label6: TLabel
      Left = 387
      Top = 16
      Width = 73
      Height = 13
      Caption = 'Tanggal Pinjam'
    end
    object idc: TLabel
      Left = 688
      Top = 32
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
      Top = 176
      Width = 657
      Height = 13
      AutoSize = False
    end
    object Label8: TLabel
      Left = 40
      Top = 192
      Width = 657
      Height = 13
      AutoSize = False
    end
    object Panel2: TPanel
      Left = 40
      Top = 112
      Width = 657
      Height = 57
      BevelOuter = bvLowered
      BiDiMode = bdRightToLeftNoAlign
      Color = clAppWorkSpace
      ParentBiDiMode = False
      TabOrder = 5
      object Shape3: TShape
        Left = 0
        Top = 0
        Width = 657
        Height = 57
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
        Left = 328
        Top = 24
        Width = 34
        Height = 13
        Caption = 'Buku 2'
      end
      object b1c: TLabel
        Left = 276
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
        Left = 564
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
        Left = 80
        Top = 20
        Width = 193
        Height = 21
        ItemHeight = 13
        MaxLength = 6
        TabOrder = 0
        OnChange = b1Change
        OnKeyPress = press
      end
      object b2: TComboBox
        Left = 368
        Top = 20
        Width = 193
        Height = 21
        ItemHeight = 13
        MaxLength = 6
        TabOrder = 1
        OnChange = b2Change
        OnKeyPress = press
      end
      object idf: TButton
        Left = 584
        Top = 16
        Width = 59
        Height = 33
        Caption = 'Isi Daftar'
        TabOrder = 2
        OnClick = idfClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 40
      Top = 216
      Width = 657
      Height = 73
      Caption = 'Tombol Kontrol'
      Color = clTeal
      ParentColor = False
      TabOrder = 6
      object Br: TButton
        Left = 16
        Top = 24
        Width = 97
        Height = 41
        Caption = 'Baru'
        TabOrder = 0
        OnClick = BrClick
      end
      object Sp: TButton
        Left = 208
        Top = 24
        Width = 97
        Height = 41
        Caption = 'Simpan'
        TabOrder = 2
        OnClick = SpClick
      end
      object Ed: TButton
        Left = 112
        Top = 24
        Width = 97
        Height = 41
        Caption = 'Edit'
        TabOrder = 1
        OnClick = EdClick
      end
      object Kl: TButton
        Left = 536
        Top = 24
        Width = 90
        Height = 41
        Caption = 'Keluar'
        TabOrder = 4
        OnClick = KlClick
      end
      object bt: TButton
        Left = 304
        Top = 24
        Width = 97
        Height = 41
        Caption = 'Batal'
        TabOrder = 3
        OnClick = btClick
      end
    end
    object tp: TDateTimePicker
      Left = 488
      Top = 8
      Width = 209
      Height = 24
      BevelInner = bvNone
      BevelOuter = bvNone
      Date = 42742.000000000000000000
      Time = 42742.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object kp: TEdit
      Left = 144
      Top = 8
      Width = 169
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 1
      OnKeyPress = press
    end
    object nm: TEdit
      Left = 488
      Top = 72
      Width = 209
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 4
      OnChange = nama
    end
    object Memo2: TMemo
      Left = 40
      Top = 88
      Width = 273
      Height = 25
      BevelEdges = [beRight, beBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        'BUKU YANG DIPINJAM')
      ParentFont = False
      TabOrder = 0
    end
    object id: TComboBox
      Left = 488
      Top = 40
      Width = 201
      Height = 21
      ItemHeight = 13
      MaxLength = 6
      TabOrder = 3
      OnChange = idChange
      OnKeyPress = press
    end
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 368
    Width = 734
    Height = 353
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
        FieldName = 'Kode_Peminjaman'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Peminjaman'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_Anggota'
        Title.Alignment = taCenter
        Title.Caption = 'ID Anggota'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAMA'
        Title.Alignment = taCenter
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tgl_Pinjam'
        Title.Alignment = taCenter
        Title.Caption = 'Tgl Pinjam'
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kode_Buku1'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Buku 1'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kode_Buku2'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Buku 2'
        Width = 126
        Visible = True
      end>
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = MU.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT pj.Kode_Peminjaman,pj.ID_Anggota,Ag.NAMA,pj.Tgl_Pinjam,pj' +
        '.Kode_Buku1,pj.Kode_Buku2 from Anggota Ag, peminjaman pj where A' +
        'g.ID_Anggota=pj.ID_Anggota')
    Left = 651
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 691
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 688
    Top = 8
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = MU.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT pj.Kode_Peminjaman,pj.ID_Anggota,Ag.NAMA,pj.Tgl_Pinjam,pj' +
        '.Kode_Buku1,pj.Kode_Buku2 from Anggota Ag, peminjaman pj where A' +
        'g.ID_Anggota=pj.ID_Anggota order by pj.Kode_Peminjaman ')
    Left = 651
    Top = 8
  end
end
