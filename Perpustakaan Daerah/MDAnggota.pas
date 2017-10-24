unit MDAnggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, Grids, DBGrids, ADODB;

type
  TMDA = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    jk: TRadioGroup;
    GroupBox1: TGroupBox;
    Br: TButton;
    Sp: TButton;
    Ed: TButton;
    Hp: TButton;
    Kl: TButton;
    tgm: TDateTimePicker;
    id: TEdit;
    nama: TEdit;
    tmpl: TEdit;
    tgll: TDateTimePicker;
    nt: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    bt: TButton;
    ADOQuery1: TADOQuery;
    Shape3: TShape;
    alm: TMemo;
    procedure KlClick(Sender: TObject);
    procedure EdClick(Sender: TObject);
    procedure kunci(Kondisi: Boolean);
    procedure isifield();
    procedure clrfield();
    procedure BrClick(Sender: TObject);
    procedure SpClick(Sender: TObject);
    procedure btClick(Sender: TObject);
    procedure gridclik(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure HpClick(Sender: TObject);
    procedure tulis();
    function HitungId:String;
    procedure press(Sender: TObject; var Key: Char);
    procedure dis(Sender: TObject; var Key: Char);
    procedure nomor(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MDA: TMDA;
  simpanmodeedit:Boolean;

implementation

uses MUtama, IPengemalian;

{$R *.dfm}
//===========================================================================
procedure TMDA.kunci(Kondisi: Boolean);

begin

id.Enabled:=not Kondisi;
nama.Enabled:=not Kondisi;
tmpl.Enabled:=not Kondisi;
tgll.Enabled:=not Kondisi;
alm.Enabled:=not Kondisi;
nt.Enabled:=not kondisi;
tgm.Enabled:=not Kondisi;
jk.Enabled:=not Kondisi;
sp.Enabled:=not Kondisi;
bt.Enabled:=NOT Kondisi;
ed.Enabled:=kondisi;
hp.Enabled:=kondisi;
DBGrid1.Enabled:=kondisi;
end;

procedure TMDA.clrfield;
begin
id.Clear;
nama.Clear;
tmpl.Clear;
jk.ItemIndex:=-1;
alm.Lines.Clear;
nt.Clear;
tgm.Date:=date;
tgll.Date:=date;
end;


procedure TMDA.isifield;
begin
if simpanmodeedit then id.Text:=ADOTable1['ID_Anggota'];
nama.Text:=ADOTable1['nama'];
tmpl.Text:=ADOTable1['TEMPAT_LAHIR'];
tgll.DateTime:=ADOTable1['TANGGAL_LAHIR'];
tgm.DateTime:=ADOTable1['TANGGAL_MASUK'];
if ADOTable1['JENIS_KELAMIN']='L' then
begin
 jk.ItemIndex:=0;
end
else
jk.ItemIndex:=1;
alm.Lines.Clear;
alm.Lines.Add(ADOTable1['ALAMAT']);
nt.Text:=ADOTable1['NO_TELP'];
end;

//========================================================================
procedure TMDA.KlClick(Sender: TObject);
begin
close;
end;


procedure TMDA.EdClick(Sender: TObject);
begin
isifield;
kunci(False);
simpanmodeedit:=true;
end;

procedure TMDA.BrClick(Sender: TObject);
begin
   kunci(False);
   clrfield;
   simpanmodeedit:=False;
   id.Text:=HitungId;
   id.Enabled:=false;
end;

procedure TMDA.SpClick(Sender: TObject);
begin

if  not ((id.Text='') or (nama.Text='') or (tmpl.Text='')or
(jk.ItemIndex = -1) or (nt.Text='')or (alm.Text='')) then


begin
if simpanmodeedit then
begin
    ADOTable1.Edit;
    tulis;
    bt.Click
end
else
begin
    With ADOQuery1 do
    begin
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('select * from Anggota where ID_Anggota="'+id.Text+'"');
      open;
    end;
    if ADOQuery1.Eof then
    begin
      ADOTable1.Append;
      tulis;
      bt.Click;
    end
    else
      ShowMessage('ID Telah Ada                ');
      kunci(true);
      isifield
end;
end
else
ShowMessage('Cek Kembali               ');
end;

procedure TMDA.btClick(Sender: TObject);
begin
isifield;
kunci(true);
simpanmodeedit:=true;
end;

procedure TMDA.gridclik(Column: TColumn);
begin
isifield;

end;

procedure TMDA.FormCreate(Sender: TObject);
begin
ADOTable1.Active:=true;
ADOQuery1.Active:=true;
kunci(true);
simpanmodeedit:=true;
end;

procedure TMDA.HpClick(Sender: TObject);
begin
clrfield;
ADOTable1.Delete;
end;

//==================================================================

function TMDA.HitungId: String;
var i:string; j:integer;  k:Boolean;
begin
 j:= ADOTable1.RecordCount;
 k:=False;
repeat
j:=j+1;
i:=IntToStr(j);
while Length(i)<5 do
i:='0'+i;
i:='A'+i;

With ADOQuery1 do
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from Anggota where ID_Anggota="'+i+'"');
open;
end;
if ADOQuery1.Eof then    k:=True;

until  k;
result:= i;
end;

procedure TMDA.tulis;
begin
    
ADOTable1['ID_Anggota'] :=id.Text;
ADOTable1['nama']:=nama.Text;
ADOTable1['TEMPAT_LAHIR']:=tmpl.Text;
ADOTable1['TANGGAL_LAHIR']:=tgll.Date;
ADOTable1['TANGGAL_MASUK']:=tgm.Date;
if jk.ItemIndex=0 then
begin
  ADOTable1['JENIS_KELAMIN']:='L';
end
else
ADOTable1['JENIS_KELAMIN']:='P';
ADOTable1['ALAMAT']:=alm.Lines.Text;
ADOTable1['NO_TELP']:=nt.Text;
ADOTable1.Post;
end;

procedure TMDA.press(Sender: TObject; var Key: Char);
begin
Key:=UpCase(key);
end;

procedure TMDA.dis(Sender: TObject; var Key: Char);
begin
     Key:=toEOF;
end;

procedure TMDA.nomor(Sender: TObject; var Key: Char);
begin
if not(key in['0'..'9',Chr(8)]) then key:=#0;
end;

end.
