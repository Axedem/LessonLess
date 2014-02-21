program LessonLess;

uses
  Vcl.Forms,
  LearnLesson in 'C:\Desktop\PROJECT''s\LTB\Pas\LearnLesson.pas' {LearnForm},
  LearnMain in 'C:\Desktop\PROJECT''s\LTB\Pas\LearnMain.pas' {LearnMainForm},
  Vcl.Themes,
  Vcl.Styles,
  LearnEditor in 'C:\Desktop\PROJECT''s\LTB\Pas\LearnEditor.pas' {Editor},
  LearnSectionCreate in 'C:\Desktop\PROJECT''s\LTB\Pas\LearnSectionCreate.pas' {NewSection},
  LearnSectionRemove in 'C:\Desktop\PROJECT''s\LTB\Pas\LearnSectionRemove.pas' {RemSection},
  LearnNewLesson in 'C:\Desktop\PROJECT''s\LTB\Pas\LearnNewLesson.pas' {NewLesson},
  MainMenu in 'C:\Desktop\PROJECT''s\LTB\MainMenu.pas' {MenuForm},
  LearnLessonCreator in 'C:\Desktop\PROJECT''s\LTB\Pas\LearnLessonCreator.pas' {LessonCreater},
  LearnLessonEditor in 'C:\Desktop\PROJECT''s\LTB\Pas\LearnLessonEditor.pas' {LessonEditor},
  LearnLessonPreEditor in 'C:\Desktop\PROJECT''s\LTB\Pas\LearnLessonPreEditor.pas' {LessonPreEditor},
  LearnLessonRemove in 'C:\Desktop\PROJECT''s\LTB\Pas\LearnLessonRemove.pas' {LessonRemoveForm},
  Help in 'C:\Desktop\PROJECT''s\LTB\Help.pas' {Helper};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.CreateForm(TMenuForm, MenuForm);
  Application.Run;
end.
