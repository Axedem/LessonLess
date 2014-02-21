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

procedure TLearnForm.Update;                                                    { �������� ������ � ��������� ������ }
begin
  if FileExists(PathToLessonFolder + '/img/' + Steps.ReadString(IntToStr(StepNumber-1), 'image','������ ��� ������!')) then
     Button1.Enabled := true
  else Button1.Enabled := false;                                                { ����� ������ }
  if not FileExists(PathToLessonFolder + '/img/' + Steps.ReadString(IntToStr(StepNumber+1), 'image','������ ��� ������!')) then
    Button2.Caption := '���������'
  else Button2.Caption := '�����';
  if not FileExists(PathToLessonFolder + '/img/' + Steps.ReadString(IntToStr(StepNumber), 'image','������ ��� ������!')) then  Close      { �������� �����������   }
  else Image1.Picture.LoadFromFile(PathToLessonFolder+'/img/'+Steps.ReadString(IntToStr(StepNumber), 'image','������ ��� ������!'));
Memo1.Lines.Text:=Steps.ReadString(IntToStr(StepNumber), 'Text','������ ��� ������!');{      �������� ������      }
end;

procedure TLearnForm.Button1Click(Sender: TObject);                             { ��������� ������� "�����" }
begin
  Dec(StepNumber);
  Update;
end;

procedure TLearnForm.Button2Click(Sender: TObject);                             { ��������� ������� "�����" }
begin
  inc(StepNumber);
  Update;
end;

procedure TLearnForm.FormClose(Sender: TObject; var Action: TCloseAction);      { ��������� �������� ����� }
begin
  LearnMainForm.Show;
end;

procedure TLearnForm.FormCreate(Sender: TObject);                               { ��������� �������� ����� }
begin
  StepNumber := 1;
  Steps:=TIniFile.Create(PathToLessonFolder+'/LessonSteps.ini');
  Update;
end;

end.
