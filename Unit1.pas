unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Themes, System.IOUtils, Vcl.ExtCtrls, Unit2;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    cbbThemesList: TComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure cbbThemesListChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FSampleFrm: TForm2;
    { Private declarations }
  public
    { Public declarations }
    property SampleFrm: TForm2 read FSampleFrm;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.cbbThemesListChange(Sender: TObject);
begin
  if not TStyleManager.TrySetStyle(cbbThemesList.Items[cbbThemesList.ItemIndex])
    then TStyleManager.TrySetStyle(TStyleManager.cSystemStyleName);

  TStyleManager.ActiveStyle.ApplyThemeChange;
  Self.Caption:= TStyleManager.ActiveStyle.Name;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FSampleFrm.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  Panel1.BevelOuter:= bvNone;
  Panel2.BevelOuter:= bvNone;
  Panel3.BevelOuter:= bvNone;

  if Assigned(FSampleFrm) then FreeAndNil(FSampleFrm);
  FSampleFrm:= TForm2.Create(Self);

  with FSampleFrm do
  begin
//    BorderIcons:= [];
    Parent:= Panel3;
    Align:= alClient;
    Visible:= True;
  end;

  cbbThemesList.Clear;

  for i := 0 to Pred(System.Length(TStyleManager.StyleNames)) do
    cbbThemesList.Items.Add(TStyleManager.StyleNames[i]);

  if (System.Length(TStyleManager.StyleNames) > 0) then cbbThemesList.ItemIndex:= 0;
  cbbThemesListChange(Sender);
end;

end.
