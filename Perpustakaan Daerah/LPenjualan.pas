unit LPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TLPJ = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    tgb: TRadioButton;
    blb: TRadioButton;
    thb: TRadioButton;
    tg: TComboBox;
    bl: TComboBox;
    th: TComboBox;
    RadioButton1: TRadioButton;
    procedure Button2Click(Sender: TObject);
    procedure clllose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure tgklik(Sender: TObject);
    procedure Blklik(Sender: TObject);
    procedure thklik(Sender: TObject);
    procedure klll(Sender: TObject);
    procedure dis(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LPJ: TLPJ;

implementation

uses MUtama, IPinjamBuku;

{$R *.dfm}

procedure TLPJ.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TLPJ.clllose(Sender: TObject; var Action: TCloseAction);
begin
MU.Show();
end;

procedure TLPJ.Button1Click(Sender: TObject);
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
tgs:=' day (Tgl_Pinjam)="'+tgs+'"';
end;
if bl.Enabled then
begin
bls:='0';
if bl.ItemIndex>-1 then
bls:=FloatToStr(bl.ItemIndex);
bls:=' month (Tgl_Pinjam)="'+bls+'"';
end;
//=======================
if th.Enabled then
begin
if th.Text='' then
yes:='0'
else
yes:=th.Text;
yes:=' year (Tgl_Pinjam)="'+yes+'"';
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

sql:='SELECT pj.Kode_Peminjaman,pj.ID_Anggota,Ag.NAMA,pj.Tgl_Pinjam,pj.Kode_Buku1,pj.Kode_Buku2 from Anggota Ag, peminjaman pj where Ag.ID_Anggota=pj.ID_Anggota '+sql+' order by pj.Kode_Peminjaman';

IPJ.ADOQuery1.SQL.Clear;
IPJ.ADOQuery1.SQL.Add(sql);
IPJ.ADOQuery1.Close;
IPJ.ADOQuery1.Open;
if not IPJ.ADOQuery1.Eof   then
mu.RvProject1.ExecuteReport('LPJ')
else
ShowMessage('Tidak terdapat data yang dimaksud '+#13+'untuk dicetak.              ');

end;

procedure TLPJ.tgklik(Sender: TObject);
begin
tg.Enabled:=true;
bl.Enabled:=True;
th.Enabled:=true;
end;

procedure TLPJ.Blklik(Sender: TObject);
begin
tg.Enabled:=false;
bl.Enabled:=True; 
th.Enabled:=true;
end;

procedure TLPJ.thklik(Sender: TObject);
begin
tg.Enabled:=false;
bl.Enabled:=false; 
th.Enabled:=true;
end;

procedure TLPJ.klll(Sender: TObject);
begin
tg.Enabled:=false;
bl.Enabled:=false;
th.Enabled:=false;
end;

procedure TLPJ.dis(Sender: TObject; var Key: Char);
begin
      Key:=toEOF;
end;

procedure TLPJ.FormCreate(Sender: TObject);
var i:Integer;
begin
    for i:=0 to 30 do
    th.Items.Add(IntToStr(StrToInt(FormatDateTime('yyyy', date))-i));

end;

end.
