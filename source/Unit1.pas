unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, StdActns, ActnList, Menus;

type
  TForm1 = class(TForm)
    Image5: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    ColorDialog1: TColorDialog;
    Image13: TImage;
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileExit1: TFileExit;
    File1: TMenuItem;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    Exit1: TMenuItem;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    procedure Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  start: boolean;
  filename: string;

implementation

{$R *.dfm}

procedure TForm1.Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
IF start=true THEN
Image5.canvas.LineTo(x,y);
form1.caption:= 'Pascal Paint                                                                                                                                                X='+IntToStr(X)+ ' Y='+IntToStr(Y);
IF start=false THEN;
end;

procedure TForm1.Image5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
start:=true;
Image5.canvas.MoveTo(x,y);
end;

procedure TForm1.Image5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 start:=false
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
Image5.canvas.Pen.Color:=CLyellow
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
Image5.canvas.Pen.Color:=CLred
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
Image5.canvas.Pen.Color:=CLblue
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
Image5.canvas.Pen.Color:=CLgreen
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
Image5.canvas.Pen.Color:=RGB(255, 128, 0)
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
Image5.canvas.Pen.Color:=RGB(255, 105, 180)
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
Image5.canvas.Pen.Color:=RGB(142, 28, 142)
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
Image5.canvas.Pen.Color:=RGB(152, 76, 41)
end;

procedure TForm1.Image11Click(Sender: TObject);
begin
Image5.canvas.Pen.Color:=CLblack
end;

procedure TForm1.Image12Click(Sender: TObject);
begin
IF ColorDialog1.execute THEN
Image5.canvas.Pen.Color:=ColorDialog1.Color
end;

procedure TForm1.Image13Click(Sender: TObject);
begin
Image5.canvas.Pen.color:=RGB(255, 255, 255)
end;

procedure TForm1.SaveAs1Click(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'BMP';
  if SaveDialog1.Execute then
  begin
    filename := SaveDialog1.Filename;
    Image5.Picture.SaveToFile(filename);
  end;
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then begin
 OpenDialog1.Filter := 'Bitmap (*.bmp)|*.BMP';
 FileName := OpenDialog1.FileName;
 image5.Picture.LoadFromFile(FileName);
end;

end;

procedure TForm1.Image14Click(Sender: TObject);
begin
Image5.canvas.pen.Width:=2
end;

procedure TForm1.Image15Click(Sender: TObject);
begin
Image5.canvas.pen.Width:=4
end;

procedure TForm1.Image16Click(Sender: TObject);
begin
Image5.canvas.pen.Width:=8
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
Image5.Picture:=nil;
end;

end.
