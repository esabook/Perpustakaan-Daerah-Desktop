unit Perpus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TLogin = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label4: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    l: TButton;
    Button2: TButton;
    procedure lClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure press(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

uses DateUtils, MUtama;

{$R *.dfm}

procedure TLogin.lClick(Sender: TObject);
begin
  if not ((Edit1.Text='')or(Edit2.Text='')) then
  begin
  if  ((Edit1.Text='admin') and (Edit2.Text='admin')) then
  begin
  hide;
   mu.Showmodal;
  Show;
  end
  else
  begin
  ShowMessage('Informasi Salah.                         '+#13#13);
  end;
  end
  else
  ShowMessage('Periksa Formulir Kembali.         '+#13#13);

end;

procedure TLogin.Button2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TLogin.press(Sender: TObject; var Key: Char);
begin
if key=#13 then
l.Click;
end;


procedure TLogin.FormCreate(Sender: TObject);

begin
  Label4.Caption:='Jayapura, '+ FormatDateTime('dd mmmmmm yyyy',Date);
end;

end.
