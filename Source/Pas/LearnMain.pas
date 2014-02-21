unit LearnMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, LearnLesson, Vcl.Menus,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, IniFiles;

type
  TLearnMainForm = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    ComboBox1: TComboBox;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure UpdateForm;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  LearnMainForm: TLearnMainForm;
  LessonsListIF: TIniFile;
  SectionsListIF: TIniFile;
  PathToLessonFolder: string;
  PathToSectionFolder: string;

implementation

{$R *.dfm}

uses LearnEditor, MainMenu;

procedure CallLearnForm;
begin
  LearnMainForm.Hide;
  if not assigned(LearnForm) then
    LearnForm := TLearnForm.Create(Application)
  else
  begin
    LearnForm.Destroy;
    LearnForm := TLearnForm.Create(Application);
  end;
  LearnForm.Show;
end;

procedure CallEditorForm;
begin
  if not assigned(Editor) then
    Editor := TEditor.Create(Application)
  else
  begin
    Editor.Destroy;
    Editor := TEditor.Create(Application);
  end;
  Editor.ShowModal;
end;

procedure TLearnMainForm.UpdateForm;
begin
SectionsListIF.Free;
SectionsListIF:=TIniFile.Create(ExeDir+'/Data/SectionsList.ini');
SectionsListIF.ReadSections(LearnMainForm.ComboBox1.Items);
end;

procedure TLearnMainForm.Button1Click(Sender: TObject);
begin
PathToLessonFolder:= PathToSectionFolder +'/'+ LessonsListIF.ReadString(ListBox1.Items.Strings[ListBox1.ItemIndex], 'folder','0');
CallLearnForm;
LearnForm.Caption := ListBox1.Items.Strings[ListBox1.ItemIndex];
end;

procedure TLearnMainForm.Button2Click(Sender: TObject);
begin
MenuForm.Show;
LearnMainForm.Close;
end;

procedure TLearnMainForm.ComboBox1Select(Sender: TObject);
begin
PathToSectionFolder:=ExeDir+'/Data/'+SectionsListIF.ReadString(ComboBox1.Items.Strings[ComboBox1.ItemIndex], 'Sectiondir','0');
LessonsListIF:=TIniFile.Create(PathToSectionFolder+'/LessonsList.ini');
LessonsListIF.ReadSections(ListBox1.Items);
end; 

procedure TLearnMainForm.FormCreate(Sender: TObject);
begin
  SectionsListIF.Free;
  SectionsListIF:=TIniFile.Create(ExeDir+'/Data/SectionsList.ini');
  SectionsListIF.ReadSections(ComboBox1.Items);
end;

procedure TLearnMainForm.N1Click(Sender: TObject);
begin
CallEditorForm;
end;

end.
