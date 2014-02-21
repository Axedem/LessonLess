unit LearnEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IniFiles, LearnMain, LearnSectionCreate;

type
  TEditor = class(TForm)
    Button2: TButton;
    Button3: TButton;
    Button1: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Editor: TEditor;

implementation

{$R *.dfm}

uses LearnSectionRemove, LearnNewLesson, LearnLessonPreEditor,
  LearnLessonRemove;

procedure TEditor.Button1Click(Sender: TObject);
begin
if not assigned(RemSection) then
    RemSection := TRemSection.Create(Application)
  else
  begin
    RemSection.Destroy;
    RemSection := TRemSection.Create(Application);
  end;
RemSection.Update;
RemSection.ShowModal;
end;

procedure TEditor.Button2Click(Sender: TObject);
begin
if not assigned(NewSection) then
    NewSection := TNewSection.Create(Application)
  else
  begin
    NewSection.Destroy;
    NewSection := TNewSection.Create(Application);
  end;
  NewSection.Update;
  NewSection.Show;
end;

procedure TEditor.Button3Click(Sender: TObject);
begin
  if not assigned(NewLesson) then
    NewLesson := TNewLesson.Create(Application)
  else
  begin
    NewLesson.Destroy;
    NewLesson := TNewLesson.Create(Application);
  end;
  NewLesson.Update;
  NewLesson.Show;
end;

procedure TEditor.Button4Click(Sender: TObject);
begin
if not assigned(LessonRemoveForm) then
LessonRemoveForm := TLessonRemoveForm.Create(Application) else
Begin
LessonRemoveForm.Destroy;
LessonRemoveForm := TLessonRemoveForm.Create(Application);
End;
LessonRemoveForm.Update;
LessonRemoveForm.ShowModal;
end;

procedure TEditor.Button5Click(Sender: TObject);
begin
if not assigned(LessonPreEditor) then
LessonPreEditor := TLessonPreEditor.Create(Application) else
Begin
LessonPreEditor.Destroy;
LessonPreEditor := TLessonPreEditor.Create(Application);
End;
LessonPreEditor.Update;
LessonPreEditor.ShowModal;
end;

procedure TEditor.Button6Click(Sender: TObject);
begin
Editor.Close;
end;

end.
