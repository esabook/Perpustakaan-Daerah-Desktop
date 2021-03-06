unit IPengemalian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, ADODB, DB, Buttons;

type
  TIPG = class(TForm)
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
    tk: TDateTimePicker;
    kp: TEdit;
    nm: TEdit;
    Memo2: TMemo;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    bt: TButton;
    kpc: TLabel;
    b1c: TLabel;
    b2c: TLabel;
    Label7: TLabel;
    tl: TEdit;
    Label8: TLabel;
    dd: TEdit;
    ht: TButton;
    Label9: TLabel;
    b1: TComboBox;
    b2: TComboBox;
    kpj: TComboBox;
    Memo3: TMemo;
    Shape1: TShape;
    Shape2: TShape;
    Label10: TLabel;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    Label11: TLabel;
    idf: TButton;
    Label12: TLabel;
    BitBtn1: TBitBtn;
    id: TComboBox;

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
    procedure idfill(Sender: TObject);
    procedure b1Change(Sender: TObject);
    procedure b2Change(Sender: TObject);
    procedure kpjpress(Sender: TObject; var Key: Char);
    function isicombo(field:String):TStringList;
    procedure validate(dari, text, formorkolom, tabel:string);
    procedure b1press(Sender: TObject; var Key: Char);
    procedure b2press(Sender: TObject; var Key: Char);
    procedure htClick(Sender: TObject);
    procedure dis(Sender: TObject; var Key: Char);
    procedure idfClick(Sender: TObject);
    procedure tx(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure nmChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IPG: TIPG;
  simpanmodeedit, buku1b, buku2b, kpjb:Boolean;
  tglpinjam1, tglpinjam2:TDate;

implementation

uses MUtama, DateUtils, StrUtils;

{$R *.dfm}

procedure TIPG.KlClick(Sender: TObject);
begin
close;
end;

procedure TIPG.clllose(Sender: TObject; var Action: TCloseAction);
begin
MU.Show();
end;
//===============================================     NOT OPTIMIZED
//===========================================================================
procedure TIPG.kunci(Kondisi: Boolean);

begin

kp.Enabled:=not Kondisi;
kpj.Enabled:=not Kondisi;
idf.Enabled:=not Kondisi;
tk.Enabled:=not Kondisi;
b1.Enabled:=not Kondisi;
b2.Enabled:=not kondisi;
sp.Enabled:=not Kondisi;
bt.Enabled:=NOT Kondisi;
ed.Enabled:=kondisi;
DBGrid1.Enabled:=kondisi;
end;

procedure TIPG.clrfield;
begin
kp.Clear;
kpj.Clear;
nm.Clear;
id.Clear;
b1.Clear;
b2.Clear;
tl.Text:='0';
dd.Text:='0';
kpc.Font.Color:=clRed;
b1c.font.Color:=clred;
b2c.Font.Color:=clred;
tk.Date:=Date;
buku1b:=false;
buku2b:=False;
kpjb:=False;
 Label11.Caption:='';
  Label12.Caption:='';
end;


procedure TIPG.isifield;
begin
if not ADOQuery2.Eof then
begin
if simpanmodeedit then kp.Text:=ADOQuery2['Kode_Pengembalian'];
kpj.Text:=ADOQuery2['Kode_Peminjaman'];
idfill(Self);
nm.Text:=ADOQuery2['Nama'];
id.Text:=ADOQuery2['ID_Anggota'];
tk.DateTime:=ADOQuery2['Tgl_Kembali'];
b1.Text:=ADOQuery2['Kode_Buku1'];
b2.Text:=ADOQuery2['Kode_Buku2'];
b1Change(Self);
b2Change(Self);
tl.Text:=IntToStr(ADOQuery2['Terlambat']);
dd.Text:=IntToStr(ADOQuery2['Denda']);
end;
end;

//========================================================================



procedure TIPG.EdClick(Sender: TObject);
begin
isifield;
kunci(False);
simpanmodeedit:=true;
end;

procedure TIPG.BrClick(Sender: TObject);
begin
   kunci(False);
   clrfield;
   simpanmodeedit:=False;
   kp.Text:=HitungId;
   kp.Enabled:=false;
   kpj.Items.Clear;
   kpj.Items.AddStrings(isicombo('Kode_Peminjaman'));
end;

procedure TIPG.SpClick(Sender: TObject);
begin

if (buku1b and buku2b and kpjb)and(not ((kp.Text='') or (nm.Text='') or (id.Text='')or  (b1.Text = '') or (b2.Text=''))) then


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
      ADOQuery1.SQL.Add('select * from Pengembalian where Kode_Peminjaman="'+kpj.Text+'"');
      open;
    end;
    if ADOQuery1.Eof then
    begin

      tulis;
      bt.Click;

    end
    else
    begin
      ShowMessage('Riwayat Pengembalian Telah Ada                ');
      end;

end;
end
else
ShowMessage('Cek Kembali               ');
end;

procedure TIPG.btClick(Sender: TObject);
begin
isifield;
kunci(true);
simpanmodeedit:=true;
end;

procedure TIPG.gridclik(Column: TColumn);
begin
isifield;

end;

procedure TIPG.FormCreate(Sender: TObject);
begin
kunci(true);
ADOQuery1.Active:=true;
ADOQuery2.Active:=true;
simpanmodeedit:=true;
tk.Date:=Date;
end;

//==================================================================

function TIPG.HitungId: String;
var i:string; j:integer;  k:Boolean;
begin
 j:= ADOQuery2.RecordCount;
 k:=false;
repeat
j:=j+1;
i:=IntToStr(j);
while Length(i)<5 do
i:='0'+i;
i:='PG'+i;

With ADOQuery1 do
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from Pengembalian where Kode_Pengembalian="'+i+'"');
open;
end;
if ADOQuery1.Eof then    k:=True;

until  k;
result:= i;
end;

procedure TIPG.tulis;
var sql:String;
begin
if simpanmodeedit then
sql:='update Pengembalian set Kode_Pengembalian="'+kp.Text+'",Kode_Peminjaman="'+kpj.Text+'", Tgl_Kembali="'+FormatDateTime('dd/mm/yyyy', tk.Date)+'", Terlambat="'+tl.Text+'", Denda="'+dd.Text+'" where Kode_Pengembalian="'+kp.Text+'"'
else
sql:='insert into Pengembalian (Kode_Pengembalian,Kode_Peminjaman,Tgl_Kembali,Terlambat,Denda) values ("'+kp.Text+'","'+kpj.Text+'","'+FormatDateTime('dd/mm/yyyy', tk.Date)+'",'+tl.Text+','+dd.Text+')';
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add(sql);
ADOQuery1.ExecSQL;
ADOQuery2.Close;
ADOQuery2.Open;
      kunci(true);
      isifield;
end;

//need optimized=====================================================
procedure TIPG.idfill(Sender: TObject);
begin
  
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select pj.ID_Anggota, Ag.Nama from Peminjaman pj, Anggota Ag where Kode_Peminjaman = "'+kpj.Text+'" and Ag.id_anggota=pj.id_anggota' );
  ADOQuery1.Close;
  ADOQuery1.Open;
  if not ADOQuery1.Eof then
  begin
  kpc.Font.Color:=clLime;
  kpjb:=true;
  ADOQuery1.First;
  id.Text:=ADOQuery1['ID_Anggota'];
  id.Enabled:=False;
  nm.Text:=ADOQuery1['Nama'];
  nm.Enabled:=False;
  b1.Text:=''; b2.Text:='';
  end
  else
  begin
      kpc.Font.Color:=clRed;
  kpjb:=false;
  end;
        b1.Items.Clear;
  b2.Items.Clear;
validate('kpj',kpj.Text, 'Kode_Peminjaman', 'Peminjaman');
end;

procedure TIPG.b1Change(Sender: TObject);
begin
  nmChange(Self);
  if not ADOQuery1.Eof then
  begin
    id.Hint:=ADOQuery1['Nama']+'; '+ADOQuery1['alamat'];
    ShowMessage('');
  end;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select pj.Kode_BuKu1, bk.* from Peminjaman pj, buku bk where (pj.Kode_BuKu1 = "'+b1.Text+'") and (pj.Kode_buku2 like "%'+b2.Text+'%") and (pj.Kode_Peminjaman like "%'+kpj.Text+'%") and (bk.kode_buku=pj.kode_buku1)' );
  ADOQuery1.Close;
  ADOQuery1.Open;
  if not ADOQuery1.Eof then
  begin
  b1c.Font.Color:=clLime;
  buku1b:=true;
    Label11.Caption:='Judul Buku 1: '+ADOQuery1['judul_buku']+'; Penulis: '+ADOQuery1['penulis']+'; Tahun : '+ADOQuery1['tahun']+'; Penerbit : '+ADOQuery1['penerbit']+'.'
  end
  else
  begin
     b1c.Font.Color:=clRed;
  buku1b:=false;
  Label11.Caption:='';
  end;
       kpj.Items.Clear;
  b2.Items.Clear;
validate('b1',b1.Text, 'Kode_BuKu1', 'Peminjaman');
end;

procedure TIPG.b2Change(Sender: TObject);
begin

  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select pj.Kode_BuKu2, bk.* from Peminjaman pj, buku bk where pj.Kode_BuKu2 = "'+b2.Text+'" and pj.Kode_buku1 like "%'+b1.Text+'%" and pj.Kode_Peminjaman like "%'+kpj.Text+'%" and bk.kode_buku=pj.kode_buku2');
  ADOQuery1.Close;
  ADOQuery1.Open;
  if not ADOQuery1.Eof then
  begin
  b2c.Font.Color:=clLime;
  buku2b:=true;
  Label12.Caption:='Judul Buku 2: '+ADOQuery1['judul_buku']+'; Penulis: '+ADOQuery1['penulis']+'; Tahun : '+ADOQuery1['tahun']+'; Penerbit : '+ADOQuery1['penerbit']+'.'
  end
  else
  begin
  b2c.Font.Color:=clRed;
  buku2b:=false;
  Label12.Caption:='';
  end;
       kpj.Items.Clear;
  b1.Items.Clear;
validate('b2',b2.Text, 'Kode_BuKu2', 'Peminjaman');
end;

procedure TIPG.kpjpress(Sender: TObject; var Key: Char);
begin
Key:=UpCase(key);
if key=#13 then
 idfill(sender);
end;




procedure TIPG.validate(dari,text, formorkolom, tabel: string);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from '+tabel+' where '+formorkolom+' = "'+Text+'"' );
  ADOQuery1.Close;
  ADOQuery1.Open;
  begin
  while not ADOQuery1.Eof do
  begin
    if dari='kpj' then
    begin
      If not (b1.Items.IndexOf(ADOQuery1['Kode_BuKu1'])>=0) Then b1.Items.Add(ADOQuery1['Kode_BuKu1']) ;
      If not (b2.Items.IndexOf(ADOQuery1['Kode_BuKu2'])>=0) Then b2.Items.Add(ADOQuery1['Kode_BuKu2']);
    end
    else
    if dari='b1' then
    begin
      If not (kpj.Items.IndexOf(ADOQuery1['Kode_Peminjaman'])>=0) Then kpj.Items.Add(ADOQuery1['Kode_Peminjaman']);
      If not (b2.Items.IndexOf(ADOQuery1['Kode_BuKu2'])>=0) Then b2.Items.Add(ADOQuery1['Kode_BuKu2']);
    end
    else
    begin
      If not (kpj.Items.IndexOf(ADOQuery1['Kode_Peminjaman'])>=0) Then kpj.Items.Add(ADOQuery1['Kode_Peminjaman']);
      If not (b1.Items.IndexOf(ADOQuery1['Kode_BuKu1'])>=0) Then b1.Items.Add(ADOQuery1['Kode_BuKu1']);
    end;
    ADOQuery1.Next;
  end;
  end;


end;

procedure TIPG.b1press(Sender: TObject; var Key: Char);
begin
   Key:=UpCase(key);
if key=#13 then
b1Change(Sender);
end;

procedure TIPG.b2press(Sender: TObject; var Key: Char);
begin
     Key:=UpCase(key);
if key=#13 then
b2Change(sender);
end;

procedure TIPG.htClick(Sender: TObject);
var terlmbt:Integer;
begin
   ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from Peminjaman where Kode_Peminjaman="'+kpj.Text+'" and ID_Anggota="'+id.Text+'" and (Kode_BuKu1="'+b1.Text+'" or Kode_BuKu2= "'+b2.Text+'")');
  ADOQuery1.Close;
  ADOQuery1.Open;
  if not ADOQuery1.Eof then
  begin
    terlmbt:=DaysBetween(ADOQuery1['Tgl_Pinjam'],tk.Date);
    tl.Text:=IntToStr(terlmbt-3) ;
    if terlmbt>3 then
      begin
      dd.Text:=IntToStr((terlmbt-3)* 5000);
      end
      else
      begin
      tl.Text:='0';
      dd.Text:='0';
      end;
  end
  else
  begin
      tl.Text:='0';
      dd.Text:='0';
  end;
end;


////////==================FRUST========================//////

procedure TIPG.dis(Sender: TObject; var Key: Char);
begin
  Key:=toEOF;
end;

function TIPG.isicombo(field: String): TStringList;
var isi:TStringList;
begin
    isi:=TStringList.Create;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT pj.'+field+' from peminjaman pj where (select count(*) from pengembalian pg where pj.kode_peminjaman=pg.kode_peminjaman)=0 group by '+field);
    ADOQuery1.Close;
    ADOQuery1.Open;
    while not ADOQuery1.Eof do
    begin
    isi.Add(ADOQuery1[field]);
    ADOQuery1.Next;
    end;
    Result:=isi;
end;

procedure TIPG.idfClick(Sender: TObject);
begin
kpj.Items.Clear;
   kpj.Items.AddStrings(isicombo('Kode_Peminjaman'));
end;


procedure TIPG.tx(Control: TWinControl; Index: Integer;
  var Height: Integer);
begin
ShowMessage('');
end;


procedure TIPG.BitBtn1Click(Sender: TObject);
var t:String;
begin
  t:=b1.Text;
  b1.Text:=b2.Text;
  b2.Text:=t;
  b1Change(Self);
  b2Change(Self);
end;

procedure TIPG.nmChange(Sender: TObject);
begin
  if Length(nm.Text)>=3 then
  begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from Anggota where Nama like "%'+nm.Text+'%"' );
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

end.

