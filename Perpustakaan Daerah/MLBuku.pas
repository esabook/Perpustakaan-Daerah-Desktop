unit MLBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RpCon, RpConDS, RpDefine, RpRave;

type
  TMLB = class(TForm)
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    jn: TRadioButton;
    jd: TRadioButton;
    pn: TRadioButton;
    sb: TRadioButton;
    ed: TEdit;
    Button2: TButton;
    Button1: TButton;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure klik(Sender: TObject);
    procedure dis(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MLB: TMLB;

implementation

uses MUtama, MDBuku;

{$R *.dfm}

procedure TMLB.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TMLB.Button1Click(Sender: TObject);
var sql:String;
begin
if jn.Checked then
sql:='JENIS_BUKU'
else
if jd.Checked then
sql:='JUDUL_BUKU'
else
if pn.Checked then
sql:='PENULIS'
else
sql:='';
if not (sql='') then
sql:='where '+sql+' like "%'+ed.Text+'%" order by '+sql;
sql:='select * from Buku '+sql;

mdb.ADOQuery1.SQL.Clear;
mdb.ADOQuery1.SQL.Add(sql);
mdb.ADOQuery1.Close;
mdb.ADOQuery1.Open;
if not mdb.ADOQuery1.Eof   then
mu.RvProject1.ExecuteReport('LBU')
else
ShowMessage('Tidak terdapat data yang dimaksud '+#13+'untuk dicetak.              ');

end;

procedure TMLB.klik(Sender: TObject);
begin
if sb.Checked then ed.Enabled:=false
   else
   ed.Enabled:=true;
end;

procedure TMLB.dis(Sender: TObject; var Key: Char);
begin
Key:=toEOF;
end;

end.
