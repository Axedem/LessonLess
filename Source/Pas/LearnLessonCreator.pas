unit LearnLessonCreator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.ExtCtrls, Vcl.StdCtrls, IniFiles;

type
  TLessonCreater = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    OpenPictureDialog1: TOpenPictureDialog;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Label2: TLabel;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LessonCreater: TLessonCreater;
  StepNumber : Integer;
  LessonSteps :File;
  Steps :TiniFile;

implementation

{$R *.dfm}

uses LearnNewLesson, LearnMain, MainMenu;

procedure TLessonCreater.Button1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
  CopyFile(PChar(OpenPictureDialog1.FileName),PChar(LessonFolder+'/img/'+IntToStr(StepNumber)+ExtractFileExt(OpenPictureDialog1.FileName)), false);
  Steps.WriteString(IntToStr(StepNumber),'image',IntToStr(StepNumber)+ExtractFileExt(OpenPictureDialog1.FileName));
  Image1.Picture.LoadFromFile(LessonFolder+'/img/'+Steps.ReadString(IntToStr(StepNumber), 'image','Ошибка при чтении!'));
  end;
end;


procedure TLessonCreater.Button2Click(Sender: TObject);
begin
Steps.WriteString(IntToStr(StepNumber),'text',Memo1.Lines.Text);
Inc(StepNumber);
Memo1.Lines.Clear;
Image1.Picture:= nil;
Label2.Caption:='Шаг №'+IntToStr(StepNumber);
if (Steps.ReadString(IntToStr(StepNumber-1), 'image','0') <> '0')  and
   (Steps.ReadString(IntToStr(StepNumber-1), 'image','0') <> 'None')
then Button4.Visible:=True else Button4.Visible:=False;
end;

procedure TLessonCreater.Button3Click(Sender: TObject);
begin
Steps.WriteString(IntToStr(StepNumber),'text',Memo1.Lines.Text);
Close;
end;

procedure TLessonCreater.Button4Click(Sender: TObject);
begin
Steps.WriteString(IntToStr(StepNumber),'image',Steps.ReadString(IntToStr(StepNumber-1), 'image','None'));
Image1.Picture.LoadFromFile(LessonFolder+'/img/'+Steps.ReadString(IntToStr(StepNumber), 'image','Ошибка при чтении!'));
end;

procedure TLessonCreater.FormCreate(Sender: TObject);
begin
StepNumber:=1;
SectionsListIF.Free;
SectionsListIF:=TIniFile.Create(ExeDir+'/Data/SectionsList.ini');
AssignFile(LessonSteps,LessonFolder+'/LessonSteps.ini');
Rewrite(LessonSteps);
CloseFile(LessonSteps);
Steps:= TiniFile.Create(LessonFolder+'/LessonSteps.ini');
end;

end.
