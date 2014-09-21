unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls,MMSystem;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  filemusic:string;

implementation
  uses unit1;
{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form2.Visible:=true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   OpenDialog1.Execute;
   If OpenDialog1.Execute then
   begin
   filemusic:=OpenDialog1.Filename;
   sndPlaySound(OpenDialog1.Filename, snd_Async or snd_NoDefault);
   end;

end;

end.

