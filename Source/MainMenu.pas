unit MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TMenuForm = class(TForm)
    Button2: TButton;
    Button3: TButton;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuForm: TMenuForm;
  ExeDir : String;

implementation

{$R *.dfm}

uses LearnMain, Help;

procedure CallMainLearnForm;
begin
if not assigned(LearnMainForm) then
    LearnMainForm := TLearnMainForm.Create(Application)
  else
  begin
    LearnMainForm.Destroy;
    LearnMainForm := TLearnMainForm.Create(Application);
  end;
  LearnMainForm.Show;
end;


procedure TMenuForm.Button2Click(Sender: TObject);
begin
CallMainLearnForm;
end;

procedure TMenuForm.Button3Click(Sender: TObject);
begin
if not assigned(Helper) then
    Helper := THelper.Create(Application)
  else
  begin
    Helper.Destroy;
    Helper := THelper.Create(Application);
  end;
  Helper.Show;
end;

procedure TMenuForm.FormCreate(Sender: TObject);
begin
ExeDir:=ExtractFileDir(Application.ExeName);
end;

end.
