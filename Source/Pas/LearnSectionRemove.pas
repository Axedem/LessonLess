unit LearnSectionRemove;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, iniFiles, LearnMain, Vcl.StdCtrls, MainMenu;

type
  TRemSection = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Update;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RemSection: TRemSection;

implementation

{$R *.dfm}

procedure TRemSection.Update;
begin
SectionsListIF.Free;
SectionsListIF:=TIniFile.Create(ExeDir+'/Data/SectionsList.ini');
SectionsListIF.ReadSections(ComboBox1.Items);
end;

procedure TRemSection.Button1Click(Sender: TObject);
begin
SectionsListIF.EraseSection(ComboBox1.Items.Strings[ComboBox1.ItemIndex]);
ShowMessage('Секция "'+ComboBox1.Items.Strings[ComboBox1.ItemIndex]+'" Удалена');
LearnMainForm.Update;
Close;
end;


end.
