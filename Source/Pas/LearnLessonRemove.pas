unit LearnLessonRemove;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inifiles, Vcl.StdCtrls;

type
  TLessonRemoveForm = class(TForm)
    ComboBox1: TComboBox;
    ListBox1: TListBox;
    Button1: TButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LessonRemoveForm: TLessonRemoveForm;

implementation

{$R *.dfm}

uses LearnMain, MainMenu;

procedure TLessonRemoveForm.Button1Click(Sender: TObject);
begin
LessonsListIF.EraseSection(ListBox1.Items.Strings[ListBox1.ItemIndex]);
ShowMessage('Урок успешно удален');
Close;
end;

procedure TLessonRemoveForm.ComboBox1Select(Sender: TObject);
begin
PathToSectionFolder:=ExeDir+'/Data/'+SectionsListIF.ReadString(ComboBox1.Items.Strings[ComboBox1.ItemIndex], 'Sectiondir','LLPE49');
LessonsListIF:=TIniFile.Create(PathToSectionFolder+'/LessonsList.ini');
LessonsListIF.ReadSections(ListBox1.Items);
end;

procedure TLessonRemoveForm.FormCreate(Sender: TObject);
begin
SectionsListIF.Free;
SectionsListIF:=TIniFile.Create(ExeDir+'/Data/SectionsList.ini');
SectionsListIF.ReadSections(ComboBox1.Items);
end;

end.
