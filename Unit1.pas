unit Unit1;

interface

uses
  Winapi.Windows
  , Winapi.Messages
  , System.SysUtils
  , System.Variants
  , System.Classes
  , Vcl.Graphics
  , Vcl.Controls
  , Vcl.Forms
  , Vcl.Dialogs
  , Vcl.StdCtrls
  , Vcl.Styles
  , Vcl.Themes
  , Vcl.Styles.Ext
  , System.IOUtils
  , Vcl.ExtCtrls
  , Generics.Collections
  , Unit2

  ;

type
  PStyleRec = ^TStyleRec;
  TStyleRec = record
    aID: Integer;
    aStyle: TCustomStyleServices;
    aStyleName: string;
  end;

  TForm1 = class(TForm)
    Panel1: TPanel;
    cbbThemesList: TComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    chbApply: TCheckBox;
    Panel4: TPanel;
    procedure cbbThemesListChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chbApplyClick(Sender: TObject);
  private
    FSampleFrm: TForm2;
    FStylesList: TStringList;
    FPreview:TVclStylesPreview;
    procedure GetAvailableStyles(Sender: TStrings);
  public
    property SampleFrm: TForm2 read FSampleFrm;
    property StylesList: TStringList read FStylesList;
  end;

var
  Form1: TForm1;

implementation

type
 TVclStylesPreviewClass = class(TVclStylesPreview);
{$R *.dfm}


procedure TForm1.cbbThemesListChange(Sender: TObject);
var
   LStyle: TCustomStyle;
begin
  if chbApply.Checked then
  begin
    if not TStyleManager.TrySetStyle(cbbThemesList.Items[cbbThemesList.ItemIndex])
      then TStyleManager.TrySetStyle(TStyleManager.cSystemStyleName);

    TStyleManager.ActiveStyle.ApplyThemeChange;
  end;

  if not SameText(cbbThemesList.Items[cbbThemesList.ItemIndex],TStyleManager.cSystemStyleName)
    then FPreview.Style:= TStyleManager.Style[cbbThemesList.Items[cbbThemesList.ItemIndex]];

  FPreview.Caption:= cbbThemesList.Items[cbbThemesList.ItemIndex];
  TVclStylesPreviewClass(FPreview).Paint;

  Self.Caption:= TStyleManager.ActiveStyle.Name;
end;

procedure TForm1.chbApplyClick(Sender: TObject);
begin
  cbbThemesListChange(Sender);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FStylesList.Free;
  FSampleFrm.Free;
  FPreview.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  ReportMemoryLeaksOnShutdown:=True;
  Panel1.BevelOuter:= bvNone;
  Panel2.BevelOuter:= bvNone;
  Panel3.BevelOuter:= bvNone;

  FStylesList:= TStringList.Create;
  FSampleFrm:= TForm2.Create(Self);

  FPreview:=TVclStylesPreview.Create(Self);
  FPreview.Parent:=Panel4;
  FPreview.BoundsRect := Panel4.ClientRect;

  with FSampleFrm do
  begin
    Parent:= Panel3;
    Align:= alClient;
    Visible:= True;
  end;

  cbbThemesList.Clear;
  GetAvailableStyles(FStylesList);

  if (StylesList.Count > 0)  then
  begin
    cbbThemesList.Items.Assign(StylesList);
    cbbThemesList.ItemIndex:= 0;
    cbbThemesListChange(Sender);
  end;
end;

procedure TForm1.GetAvailableStyles(Sender: TStrings);
{
https://stackoverflow.com/questions/8619161/how-can-i-get-the-style-name-of-a-vsf-file-vcl-style-file
https://stackoverflow.com/questions/7386007/delphi-xe2-reloading-a-custom-vcl-style-from-file
}
const
  StylesPath = 'c:\proj\delphi_themes\theme_styles\';
  StylesExt = '*.vsf';
var
  fn: string;
  i: Integer;
  SL: TStringList;
begin
  TStrings(Sender).Clear;
  TStrings(Sender).Add(TStyleManager.cSystemStyleName);
  SL:= TStringList.Create;
  try
    for fn in TDirectory.GetFiles(StylesPath, StylesExt) do
      if TStyleManager.IsValidStyle(fn) then TStyleManager.LoadFromFile(fn);

      for i := 0 to Pred(System.Length(TStyleManager.StyleNames)) do
        if not SameText(TStyleManager.cSystemStyleName,TStyleManager.StyleNames[i])
          then TStrings(Sender).Add(TStyleManager.StyleNames[i]);
  finally
    SL.Free;
  end;

  for fn in TDirectory.GetFiles(StylesPath, StylesExt) do
  begin
//    Sender.Add(fn);
//    TStyleManager.LoadFromFile(fn);
//    for StyleName in TStyleManager.StyleNames do
//    begin
//      SourceInfo:=TStyleManager.StyleSourceInfo[StyleName];
//      VCLStyleExt:=TCustomStyleExt.Create(TStream(SourceInfo.Data));
//      StyleInfo  :=TCustomStyleExt(VCLStyleExt).StyleInfo;
//      Sender.Add(StyleInfo.Name + '|' + fn);
//      VCLStyleExt.Free;
//    end;
//    TStyleManager.RemoveStyle(StyleInfo.Name);

  end;
end;

end.
