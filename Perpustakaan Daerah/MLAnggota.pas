unit MLAnggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RpCon, RpConDS, RpDefine, RpRave;

type
  TMLA = class(TForm)
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    tm: TRadioButton;
    id: TRadioButton;
    se: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    ed1: TComboBox;
    ed2: TComboBox;
    Label2: TLabel;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure clllose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure press(Sender: TObject; var Key: Char);
    procedure klik(Sender: TObject);
    procedure dis(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MLA: TMLA;

implementation

uses MUtama, MDAnggota, MDBuku;

{$R *.dfm}

procedure TMLA.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TMLA.clllose(Sender: TObject; var Action: TCloseAction);
begin
MU.Show();
end;


procedure TMLA.Button1Click(Sender: TObject);
var sql:String;
begin
if tm.Checked then
sql:='TANGGAL_MASUK'
else
if id.Checked then
sql:='ID_Anggota'
else
sql:='';


if not (sql='') then
if tm.Checked then
sql:='where '+sql+' between #'+FormatDateTime('m/d/yyyy',StrToDate(ed1.Text))+'# and #'+FormatDateTime('m/d/yyyy',StrToDate(ed1.Text))+'#'
else
sql:='where Right([id_anggota],5) between '+copy(ed1.Text,2,6)+' and '+copy(ed2.Text,2,6)+';';

sql:='select * from Anggota '+sql;
mda.ADOQuery1.SQL.Clear;
mda.ADOQuery1.SQL.Add(sql);
mda.ADOQuery1.Close;
mda.ADOQuery1.Open;
if not mda.ADOQuery1.Eof   then
mu.RvProject1.ExecuteReport('LA')
else
ShowMessage('Tidak terdapat data yang dimaksud '+#13+'untuk dicetak.              ');

end;

procedure TMLA.press(Sender: TObject; var Key: Char);
begin
if key=#13 then
Button1.Click;
end;

procedure TMLA.klik(Sender: TObject);
var sql:String;
begin

   if se.Checked then
   begin
   ed1.Enabled:=false;
   ed2.Enabled:=false;
   end
   else
   begin

   ed1.Enabled:=true;
   ed2.Enabled:=true;
   ed1.Items.Clear;
   ed2.Items.Clear;
   ed2.Clear;
   ed1.Clear;
   if tm.Checked then  sql:='select TANGGAL_MASUK from Anggota group by TANGGAL_MASUK'
   else sql:='select * from anggota';
                   
    mda.ADOQuery1.SQL.Clear;
    mda.ADOQuery1.SQL.Add(sql);
    mda.ADOQuery1.Close;
    mda.ADOQuery1.Open;
    while not mda.ADOQuery1.Eof do
      begin
      if tm.Checked then
      begin
      ed1.Items.Add(mda.ADOQuery1['TANGGAL_MASUK']);
      ed2.Items.Add(mda.ADOQuery1['TANGGAL_MASUK']);
      end
      else
      begin
      ed1.Items.Add(mda.ADOQuery1['ID_Anggota']);
      ed2.Items.Add(mda.ADOQuery1['ID_Anggota']);
      end;
      mda.ADOQuery1.Next;
      end;
   end;

end;


procedure TMLA.dis(Sender: TObject; var Key: Char);
begin
Key:=toEOF;
end;


end.
