unit IPinjamBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB, DBCtrls, MDAnggota,
  Menus;

type
  TIPJ = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Br: TButton;
    Sp: TButton;
    Ed: TButton;
    Kl: TButton;
    tp: TDateTimePicker;
    kp: TEdit;
    nm: TEdit;
    Memo2: TMemo;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    bt: TButton;
    idc: TLabel;
    b1c: TLabel;
    b2c: TLabel;
    Shape3: TShape;
    Shape1: TShape;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    id: TComboBox;
    b1: TComboBox;
    b2: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    idf: TButton;
    procedure KlClick(Sender: TObject);
    procedure clllose(Sender: TObject; var Action: TCloseAction);
    procedure EdClick(Sender: TObject);
    procedure kunci(Kondisi: Boolean);
    procedure isifield();
    procedure clrfield();
    procedure BrClick(Sender: TObject);
    procedure SpClick(Sender: TObject);
    procedure btClick(Sender: TObject);
    procedure gridclik(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure tulis();
    function HitungId:String;
    procedure idChange(Sender: TObject);
    procedure b1Change(Sender: TObject);
    procedure b2Change(Sender: TObject);
    procedure press(Sender: TObject; var Key: Char);
    procedure dis(Sender: TObject; var Key: Char);
    procedure nama(Sender: TObject);
    procedure idfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IPJ: TIPJ;
  simpanmodeedit, buku1b, buku2b, idb:Boolean;

implementation

uses MUtama;

{$R *.dfm}

procedure TIPJ.KlClick(Sender: TObject);
begin
close;
end;

procedure TIPJ.clllose(Sender: TObject; var Action: TCloseAction);
begin
MU.Show();
end;
//===========================================================================
procedure TIPJ.kunci(Kondisi: Boolean);

begin

id.Enabled:=not Kondisi;
kp.Enabled:=not Kondisi;
nm.Enabled:=not Kondisi;
tp.Enabled:=not Kondisi;
b1.Enabled:=not Kondisi;
b2.Enabled:=not kondisi;
idf.Enabled:=not kondisi;
sp.Enabled:=not Kondisi;
bt.Enabled:=NOT Kondisi;
ed.Enabled:=kondisi;
DBGrid1.Enabled:=kondisi;
end;

procedure TIPJ.clrfield;
begin
kp.Clear;
nm.Clear;
id.Clear;
b1.Clear;
b2.Clear;
tp.Date:=Now;
end;


procedure TIPJ.isifield;
begin
if ADOQuery2.RecordCount>0 then
begin
if simpanmodeedit then kp.Text:=ADOQuery2['Kode_Peminjaman'];
nm.Text:=ADOQuery2['Nama'];
id.Text:=ADOQuery2['ID_Anggota'];
idChange(Self);
tp.Date:=ADOQuery2['Tgl_Pinjam'];
b1.Text:=ADOQuery2['Kode_Buku1'];
b1Change(Self);
b2.Text:=ADOQuery2['Kode_Buku2'];
b2Change(Self);
end;
end;

//========================================================================



procedure TIPJ.EdClick(Sender: TObject);
begin
isifield;
kunci(False);
simpanmodeedit:=true;
end;

procedure TIPJ.BrClick(Sender: TObject);
begin
   kunci(False);
   clrfield;
   simpanmodeedit:=False;
   kp.Text:=HitungId;
   kp.Enabled:=false;
end;

procedure TIPJ.SpClick(Sender: TObject);
begin
if  (buku1b and buku2b and idb)and(not ((kp.Text='') or (nm.Text='') or (id.Text='')or  (b1.Text = '') or (b2.Text=''))) then
begin
  if simpanmodeedit then
  begin
    tulis;
    bt.Click
  end
  else
  begin
    With ADOQuery1 do
    begin
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('select * from Peminjaman where Kode_Peminjaman="'+kp.Text+'"');
      open;
    end;
    if ADOQuery1.Eof then
    begin
      tulis;
      bt.Click;
    end
    else
      begin
      ShowMessage('Kode Peminjaman Telah Ada                ');
      kunci(true);
      isifield;
      end;
    end;
  end
else
ShowMessage('Cek Kembali               ');
end;

procedure TIPJ.btClick(Sender: TObject);
begin
isifield;
kunci(true);
simpanmodeedit:=true;
end;

procedure TIPJ.gridclik(Column: TColumn);
begin
isifield;

end;

procedure TIPJ.FormCreate(Sender: TObject);
begin
kunci(true);
simpanmodeedit:=true;
ADOQuery1.Active:=true;
ADOQuery2.Active:=True;

tp.Date:=now;
end;

//==================================================================

function TIPJ.HitungId: String;
var i:string; j:integer;  k:Boolean;
begin
 j:= ADOQuery1.RecordCount;
 k:=false;
repeat
j:=j+1;
i:=IntToStr(j);
while Length(i)<5 do
i:='0'+i;
i:='PJ'+i;

With ADOQuery1 do
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from Peminjaman where Kode_Peminjaman="'+i+'"');
open;
end;
if ADOQuery1.Eof then    k:=True;

until  k;
result:= i;
end;

procedure TIPJ.tulis;
var sql:String;
begin
if simpanmodeedit then
sql:='update Peminjaman set Kode_Peminjaman="'+kp.Text+'",ID_Anggota="'+id.Text+'", Tgl_Pinjam="'+FormatDateTime('dd/mm/yyyy', tp.Date)+'", Kode_Buku1="'+b1.Text+'", Kode_Buku2="'+b2.Text+'" where Kode_Peminjaman="'+kp.Text+'"'
else
sql:='insert into Peminjaman (Kode_Peminjaman,ID_Anggota,Tgl_Pinjam,Kode_Buku1,Kode_Buku2) values ("'+kp.Text+'","'+id.Text+'","'+FormatDateTime('dd/mm/yyyy', tp.Date)+'","'+b1.Text+'","'+b2.Text+'")';
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add(sql);
ADOQuery1.ExecSQL;
ADOQuery2.Close;
ADOQuery2.Open;
end;
//need optimized=====================================================
procedure TIPJ.idChange(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select Nama from Anggota where Id_Anggota = "'+id.Text+'"' );
  ADOQuery1.Close;
  ADOQuery1.Open;
  if not ADOQuery1.Eof then
  begin
  ADOQuery1.First;
  idc.Font.Color:=clLime;
  idb:=true;
  nm.Text:=ADOQuery1['Nama'];
  nm.Enabled:=false;
  end
  else
  begin
  idc.Font.Color:=clRed;
  idb:=false;
  end;
end;

procedure TIPJ.b1Change(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from Buku where KODE_BUKU = "'+b1.Text+'"' );
  ADOQuery1.Close;
  ADOQuery1.Open;
  if (not ADOQuery1.Eof) and (not (b1.Text = b2.Text)) and (not (b1.Text='')) then
  begin
  b1c.Font.Color:=clLime;
  buku1b:=true;
  Label7.Caption:='Judul Buku 1: '+ADOQuery1['judul_buku']+'; Penulis: '+ADOQuery1['penulis']+'; Tahun : '+ADOQuery1['tahun']+'; Penerbit : '+ADOQuery1['penerbit']+'.';
  end
  else
  begin
  b1c.Font.Color:=clRed;
  buku1b:=false;
  Label7.Caption:='';
  end;
  
end;

procedure TIPJ.b2Change(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from Buku where KODE_BUKU = "'+b2.Text+'"' );
  ADOQuery1.Close;
  ADOQuery1.Open;
  if (not ADOQuery1.Eof) and (not (b2.Text=b1.Text)) and (not (b1.Text='')) then
  begin
  b2c.Font.Color:=clLime;
  buku2b:=true;
    Label8.Caption:='Judul Buku 2: '+ADOQuery1['judul_buku']+'; Penulis: '+ADOQuery1['penulis']+'; Tahun : '+ADOQuery1['tahun']+'; Penerbit : '+ADOQuery1['penerbit']+'.'
  end
  else
  begin
  b2c.Font.Color:=clRed;
  buku2b:=false;
  Label8.Caption:='';
  end;
end;

procedure TIPJ.press(Sender: TObject; var Key: Char);
begin
Key:=UpCase(key);
end;

procedure TIPJ.dis(Sender: TObject; var Key: Char);
begin
Key:=toEOF;
end;

procedure TIPJ.nama(Sender: TObject);
begin
  if Length(nm.Text)>=3 then
  begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select Id_anggota from Anggota where Nama like "%'+nm.Text+'%"' );
  ADOQuery1.Close;
  ADOQuery1.Open;
  if not ADOQuery1.Eof then id.Items.Clear;
  while not ADOQuery1.Eof do
  begin
    id.Items.Add(ADOQuery1['id_anggota']);
    ADOQuery1.Next;
  end;
  if id.Items.Count>=0 then id.ItemIndex:=0;
  end;
end;

procedure TIPJ.idfClick(Sender: TObject);
var i:TStringList;
begin
i:=TStringList.Create;
    ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select kode_buku from buku' );
  ADOQuery1.Close;
  ADOQuery1.Open;
  while not ADOQuery1.Eof do
  begin
    i.Add(ADOQuery1['kode_buku']);
    ADOQuery1.Next;
  end;
  b1.Items:=i;
  b2.Items:=i;
end;

end.
