unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Menus,ShellAPI;

type
  TMain = class(TForm)
    menubackground: TImage;
    AuthorButton: TImage;
    ExitButton: TImage;
    ThreeButton: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExitButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ThreeButtonMouseEnter(Sender: TObject);
    procedure ThreeButtonMouseLeave(Sender: TObject);
    procedure AuthorButtonMouseEnter(Sender: TObject);
    procedure ExitButtonMouseEnter(Sender: TObject);
    procedure ExitButtonMouseLeave(Sender: TObject);
    procedure AuthorButtonMouseLeave(Sender: TObject);
    procedure ThreeButtonClick(Sender: TObject);
    procedure AuthorButtonClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

uses Unit3,Unit4;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TMain.FormShow(Sender: TObject);
begin
  menubackground.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'img/menubackground.png');
  AuthorButton.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'img/video.png');
  ThreeButton.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'img/three.png');
  ExitButton.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'img/exit.png');
  Main.Icon.LoadFromFile(ExtractFilePath(Application.ExeName)+'img\icon.ico');

end;

procedure TMain.N2Click(Sender: TObject);
begin
  ShellExecute(0, PChar('Open'),PChar('Delphihelp.chm'),nil,nil,SW_SHOW);
end;

procedure TMain.N3Click(Sender: TObject);
begin
  Main.Hide;
  Three.Show;
end;

procedure TMain.N4Click(Sender: TObject);
begin
  Main.Hide;
  Author.Show;
end;

procedure TMain.N5Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMain.ThreeButtonClick(Sender: TObject);
begin
  Main.Hide;
  Three.Show;
end;

procedure TMain.ThreeButtonMouseEnter(Sender: TObject);
begin
  if(ThreeButton.Stretch=True) then ThreeButton.Stretch:=False;
end;

procedure TMain.ThreeButtonMouseLeave(Sender: TObject);
begin
  if(ThreeButton.Stretch=False) then ThreeButton.Stretch:=True;
end;

procedure TMain.AuthorButtonClick(Sender: TObject);
begin
   Main.Hide;
   Author.Show;
end;

procedure TMain.AuthorButtonMouseEnter(Sender: TObject);
begin
  if(AuthorButton.Stretch=True) then AuthorButton.Stretch:=False;
end;

procedure TMain.AuthorButtonMouseLeave(Sender: TObject);
begin
   if(AuthorButton.Stretch=False) then AuthorButton.Stretch:=True;
end;

procedure TMain.ExitButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMain.ExitButtonMouseEnter(Sender: TObject);
begin
  if(ExitButton.Stretch=True) then ExitButton.Stretch:=False;
end;

procedure TMain.ExitButtonMouseLeave(Sender: TObject);
begin
  if(ExitButton.Stretch=False) then ExitButton.Stretch:=True;
end;

end.
