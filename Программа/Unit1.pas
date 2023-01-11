unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Samples.Gauges, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Menus;

type
  TStart = class(TForm)
    mainbackground: TImage;
    Text: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Gauge1: TGauge;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShowTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mainbackgroundClick(Sender: TObject);
    procedure secondtimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Start: TStart;

implementation

{$R *.dfm}

uses Unit2;

procedure TStart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TStart.FormCreate(Sender: TObject);
begin
  mainbackground.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'img/mainbackground.png');
  Start.Icon.LoadFromFile(ExtractFilePath(Application.ExeName)+'img\icon.ico');
end;

procedure TStart.FormShowTimer(Sender: TObject);
begin
  if(Text.Visible=True) then Text.Visible:=False
  else Text.Visible:=True;
end;

procedure TStart.mainbackgroundClick(Sender: TObject);
begin
  Timer2.Enabled:=True;
  Timer1.Enabled:=False;
  Text.Visible:=False;
end;

procedure TStart.secondtimer(Sender: TObject);
begin
  Gauge1.Progress:=Gauge1.Progress+1;
  if(Gauge1.Progress=100) then
  begin
    Timer2.Enabled:=False;
    Start.Hide;
    Main.Show;
  end;
end;

end.
