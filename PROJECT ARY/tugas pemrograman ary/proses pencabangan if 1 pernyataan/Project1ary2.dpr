program Project1ary2;

uses
  Forms,
  Unit1ary2 in 'Unit1ary2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
