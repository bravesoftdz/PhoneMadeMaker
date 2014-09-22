unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form3: TForm3;

implementation
uses Main,Unit1,Unit3;

{$R *.lfm}

{ TForm3 }

procedure TForm3.FormCreate(Sender: TObject);
begin

end;

procedure TForm3.Button1Click(Sender: TObject);
var
  persname:string;
  company:string;
begin
  Form3.Visible:=false;
  Form4.Visible:=true;
  If FileExists('cfg.cfg') then //Если есть файл с параметрами
     begin
       AssignFile(filepers,'cfg.cfg');//То ассоциировать файловую переменную с файлом
       Append(filepers);//Разрешить изменение файла
     end
  else//Если нету файла с параметрами
     begin
       AssignFile(filepers,'cfg.cfg');//Ассоциировать файловую перемнную с файлом
       Rewrite(filepers);//Создать файл
       Append(filepers);//Разрешить изменение файла
     end;
  persname:=Edit1.Text;//Имя персонажа из 1 поля ввода в переменную persname
  company:=Edit2.Text;//Имя компании из 2 поля ввода в переменную company
  Append(filepers);//Опять разрешить изменение файла (на всякий случай :)
  writeln(filepers, persname);//Написать в файл строку с именем персонажа
  writeln(filepers, company);//Написать в файл строку с названием компании
  CloseFile(filepers);//Закрыть файл для записи и чтения(Хз, без этого не работает)
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Form3.Visible:=false;
  Form1.Visible:=true;
end;

end.

