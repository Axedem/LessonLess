unit LearnSectionCreate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IniFiles, LearnMain, Vcl.StdCtrls,MainMenu;

type
  TNewSection = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewSection: TNewSection;
  LessonsListFile: File;

implementation

{$R *.dfm}

procedure TNewSection.Button1Click(Sender: TObject);
begin
SectionsListIF.WriteString(Edit1.Text,'Sectiondir',Edit2.Text);
Createdir(ExeDir+'/Data/'+Edit2.Text);
ShowMessage('Категория "'+Edit1.Text+'" Создана');
AssignFile(LessonsListFile,ExeDir+'/Data/'+Edit2.Text+'/LessonsList.ini');
Rewrite(LessonsListFile);
CloseFile(LessonsListFile);
LearnMainForm.UpdateForm;
Close;
end;

end.
