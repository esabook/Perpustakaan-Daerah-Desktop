unit LPengembalian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TLPG = class(TForm)
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    tgb: TRadioButton;
    blb: TRadioButton;
    thb: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    tg: TComboBox;
    bl: TComboBox;
    th: TComboBox;
    RadioButton1: TRadioButton;
    procedure Button2Click(Sender: TObject);
    procedure clllose(Sender: TObject; var Action: TCloseAction);
    procedure tklik(Sender: TObject);
    procedure Bklik(Sender: TObject);
    procedure thklik(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure kll(Sender: TObject);
    procedure dis(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LPG: TLPG;

implementation

uses MUtama, MDAnggota, IPengemalian;

{$R *.dfm}

procedure TLPG.Button2Click(Sender: TObject);
begin
close;
end;

procedure TLPG.clllose(Sender: TObject; var Action: TCloseAction);
begin
MU.Show();
end;

procedure TLPG.tklik(Sender: TObject);
begin
tg.Enabled:=true;
bl.Enabled:=True;
th.Enabled:=true;
end;

procedure TLPG.Bklik(Sender: TObject);
begin
tg.Enabled:=false;
bl.Enabled:=True;
th.Enabled:=true;
end;

procedure TLPG.thklik(Sender: TObject);
begin
tg.Enabled:=false;
bl.Enabled:=false;
th.Enabled:=true;
end;

procedure TLPG.Button1Click(Sender: TObject);
var sql, yes, tgs, bls:String;
begin

yes:='0';tgs:='0';bls:='0';
//=======================
if tg.Enabled then
begin
tgs:='0';
if tg.ItemIndex>-1 then
tgs:=FloatToStr(tg.ItemIndex);
//=======================
tgs:=' day (Tgl_kembali)="'+tgs+'"';
end;
if bl.Enabled then
begin
bls:='0';
if bl.ItemIndex>-1 then
bls:=FloatToStr(bl.ItemIndex);
bls:=' month (Tgl_kembali)="'+bls+'"';
end;
//=======================
if th.Enabled then
begin
if th.Text='' then
yes:='0'
else
yes:=th.Text;
yes:=' year (Tgl_kembali)="'+yes+'"';
end;
//=======================

if tgb.Checked then
sql:='and '+tgs+' and '+bls+' and '+yes
else
if blb.Checked then
sql:='and '+bls+' and '+yes
else
if thb.Checked then
sql:='and '+yes
else
sql:='';

sql:='SELECT pg.Kode_Pengembalian,pg.Kode_peminjaman,pj.ID_Anggota,pg.Tgl_Kembali,pj.Kode_Buku1,pj.Kode_Buku2,pg.Terlambat,pg.Denda from Peminjaman pj,pengembalian pg where pj.Kode_peminjaman=pg.Kode_peminjaman '+sql;

ipg.ADOQuery1.SQL.Clear;
ipg.ADOQuery1.SQL.Add(sql);
ipg.ADOQuery1.Close;
ipg.ADOQuery1.Open;
if not ipg.ADOQuery1.Eof   then
mu.RvProject1.ExecuteReport('LPG')
else
ShowMessage('Tidak terdapat data yang dimaksud '+#13+'untuk dicetak.              ');

end;

procedure TLPG.kll(Sender: TObject);
begin
tg.Enabled:=false;
bl.Enabled:=false;
th.Enabled:=false;
end;


procedure TLPG.dis(Sender: TObject; var Key: Char);
begin
   Key:=toEOF;
end;

procedure TLPG.FormCreate(Sender: TObject);
var i:Integer;
begin
    for i:=0 to 30 do
    th.Items.Add(IntToStr(StrToInt(FormatDateTime('yyyy', date))-i));
end;

end.
