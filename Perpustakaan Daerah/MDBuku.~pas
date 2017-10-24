unit MDBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB, DBCtrls;

type
  TMDB = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    Br: TButton;
    Sp: TButton;
    Ed: TButton;
    Hp: TButton;
    Bt: TButton;
    Kl: TButton;
    kb: TEdit;
    jdb: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    tt: TComboBoxEx;
    jb: TComboBoxEx;
    pb: TComboBoxEx;
    pl: TComboBoxEx;
    Shape3: TShape;
    procedure KlClick(Sender: TObject);
    procedure clllose(Sender: TObject; var Action: TCloseAction);
    procedure SpClick(Sender: TObject);
     procedure isifield();
    procedure clrfield();
    procedure kunci(Kondisi: Boolean);
    procedure BrClick(Sender: TObject);
    procedure EdClick(Sender: TObject);
    procedure BtClick(Sender: TObject);
    procedure HpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridklik(Column: TColumn);
    procedure tulis();
    function HitungId:String;
    procedure press(Sender: TObject; var Key: Char);
    procedure dis(Sender: TObject; var Key: Char);
    function isicombo(field:String):TStringList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MDB: TMDB;
    simpanmodeedit:Boolean;
implementation

uses MUtama, DateUtils, MDAnggota;

{$R *.dfm}

procedure TMDB.KlClick(Sender: TObject);
begin
Close;
end;

procedure TMDB.clllose(Sender: TObject; var Action: TCloseAction);
begin
MU.show;
end;

procedure TMDB.SpClick(Sender: TObject);
begin
if  not ((kb.Text='') or (jb.Text='') or (jdb.Text='')or
(pl.text ='') or (pb.Text='')or (pl.Text='') or (tt.Text='')) then
begin

if simpanmodeedit then
begin
ADOTable1.Edit;
tulis ;
end
else
begin
With ADOQuery1 do
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from Buku where KODE_BUKU="'+kb.Text+'"');
open;
end;
if ADOQuery1.Eof then
begin
ADOTable1.Append;
tulis;
end
else
ShowMessage('Kode Buku Telah Ada         ');

kunci(true);
isifield;
end;
end
else
ShowMessage('Cek Kembali        ');
bt.Click;
end;

procedure TMDB.clrfield;
begin
kb.Clear;
jb.Text:='';
jdb.Clear;
pb.Text:='';
pl.Text:='';
tt.Text:='';
end;

procedure TMDB.isifield;
begin
if simpanmodeedit then kb.Text:=ADOTable1['KODE_BUKU'];
jb.Text:=ADOTable1['JENIS_BUKU'];
jdb.Text:=ADOTable1['JUDUL_BUKU'];
pb.text:=ADOTable1['PENERBIT'];
pl.text:=ADOTable1['PENULIS'];
tt.Text:=ADOTable1['TAHUN'];
end;

procedure TMDB.kunci(Kondisi: Boolean);
begin

kb.Enabled:=not Kondisi;
jb.Enabled:=not Kondisi;
jdb.Enabled:=not Kondisi;
pb.Enabled:=not Kondisi;
pl.Enabled:=not Kondisi;
tt.Enabled:=not kondisi;
sp.Enabled:=not Kondisi;
bt.Enabled:=NOT Kondisi;
ed.Enabled:=kondisi;
hp.Enabled:=kondisi;
DBGrid1.Enabled:=kondisi;
end;

procedure TMDB.BrClick(Sender: TObject);
begin
     clrfield;
kunci(False);
simpanmodeedit:=false;
   kb.Text:=HitungId;
   kb.Enabled:=false;
   jb.Items.Clear;
   jb.Items.AddStrings(isicombo('JENIS_BUKU'));
    pb.items.Clear;
   pb.Items.AddStrings(isicombo('PENERBIT'));
  pl.items.Clear;
  pl.Items.AddStrings(isicombo('PENULIS'));
end;

procedure TMDB.EdClick(Sender: TObject);
begin
    isifield;
kunci(False);
simpanmodeedit:=true;
end;

procedure TMDB.BtClick(Sender: TObject);
begin
isifield;
kunci(true);
end;

procedure TMDB.HpClick(Sender: TObject);
begin
clrfield;
ADOTable1.Delete;
end;

procedure TMDB.FormCreate(Sender: TObject);
var i:Integer;
begin
    for i:=0 to 30 do
    tt.Items.Add(IntToStr(StrToInt(FormatDateTime('yyyy', date))-i));


  ADOQuery1.Active:=true;
ADOTable1.Active:=true;
 simpanmodeedit:=true;
 kunci(true);
end;

procedure TMDB.gridklik(Column: TColumn);
begin
isifield;
end;


function TMDB.HitungId: String;
var i:string; j:integer;  k:Boolean;
begin
k:=false;
j:= ADOTable1.RecordCount;
repeat
j:=j+1;
i:=IntToStr(j);
while Length(i)<5 do
i:='0'+i;
i:='B'+i;

With ADOQuery1 do
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from Buku where Kode_Buku="'+i+'"');
open;
end;
if ADOQuery1.Eof then    k:=True;

until  k;
result:= i;
end;

procedure TMDB.tulis;
begin
ADOTable1['KODE_BUKU'] :=kb.Text;
ADOTable1['JENIS_BUKU']:=jb.Text;
ADOTable1['JUDUL_BUKU']:=jdb.Text;
ADOTable1['PENERBIT']:=pb.text;
ADOTable1['PENULIS']:=pl.Text;
ADOTable1['TAHUN']:=tt.Text;
ADOTable1.Post;
end;

procedure TMDB.press(Sender: TObject; var Key: Char);
begin
      Key:=UpCase(key);
end;

procedure TMDB.dis(Sender: TObject; var Key: Char);
begin
Key:=toEOF;
end;

function TMDB.isicombo(field: String): TStringList;
var isi:TStringList;
begin
    isi:=TStringList.Create;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select '+field+' from Buku group by '+field);
    ADOQuery1.Close;
    ADOQuery1.Open;
    while not ADOQuery1.Eof do
    begin
    isi.Add(ADOQuery1[field]);
    ADOQuery1.Next;
    end;
    Result:=isi;
end;


end.
