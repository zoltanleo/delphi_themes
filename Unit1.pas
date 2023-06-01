unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Themes;

type
  TForm1 = class(TForm)
    cbbThemesList: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure cbbThemesListChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  sm: TStyleManager;
  I: Integer;
begin
  sm:= TStyleManager.Create;
  try
    cbbThemesList.Clear;
    for I := 0 to Pred(System.Length(sm.StyleNames)) do
      cbbThemesList.Items.Add(sm.StyleNames[i]);
    if (System.Length(sm.StyleNames) > 0) then
    cbbThemesList.ItemIndex:= 0;

  finally
    sm.Free;
  end;
end;

procedure TForm1.cbbThemesListChange(Sender: TObject);
begin
  if TStyleManager.TrySetStyle(cbbThemesList.Items[cbbThemesList.ItemIndex]) then
  begin
    TStyleManager.ActiveStyle.ApplyThemeChange;
    Self.Caption:= TStyleManager.ActiveStyle.Name;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  cbbThemesList.Clear;
  cbbThemesList.Items.Add('Press "Button1"');
  cbbThemesList.ItemIndex:= 0;
end;

end.
