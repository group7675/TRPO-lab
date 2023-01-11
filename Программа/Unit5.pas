unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.Imaging.pngimage,ShellAPI;

type
  TInfoForm = class(TForm)
    WebBrowser1: TWebBrowser;
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N2: TMenuItem;
    Image2: TImage;
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InfoForm: TInfoForm;

implementation

{$R *.dfm}

uses Unit2,Unit3,Unit4;

procedure TInfoForm.FormShow(Sender: TObject);
begin
  InfoForm.Icon.LoadFromFile(ExtractFilePath(Application.ExeName)+'img\icon.ico');
  Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'img/backbutton.png');
end;

procedure TInfoForm.Image2Click(Sender: TObject);
begin
  InfoForm.Hide;
  Three.Show;
end;

procedure TInfoForm.Image2MouseEnter(Sender: TObject);
begin
  if(Image2.Stretch=True) then Image2.Stretch:=False;
end;

procedure TInfoForm.Image2MouseLeave(Sender: TObject);
begin
  if(Image2.Stretch=False) then Image2.Stretch:=True;
end;

procedure TInfoForm.N2Click(Sender: TObject);
begin
  ShellExecute(0, PChar('Open'),PChar('Delphihelp.chm'),nil,nil,SW_SHOW);
end;

procedure TInfoForm.N3Click(Sender: TObject);
begin
  InfoForm.Hide;
  Three.Show;
end;

procedure TInfoForm.N4Click(Sender: TObject);
begin
  InfoForm.Hide;
  Author.Show;
end;

procedure TInfoForm.N5Click(Sender: TObject);
begin
  Application.Terminate
end;

end.
