program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Start},
  Unit2 in 'Unit2.pas' {Main},
  Unit3 in 'Unit3.pas' {Three},
  Unit4 in 'Unit4.pas' {Author},
  Unit5 in 'Unit5.pas' {InfoForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TStart, Start);
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TThree, Three);
  Application.CreateForm(TAuthor, Author);
  Application.CreateForm(TInfoForm, InfoForm);
  Application.Run;
end.
