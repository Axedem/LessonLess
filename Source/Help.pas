unit Help;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, inifiles;

type
  THelper = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    ListBox1: TListBox;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Helper: THelper;
  HelpListIF : Tinifile;



implementation

{$R *.dfm}

uses MainMenu;


procedure THelper.FormCreate(Sender: TObject);
begin
  HelpListIF.Free;
  HelpListIF:=TIniFile.Create(ExeDir+'/Helper/HelpList.ini');
  HelpListIF.ReadSections(ListBox1.Items);
end;

procedure THelper.ListBox1DblClick(Sender: TObject);
begin
  Memo1.Lines.LoadFromFile(ExeDir+'/Helper/'+HelpListIF.ReadString(ListBox1.Items.Strings[ListBox1.ItemIndex],'FileName','000'));
end;

end.
