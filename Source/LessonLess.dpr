program LessonLess;

uses
  Vcl.Forms,
  LearnLesson in 'S:\Documents\GitHub\LessonLess\Source\Pas\LearnLesson.pas' {LearnForm},
  LearnMain in 'S:\Documents\GitHub\LessonLess\Source\Pas\LearnMain.pas' {LearnMainForm},
  Vcl.Themes,
  Vcl.Styles,
  LearnEditor in 'S:\Documents\GitHub\LessonLess\Source\Pas\LearnEditor.pas' {Editor},
  LearnSectionCreate in 'S:\Documents\GitHub\LessonLess\Source\Pas\LearnSectionCreate.pas' {NewSection},
  LearnSectionRemove in 'S:\Documents\GitHub\LessonLess\Source\Pas\LearnSectionRemove.pas' {RemSection},
  LearnNewLesson in 'S:\Documents\GitHub\LessonLess\Source\Pas\LearnNewLesson.pas' {NewLesson},
  MainMenu in 'S:\Documents\GitHub\LessonLess\Source\MainMenu.pas' {MenuForm},
  LearnLessonCreator in 'S:\Documents\GitHub\LessonLess\Source\Pas\LearnLessonCreator.pas' {LessonCreater},
  LearnLessonEditor in 'S:\Documents\GitHub\LessonLess\Source\Pas\LearnLessonEditor.pas' {LessonEditor},
  LearnLessonPreEditor in 'S:\Documents\GitHub\LessonLess\Source\Pas\LearnLessonPreEditor.pas' {LessonPreEditor},
  LearnLessonRemove in 'S:\Documents\GitHub\LessonLess\Source\Pas\LearnLessonRemove.pas' {LessonRemoveForm},
  Help in 'S:\Documents\GitHub\LessonLess\Source\Help.pas' {Helper};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.CreateForm(TMenuForm, MenuForm);
  Application.Run;
end.
