unit LearnLesson;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.OleCtrls, SHDocVw, IniFiles, Vcl.Imaging.pngimage, Vcl.Imaging.GIFImg;

type
  TLearnForm = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Memo1: TMemo;
    procedure Update;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public

  end;

var
  Steps: TIniFile;
  LearnForm: TLearnForm;
  StepNumber: integer;
  PictureExtension : String;

implementation

{$R *.dfm}

uses LearnMain;

procedure TLearnForm.Update;                                                    { Проверки файлов и изминение кнопок }
begin
  if FileExists(PathToLessonFolder + '/img/' + Steps.ReadString(IntToStr(StepNumber-1), 'image','Ошибка при чтении!')) then
     Button1.Enabled := true
  else Button1.Enabled := false;                                                { Смена кнопок }
  if not FileExists(PathToLessonFolder + '/img/' + Steps.ReadString(IntToStr(StepNumber+1), 'image','Ошибка при чтении!')) then
    Button2.Caption := 'Завершить'
  else Button2.Caption := 'Далее';
  if not FileExists(PathToLessonFolder + '/img/' + Steps.ReadString(IntToStr(StepNumber), 'image','Ошибка при чтении!')) then  Close      { Загрузка изображения   }
  else Image1.Picture.LoadFromFile(PathToLessonFolder+'/img/'+Steps.ReadString(IntToStr(StepNumber), 'image','Ошибка при чтении!'));
Memo1.Lines.Text:=Steps.ReadString(IntToStr(StepNumber), 'Text','Ошибка при чтении!');{      Загрузка текста      }
end;

procedure TLearnForm.Button1Click(Sender: TObject);                             { Обработка нажатия "НАЗАД" }
begin
  Dec(StepNumber);
  Update;
end;

procedure TLearnForm.Button2Click(Sender: TObject);                             { Обработка нажатия "ДАЛЕЕ" }
begin
  inc(StepNumber);
  Update;
end;

procedure TLearnForm.FormClose(Sender: TObject; var Action: TCloseAction);      { Обработка закрытия формы }
begin
  LearnMainForm.Show;
end;

procedure TLearnForm.FormCreate(Sender: TObject);                               { Обработка создания формы }
begin
  StepNumber := 1;
  Steps:=TIniFile.Create(PathToLessonFolder+'/LessonSteps.ini');
  Update;
end;

end.
