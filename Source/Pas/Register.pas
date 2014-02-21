unit Register;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  TRegisterForm = class(TForm)
    EditLogin: TDBEdit;
    EditPass: TDBEdit;
    ButtonEnter: TButton;
    DBSource: TDataSource;
    EditSur: TDBEdit;
    ComboGroup: TDBComboBox;
    procedure ButtonEnterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegisterForm: TRegisterForm;

implementation

{$R *.dfm}

uses DMTables;


procedure TRegisterForm.ButtonEnterClick(Sender: TObject);
begin
DMTables.DBM.StudentsTable.Append;
end;

end.
