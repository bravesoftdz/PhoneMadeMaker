unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    size: TComboBox;
    Timer1: TTimer;
    typephone: TComboBox;
    ocphone: TComboBox;
    yadro: TComboBox;
    graphics: TComboBox;
    camera: TComboBox;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    balance: TLabel;
    Label2: TLabel;
    label229: TLabel;
    label228: TLabel;
    telefon: TLabel;
    status: TLabel;
    cena: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    prodaza1: TLabel;
    prodaza2: TLabel;
    prodaza3: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure cameraChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure graphicsChange(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure ocphoneChange(Sender: TObject);
    procedure sizeChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure typephoneChange(Sender: TObject);
    procedure yadroChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form4: TForm4;
  nazvanie:string;
  cenaphone:integer;

implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.ComboBox1Change(Sender: TObject);
begin
  end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  If size.ItemIndex=0 then
  begin
    cenaphone:=cenaphone+1200;
  end;
  If size.ItemIndex=1 then
  begin
    cenaphone:=cenaphone+1500;
  end;
  If size.ItemIndex=2 then
  begin
    cenaphone:=cenaphone+2000;
  end;
  If size.ItemIndex=3 then
  begin
    cenaphone:=cenaphone+2700;
  end;
  If size.ItemIndex=4 then
  begin
    cenaphone:=cenaphone+3500;
  end;
  If size.ItemIndex=5 then
  begin
    cenaphone:=cenaphone+6000;
  end;
  If typephone.ItemIndex=0 then
  begin
    cenaphone:=cenaphone+3500;
  end;
  If typephone.ItemIndex=1 then
  begin
    cenaphone:=cenaphone+500;
  end;
  If ocphone.ItemIndex=0 then
  begin
    cenaphone:=cenaphone+500;
  end;
  If ocphone.ItemIndex=1 then
  begin
    cenaphone:=cenaphone+1200;
  end;
  If ocphone.ItemIndex=2 then
  begin
    cenaphone:=cenaphone+1500;
  end;
  If ocphone.ItemIndex=3 then
  begin
    cenaphone:=cenaphone+2000;
  end;
  If ocphone.ItemIndex=4 then
  begin
    cenaphone:=cenaphone+3000;
  end;
  If ocphone.ItemIndex=5 then
  begin
    cenaphone:=cenaphone+3500;
  end;
  If ocphone.ItemIndex=6 then
  begin
    cenaphone:=cenaphone+7000;
  end;
  If ocphone.ItemIndex=7 then
  begin
    cenaphone:=cenaphone+15000;
  end;
  If ocphone.ItemIndex=8 then
  begin
    cenaphone:=cenaphone+1000;
  end;
  If camera.ItemIndex=0 then
  begin

  end;
  If camera.ItemIndex=1 then
  begin
    cenaphone:=cenaphone+500;
  end;
  If camera.ItemIndex=2 then
  begin
    cenaphone:=cenaphone+700;
  end;
  If camera.ItemIndex=3 then
  begin
    cenaphone:=cenaphone+1000;
  end;
  If camera.ItemIndex=4 then
  begin
    cenaphone:=cenaphone+1500;
  end;
  If camera.ItemIndex=5 then
  begin
    cenaphone:=cenaphone+2500;
  end;
  If camera.ItemIndex=6 then
  begin
    cenaphone:=cenaphone+3000;
  end;
  If camera.ItemIndex=7 then
  begin
    cenaphone:=cenaphone+7000;
  end;
  If camera.ItemIndex=8 then
  begin
    cenaphone:=cenaphone+10000;
  end;
  If camera.ItemIndex=9 then
  begin
    cenaphone:=cenaphone+14500;
  end;
  If camera.ItemIndex=10 then
  begin
    cenaphone:=cenaphone+18000;
  end;
  If camera.ItemIndex=11 then
  begin
    cenaphone:=cenaphone+25000;
  end;
  If camera.ItemIndex=12 then
  begin
    cenaphone:=cenaphone+35000;
  end;
  If camera.ItemIndex=13 then
  begin
    cenaphone:=cenaphone+50000;
  end;
  If yadro.ItemIndex=0 then
  begin
    cenaphone:=cenaphone+500;
  end;
  If yadro.ItemIndex=1 then
  begin
    cenaphone:=cenaphone+1000;
  end;
  If yadro.ItemIndex=2 then
  begin
    cenaphone:=cenaphone+2000;
  end;
  If yadro.ItemIndex=3 then
  begin
    cenaphone:=cenaphone+4000;
  end;
  If yadro.ItemIndex=4 then
  begin
    cenaphone:=cenaphone+5500;
  end;
  If yadro.ItemIndex=5 then
  begin
    cenaphone:=cenaphone+7000;
  end;
  If yadro.ItemIndex=6 then
  begin
    cenaphone:=cenaphone+14000;
  end;
  If yadro.ItemIndex=7 then
  begin
    cenaphone:=cenaphone+28000;
  end;
  If graphics.ItemIndex=0 then
  begin

  end;
  If graphics.ItemIndex=1 then
  begin
    cenaphone:=cenaphone+5000;
  end;
  If graphics.ItemIndex=2 then
  begin
    cenaphone:=cenaphone+10000;
  end;
  If graphics.ItemIndex=3 then
  begin
    cenaphone:=cenaphone+20000;
  end;
  If graphics.ItemIndex=4 then
  begin
    cenaphone:=cenaphone+40000;
  end;

    cena.caption:=(IntToStr(cenaphone));
  cenaphone:=0;
end;

procedure TForm4.cameraChange(Sender: TObject);
begin

end;

procedure TForm4.FormCreate(Sender: TObject);
begin
end;

procedure TForm4.graphicsChange(Sender: TObject);
begin

end;

procedure TForm4.Label10Click(Sender: TObject);
begin
 cena.caption:=IntToStr(cenaphone);
end;

procedure TForm4.ocphoneChange(Sender: TObject);
begin

end;

procedure TForm4.sizeChange(Sender: TObject);
begin

end;

procedure TForm4.Timer1Timer(Sender: TObject);

begin
    If size.ItemIndex=0 then
  begin
    cenaphone:=cenaphone+1200;
  end;
  If size.ItemIndex=1 then
  begin
    cenaphone:=cenaphone+1500;
  end;
  If size.ItemIndex=2 then
  begin
    cenaphone:=cenaphone+2000;
  end;
  If size.ItemIndex=3 then
  begin
    cenaphone:=cenaphone+2700;
  end;
  If size.ItemIndex=4 then
  begin
    cenaphone:=cenaphone+3500;
  end;
  If size.ItemIndex=5 then
  begin
    cenaphone:=cenaphone+6000;
  end;
  If typephone.ItemIndex=0 then
  begin
    cenaphone:=cenaphone+3500;
  end;
  If typephone.ItemIndex=1 then
  begin
    cenaphone:=cenaphone+500;
  end;
  If ocphone.ItemIndex=0 then
  begin
    cenaphone:=cenaphone+500;
  end;
  If ocphone.ItemIndex=1 then
  begin
    cenaphone:=cenaphone+1200;
  end;
  If ocphone.ItemIndex=2 then
  begin
    cenaphone:=cenaphone+1500;
  end;
  If ocphone.ItemIndex=3 then
  begin
    cenaphone:=cenaphone+2000;
  end;
  If ocphone.ItemIndex=4 then
  begin
    cenaphone:=cenaphone+3000;
  end;
  If ocphone.ItemIndex=5 then
  begin
    cenaphone:=cenaphone+3500;
  end;
  If ocphone.ItemIndex=6 then
  begin
    cenaphone:=cenaphone+7000;
  end;
  If ocphone.ItemIndex=7 then
  begin
    cenaphone:=cenaphone+15000;
  end;
  If ocphone.ItemIndex=8 then
  begin
    cenaphone:=cenaphone+1000;
  end;
  If camera.ItemIndex=0 then
  begin

  end;
  If camera.ItemIndex=1 then
  begin
    cenaphone:=cenaphone+500;
  end;
  If camera.ItemIndex=2 then
  begin
    cenaphone:=cenaphone+700;
  end;
  If camera.ItemIndex=3 then
  begin
    cenaphone:=cenaphone+1000;
  end;
  If camera.ItemIndex=4 then
  begin
    cenaphone:=cenaphone+1500;
  end;
  If camera.ItemIndex=5 then
  begin
    cenaphone:=cenaphone+2500;
  end;
  If camera.ItemIndex=6 then
  begin
    cenaphone:=cenaphone+3000;
  end;
  If camera.ItemIndex=7 then
  begin
    cenaphone:=cenaphone+7000;
  end;
  If camera.ItemIndex=8 then
  begin
    cenaphone:=cenaphone+10000;
  end;
  If camera.ItemIndex=9 then
  begin
    cenaphone:=cenaphone+14500;
  end;
  If camera.ItemIndex=10 then
  begin
    cenaphone:=cenaphone+18000;
  end;
  If camera.ItemIndex=11 then
  begin
    cenaphone:=cenaphone+25000;
  end;
  If camera.ItemIndex=12 then
  begin
    cenaphone:=cenaphone+35000;
  end;
  If camera.ItemIndex=13 then
  begin
    cenaphone:=cenaphone+50000;
  end;
  If yadro.ItemIndex=0 then
  begin
    cenaphone:=cenaphone+500;
  end;
  If yadro.ItemIndex=1 then
  begin
    cenaphone:=cenaphone+1000;
  end;
  If yadro.ItemIndex=2 then
  begin
    cenaphone:=cenaphone+2000;
  end;
  If yadro.ItemIndex=3 then
  begin
    cenaphone:=cenaphone+4000;
  end;
  If yadro.ItemIndex=4 then
  begin
    cenaphone:=cenaphone+5500;
  end;
  If yadro.ItemIndex=5 then
  begin
    cenaphone:=cenaphone+7000;
  end;
  If yadro.ItemIndex=6 then
  begin
    cenaphone:=cenaphone+14000;
  end;
  If yadro.ItemIndex=7 then
  begin
    cenaphone:=cenaphone+28000;
  end;
  If graphics.ItemIndex=0 then
  begin

  end;
  If graphics.ItemIndex=1 then
  begin
    cenaphone:=cenaphone+5000;
  end;
  If graphics.ItemIndex=2 then
  begin
    cenaphone:=cenaphone+10000;
  end;
  If graphics.ItemIndex=3 then
  begin
    cenaphone:=cenaphone+20000;
  end;
  If graphics.ItemIndex=4 then
  begin
    cenaphone:=cenaphone+40000;
  end;
end;

procedure TForm4.typephoneChange(Sender: TObject);
begin

end;

procedure TForm4.yadroChange(Sender: TObject);
begin

end;


end.

