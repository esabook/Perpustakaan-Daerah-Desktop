unit MUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus, DB, ADODB, jpeg, RpCon, RpConDS,
  RpDefine, RpRave, RpBase, RpSystem, XPMan;
type
  TMU = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    DataAnggota1: TMenuItem;
    DataBuku1: TMenuItem;
    ransaksi1: TMenuItem;
    PeminjamanBuku1: TMenuItem;
    PengembalianBuku1: TMenuItem;
    Laporan1: TMenuItem;
    Anggota1: TMenuItem;
    PeminjamanBuku2: TMenuItem;
    PengembalianBuku2: TMenuItem;
    ADOConnection1: TADOConnection;
    Buku1: TMenuItem;
    Image1: TImage;
    RvProject1: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    RvDataSetConnection2: TRvDataSetConnection;
    RvDataSetConnection3: TRvDataSetConnection;
    RvDataSetConnection4: TRvDataSetConnection;
    RvSystem1: TRvSystem;
    XPManifest1: TXPManifest;
    procedure DataAnggota1Click(Sender: TObject);
    procedure DataBuku1Click(Sender: TObject);
    procedure PeminjamanBuku1Click(Sender: TObject);
    procedure PengembalianBuku1Click(Sender: TObject);
    procedure Anggota1Click(Sender: TObject);
    procedure PeminjamanBuku2Click(Sender: TObject);
    procedure PengembalianBuku2Click(Sender: TObject);
    procedure close(Sender: TObject; var Action: TCloseAction);
    procedure Buku1Click(Sender: TObject);
    procedure resizes(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MU: TMU;

implementation

uses MDAnggota, MDBuku, IPinjamBuku, IPengemalian, MLAnggota, LPenjualan,
  LPengembalian, Perpus, MLBuku, RpDevice;


{$R *.dfm}

procedure TMU.DataAnggota1Click(Sender: TObject);
begin
  MDA.ShowModal;
end;


procedure TMU.DataBuku1Click(Sender: TObject);
begin
 MDB.ShowModal;
end;

procedure TMU.PeminjamanBuku1Click(Sender: TObject);
begin
IPJ.show();
end;

procedure TMU.PengembalianBuku1Click(Sender: TObject);
begin
IPG.show();
end;

procedure TMU.Anggota1Click(Sender: TObject);
begin
MLA.show();
end;

procedure TMU.PeminjamanBuku2Click(Sender: TObject);
begin
 LPJ.show();
end;

procedure TMU.PengembalianBuku2Click(Sender: TObject);
begin
LPG.show();
end;

procedure TMU.close(Sender: TObject; var Action: TCloseAction);
begin
mda.Close;
mdb.Close;
ipg.Close;
ipj.Close;
LPG.Close;
LPJ.Close;
mla.Close;
mlb.Close;
Login.show();
end;

procedure TMU.Buku1Click(Sender: TObject);
begin
MLB.show;
end;


procedure TMU.resizes(Sender: TObject);
begin
  Image1.Width:=mu.Width;
  Image1.Height:=mu.Height;
  
end;

end.
