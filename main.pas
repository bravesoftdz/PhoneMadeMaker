unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, ComCtrls,MMSystem,dynlibs;

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
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label5MouseEnter(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  filemusicstring:string;
  filemusic:PChar;
  filepers:textfile;

implementation
  uses unit1,unit2;
{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var test:string;
  test2:string;
begin
  If FileExists('cfg.cfg') then //Если есть файл с параметрами
     begin
       AssignFile(filepers,'cfg.cfg');
       Reset(filepers);//Разрешить файл для чтения(зачем разрешать? Россия же :)
       While not (Eof(filepers)) do//Пока не достигнут конец файла
       begin
          Readln(filepers,test);//Прочитать строку с именем
          Readln(filepers,test2);//Прочитать строку с компанией
          Label6.Caption:='Здравствуйте, ' +test;
          Label7.Caption:='Ваша компания ' + test2;
       end;
                               CloseFile(filepers);//Закрыть файл для чтения
       end;
end;

procedure TForm1.Label5Click(Sender: TObject);
begin
ShowMessage('Вы можете загружать музыку только в формате .wav!');
end;

procedure TForm1.Label5MouseEnter(Sender: TObject);
begin

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form2.Visible:=true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form1.Visible:=false;
    Form3.Visible:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   If OpenDialog1.Execute then//Если диалог открытия файлов открыт
   begin
   filemusicstring:=OpenDialog1.Filename;//Имя файла музыки = Имя файла из диалога открытия файла
   filemusic:=PChar(filemusicstring);//Херня какая то
   sndPlaySound(pchar(UTF8ToSys(filemusic)), snd_Async or snd_NoDefault);//Белиберда какая - то   //Согласен, хуета полная. Блять! Описание даже не сделали гондоны! СУКААААААААААААААААААААААААААААААААААААААААААААААААААААААА!!!!
   end;

end;

end.
//**********************************************\\
////MADE BY RUSSIAN HACKERS YOY NIGGA BITCH БЛЯ\\\\
