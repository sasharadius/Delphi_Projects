unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, PGCalendarClass;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
var I:Integer;
    PGCalendar:TPGCalendar;
    PGDateTime:TPGDateTime;
begin
  PGCalendar := TPGCalendar.Create(ctJalali);
  for I := 1 to 100 do
  begin
    PGDateTime := PGCalendar.PGTimeCalculate(PGCalendar.PGConvertFromDateTime,0,0,I,0,0,0,0);
    Memo1.Lines.Add(PGCalendar.FormatPGDateTime(PGDateTime,'yyyy/mm/dd hh:nn:ss.zzz AmPm mmm mmmm ddd dd '));
    Memo1.Lines.Add(DateTimeToStr(PGCalendar.PGConvertToDateTime(PGDateTime)));
  end;

  PGCalendar := TPGCalendar.Create(ctMiladi);
  for I := 1 to 100 do
  begin
    PGDateTime := PGCalendar.PGTimeCalculate(PGCalendar.PGConvertFromDateTime,0,0,I,0,0,0,0);
    Memo2.Lines.Add(PGCalendar.FormatPGDateTime(PGDateTime,'yyyy/mm/dd hh:nn:ss.zzz AmPm mmm mmmm ddd dd '));
    Memo2.Lines.Add(DateTimeToStr(PGCalendar.PGConvertToDateTime(PGDateTime)));
  end;
end;

end.
