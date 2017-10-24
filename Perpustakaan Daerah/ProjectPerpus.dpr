program ProjectPerpus;

uses
  Forms,
  MUtama in 'MUtama.pas' {MU},
  Perpus in 'Perpus.pas' {Login},
  MDAnggota in 'MDAnggota.pas' {MDA},
  MDBuku in 'MDBuku.pas' {MDB},
  IPinjamBuku in 'IPinjamBuku.pas' {IPJ},
  IPengemalian in 'IPengemalian.pas' {IPG},
  MLAnggota in 'MLAnggota.pas' {MLA},
  MLBuku in 'MLBuku.pas' {MLB},
  LPenjualan in 'LPenjualan.pas' {LPJ},
  LPengembalian in 'LPengembalian.pas' {LPG};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Aplikasi PBPP';

  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TMU, MU);
  Application.CreateForm(TMDA, MDA);
  Application.CreateForm(TMDB, MDB);
  Application.CreateForm(TIPJ, IPJ);
  Application.CreateForm(TIPG, IPG);
  Application.CreateForm(TMLA, MLA);
  Application.CreateForm(TMLB, MLB);
  Application.CreateForm(TLPJ, LPJ);
  Application.CreateForm(TLPG, LPG);
  Application.Run;
end.
