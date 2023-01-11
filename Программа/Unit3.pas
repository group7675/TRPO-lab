unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Menus,ShellAPI;

type
  TThree = class(TForm)
    Image1: TImage;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox4: TListBox;
    rvxv: TListBox;
    ListBox3: TListBox;
    ListBox5: TListBox;
    ListBox6: TListBox;
    ListBox7: TListBox;
    ListBox8: TListBox;
    ListBox9: TListBox;
    ListBox10: TListBox;
    ListBox11: TListBox;
    ListBox12: TListBox;
    ListBox13: TListBox;
    ListBox14: TListBox;
    ListBox15: TListBox;
    ListBox16: TListBox;
    ListBox17: TListBox;
    ListBox18: TListBox;
    ListBox19: TListBox;
    ListBox20: TListBox;
    ListBox21: TListBox;
    ListBox22: TListBox;
    ListBox23: TListBox;
    ListBox24: TListBox;
    ListBox27: TListBox;
    ListBox28: TListBox;
    ListBox29: TListBox;
    ListBox30: TListBox;
    ListBox31: TListBox;
    ListBox32: TListBox;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N2: TMenuItem;
    Image2: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rvxvClick(Sender: TObject);
    procedure ListBox31Click(Sender: TObject);
    procedure ListBox18Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure ListBox4Click(Sender: TObject);
    procedure ListBox13Click(Sender: TObject);
    procedure ListBox19Click(Sender: TObject);
    procedure ListBox15Click(Sender: TObject);
    procedure ListBox30Click(Sender: TObject);
    procedure ListBox16Click(Sender: TObject);
    procedure ListBox24Click(Sender: TObject);
    procedure ListBox21Click(Sender: TObject);
    procedure ListBox10Click(Sender: TObject);
    procedure ListBox20Click(Sender: TObject);
    procedure ListBox8Click(Sender: TObject);
    procedure ListBox27Click(Sender: TObject);
    procedure ListBox23Click(Sender: TObject);
    procedure ListBox14Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox11Click(Sender: TObject);
    procedure ListBox6Click(Sender: TObject);
    procedure ListBox17Click(Sender: TObject);
    procedure ListBox29Click(Sender: TObject);
    procedure ListBox22Click(Sender: TObject);
    procedure ListBox12Click(Sender: TObject);
    procedure ListBox9Click(Sender: TObject);
    procedure ListBox7Click(Sender: TObject);
    procedure ListBox28Click(Sender: TObject);
    procedure ListBox32Click(Sender: TObject);
    procedure ListBox5Click(Sender: TObject);
    procedure ListBox3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
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
  Three: TThree;

implementation

{$R *.dfm}

uses Unit2,Unit4,Unit5;

procedure TThree.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TThree.FormShow(Sender: TObject);
begin
  Three.Icon.LoadFromFile(ExtractFilePath(Application.ExeName)+'img\icon.ico');
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'img/1.png');
  Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'img/backbutton.png');
end;

procedure TThree.Image2Click(Sender: TObject);
begin
  Three.Hide;
  Main.Show;
end;

procedure TThree.Image2MouseEnter(Sender: TObject);
begin
  if(Image2.Stretch=True) then Image2.Stretch:=False;
end;

procedure TThree.Image2MouseLeave(Sender: TObject);
begin
  if(Image2.Stretch=False) then Image2.Stretch:=True;
end;

procedure TThree.ListBox10Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\6.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox11Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\13.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox12Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\12.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox13Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\15.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox14Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\5.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox15Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\9.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox16Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\4.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox17Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\20.htm');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox18Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\31.htm');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox19Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\30.htm');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox1Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\7.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox20Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\14.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox21Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\18.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox22Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\11.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox23Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\10.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox24Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\8.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox27Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\19.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox28Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\22.htm');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox29Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\21.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox2Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\3.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox30Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\17.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox31Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\16.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox32Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\23.htm');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox3Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\25.htm');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox4Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\2.html');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox5Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\24.htm');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox6Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\28.htm');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox7Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\27.htm');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox8Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\29.htm');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.ListBox9Click(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\26.htm');
  InfoForm.Show;
  Three.Hide;
end;

procedure TThree.N2Click(Sender: TObject);
begin
  ShellExecute(0, PChar('Open'),PChar('Delphihelp.chm'),nil,nil,SW_SHOW);
end;

procedure TThree.N3Click(Sender: TObject);
begin
  Three.Hide;
  Main.Show;
end;

procedure TThree.N4Click(Sender: TObject);
begin
  Author.Show;
  Three.Hide;
end;

procedure TThree.N5Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TThree.rvxvClick(Sender: TObject);
begin
  InfoForm.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'files\(1).html');
  InfoForm.Show;
  Three.Hide;
end;

end.
