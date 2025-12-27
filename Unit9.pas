unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, PicShow;

type
  TForm9 = class(TForm)
    PicShow1: TPicShow;
    Button1: TButton;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private-Deklarationen }
    actualpic : Integer;
  public
    { Public-Deklarationen }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.FormCreate(Sender: TObject);
var
  List : TStringList;
begin
  actualpic := 1;
  List := TStringList.Create;
  try
    PicShow1.GetStyleNames(List);
    ComboBox1.Items.Assign(List);
    if ComboBox1.Items.Count > 0 then
      ComboBox1.ItemIndex := 0;
  finally
    List.Free;
  end;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
  PicShow1.Picture.LoadFromFile(inttostr(actualpic)+'.jpg');
  PicShow1.Execute;
  if actualpic < 4 then inc(actualpic) else actualpic := 1;
end;

procedure TForm9.ComboBox1Change(Sender: TObject);
begin
  Picshow1.Style := ComboBox1.ItemIndex+1;
end;

end.
