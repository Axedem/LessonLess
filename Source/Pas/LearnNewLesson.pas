unit LearnNewLesson;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, inifiles, LearnMain;

type
  TNewLesson = class(TForm)
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewLesson: TNewLesson;
  CurrentCategory: String;
  LessonName: String;
  LessonsListIF: Tinifile;
  LessonFolder: String;

implementation

{$R *.dfm}

uses LearnLessonCreator, MainMenu;

procedure TNewLesson.Button1Click(Sender: TObject);
begin
CurrentCategory:=ComboBox1.Items.Strings[ComboBox1.ItemIndex];
LessonName:= Edit1.Text;
LessonsListIF.Free;
LessonsListIF:=Tinifile.Create(ExeDir+'/Data/'+SectionsListIF.ReadString(CurrentCategory,'Sectiondir','0')+'/LessonsList.ini');
LessonsListIF.WriteString(LessonName,'folder',LessonName);
MkDir(ExeDir+'/Data/'+SectionsListIF.ReadString(CurrentCategory,'Sectiondir','0')+'/'+LessonName);
MkDir(ExeDir+'/Data/'+SectionsListIF.ReadString(CurrentCategory,'Sectiondir','0')+'/'+LessonName+'/img');
LessonFolder:= ExeDir+'/Data/'+SectionsListIF.ReadString(CurrentCategory,'Sectiondir','0')+'/'+LessonName;
Close;
if not assigned(LessonCreater) then
LessonCreater := TLessonCreater.Create(Application) else
Begin
LessonCreater.Destroy;
LessonCreater := TLessonCreater.Create(Application);
End;
LessonCreater.Show;
end;

procedure TNewLesson.FormCreate(Sender: TObject);
begin
SectionsListIF.Free;
SectionsListIF:=TIniFile.Create(ExeDir+'/Data/SectionsList.ini');
SectionsListIF.ReadSections(ComboBox1.Items);
end;

end.
