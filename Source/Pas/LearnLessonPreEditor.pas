unit LearnLessonPreEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, inifiles;

type
  TLessonPreEditor = class(TForm)
    ComboBox1: TComboBox;
    ListBox1: TListBox;
    Label1: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LessonPreEditor: TLessonPreEditor;
  LessonFolder : String;
  LessonName : String;

implementation

{$R *.dfm}

uses LearnMain, LearnLessonEditor, MainMenu;

procedure TLessonPreEditor.Button1Click(Sender: TObject);
begin
LessonName:= LessonsListIF.ReadString(ListBox1.Items.Strings[ListBox1.ItemIndex], 'folder','LLPE36');
LessonFolder:= PathToSectionFolder +'/'+ LessonName;
Close;
if not assigned(LessonEditor) then
LessonEditor := TLessonEditor.Create(Application) else
Begin
LessonEditor.Destroy;
LessonEditor := TLessonEditor.Create(Application);
End;
LessonEditor.Show;
end;

procedure TLessonPreEditor.ComboBox1Select(Sender: TObject);
begin
PathToSectionFolder:=ExeDir+'/Data/'+SectionsListIF.ReadString(ComboBox1.Items.Strings[ComboBox1.ItemIndex], 'Sectiondir','LLPE49');
LessonsListIF.Free;
LessonsListIF:=TIniFile.Create(PathToSectionFolder+'/LessonsList.ini');
LessonsListIF.ReadSections(ListBox1.Items);
end;

procedure TLessonPreEditor.FormCreate(Sender: TObject);
begin
SectionsListIF.Free;
SectionsListIF:=TIniFile.Create(ExeDir+'/Data/SectionsList.ini');
SectionsListIF.ReadSections(ComboBox1.Items);
end;

end.
