unit LearnLessonEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, inifiles,
  Vcl.ExtDlgs;

type
  TLessonEditor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Button3: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Button4: TButton;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Update;
    procedure Button1Click(Sender: TObject);
    procedure SaveLessonText;
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LessonEditor: TLessonEditor;
  Steps : TiniFile;
  StepNumber: Integer;

implementation

{$R *.dfm}

uses LearnMain, LearnLessonPreEditor, MainMenu;

procedure TLessonEditor.SaveLessonText;
begin
  Steps.WriteString(IntToStr(StepNumber),'Text',(Memo1.Lines.Text));
end;
procedure TLessonEditor.Update;                                                    { Проверки файлов и изминение кнопок }
begin
  if Steps.SectionExists(IntToStr(StepNumber-1)) then
 Button2.Enabled := true
  else Button2.Enabled := false;                                                { Смена кнопок }
  if Steps.SectionExists(IntToStr(StepNumber+1)) then
    Button1.Caption:='Далее' else Button1.Caption:='Завершить';
  if not Steps.SectionExists(IntToStr(StepNumber)) then  Close      { Загрузка изображения   }
  else Image1.Picture.LoadFromFile(LessonFolder+'/img/'+Steps.ReadString(IntToStr(StepNumber), 'image','Ошибка при чтении!'));
Memo1.Lines.Text:=Steps.ReadString(IntToStr(StepNumber), 'Text','Ошибка при чтении!');
Label1.Caption:='Шаг №'+IntToStr(StepNumber);
if (Steps.ReadString(IntToStr(StepNumber-1), 'image','0') <> '0')  and
    (Steps.ReadString(IntToStr(StepNumber-1), 'image','0') <> 'None')
then Button5.Visible:=True else Button5.Visible:=False;
end;

procedure TLessonEditor.Button1Click(Sender: TObject);
begin
SaveLessonText;
Inc(StepNumber);
Update;
end;

procedure TLessonEditor.Button2Click(Sender: TObject);
begin
SaveLessonText;
Dec(StepNumber);
Update;
end;

procedure TLessonEditor.Button3Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
  begin
  DeleteFile(LessonFolder+'/img/'+IntToStr(StepNumber)+Steps.ReadString(IntToStr(StepNumber), 'extension','.none'));
  CopyFile(PChar(OpenPictureDialog1.FileName),PChar(LessonFolder+'/img/'+IntToStr(StepNumber)+ExtractFileExt(OpenPictureDialog1.FileName)), false);
  Image1.Picture.LoadFromFile(LessonFolder+'/img/'+IntToStr(StepNumber)+ExtractFileExt(OpenPictureDialog1.FileName));
  Steps.WriteString(IntToStr(StepNumber),'image',IntToStr(StepNumber)+ExtractFileExt(OpenPictureDialog1.FileName));
  end;
end;

procedure TLessonEditor.Button4Click(Sender: TObject);
begin
SaveLessonText;
Close;
end;

procedure TLessonEditor.Button5Click(Sender: TObject);
begin
Steps.WriteString(IntToStr(StepNumber),'image',Steps.ReadString(IntToStr(StepNumber-1), 'image','None'));
Image1.Picture.LoadFromFile(LessonFolder+'/img/'+Steps.ReadString(IntToStr(StepNumber), 'image','Ошибка при чтении!'));
end;

procedure TLessonEditor.FormCreate(Sender: TObject);
begin
StepNumber:=1;
SectionsListIF.Free;
SectionsListIF:=TIniFile.Create(ExeDir+'/Data/SectionsList.ini');
Steps:=TiniFile.Create(LessonFolder+'/LessonSteps.ini');
Memo1.Lines.Text:=Steps.ReadString(IntToStr(StepNumber), 'Text','Ошибка при чтении!');
Image1.Picture.LoadFromFile(LessonFolder+'/img/'+Steps.ReadString(IntToStr(StepNumber), 'image','Ошибка при чтении!'));
end;

end.
