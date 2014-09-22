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
    persname: TLabel;
    company: TLabel;
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
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label10Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.ComboBox1Change(Sender: TObject);
begin
  end;

procedure TForm4.FormCreate(Sender: TObject);
begin

end;

procedure TForm4.Label10Click(Sender: TObject);
begin

end;

end.

