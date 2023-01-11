unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,ShellAPI, Vcl.ExtCtrls,
  Vcl.MPlayer, Vcl.Imaging.pngimage, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TAuthor = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N2: TMenuItem;
    MediaPlayer1: TMediaPlayer;
    Image1: TImage;
    Image2: TImage;
    Panel1: TPanel;
    Image3: TImage;
    Image4: TImage;
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Author: TAuthor;
  i:integer;

implementation

{$R *.dfm}

uses Unit3,Unit2;

procedure TAuthor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TAuthor.FormShow(Sender: TObject);
begin
  Author.Icon.LoadFromFile(ExtractFilePath(Application.ExeName)+'img\icon.ico');
  Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'img/backbutton.png');
  MediaPlayer1.FileName:=ExtractFilePath(Application.ExeName)+'video.wmv';
  Image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'img/play.png');
  Image4.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'img/stop.png');
  MediaPlayer1.Open;
  MediaPlayer1.Play;
  i:=0;
end;

procedure TAuthor.Image2Click(Sender: TObject);
begin
  MediaPlayer1.Close;
  Author.Hide;
  Main.Show;
end;

procedure TAuthor.Image2MouseEnter(Sender: TObject);
begin
  if(Image2.Stretch=True) then Image2.Stretch:=False;
end;

procedure TAuthor.Image2MouseLeave(Sender: TObject);
begin
  if(Image2.Stretch=False) then Image2.Stretch:=True;
end;

procedure TAuthor.Image3Click(Sender: TObject);
begin
  MediaPlayer1.Play;
end;

procedure TAuthor.Image4Click(Sender: TObject);
begin
  MediaPlayer1.Stop;
end;

procedure TAuthor.N2Click(Sender: TObject);
begin
  ShellExecute(0, PChar('Open'),PChar('Delphihelp.chm'),nil,nil,SW_SHOW);
end;

procedure TAuthor.N3Click(Sender: TObject);
begin
  Author.Hide;
  Main.Show;
end;

procedure TAuthor.N4Click(Sender: TObject);
begin
  Three.Show;
  Author.Hide;
end;

procedure TAuthor.N5Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TAuthor.Panel1Click(Sender: TObject);
begin
  if(i=0) then
  begin
    MediaPlayer1.Stop;
    i:=1;
  end
  else
  begin
    MediaPlayer1.Play;
    i:=0;
  end;
end;

end.
