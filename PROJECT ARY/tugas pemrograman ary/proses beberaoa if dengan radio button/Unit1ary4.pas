unit Unit1ary4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    TLM: TEdit;
    THK: TEdit;
    TJUMLAH: TEdit;
    TKDIS: TEdit;
    TBAYAR: TEdit;
    RadioGroup1: TRadioGroup;
    RDIS30: TRadioButton;
    RDIS20: TRadioButton;
    RDIS10: TRadioButton;
    RDIS0: TRadioButton;
    TDIS: TEdit;
    CMULAI: TButton;
    CSELESAI: TButton;
    procedure CMULAIClick(Sender: TObject);
    procedure CSELESAIClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TLMChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CMULAIClick(Sender: TObject);
begin
 TLM.Text:=' ';
 THK.Text:=' ';
 TJUMLAH.Text:=' ';
 TDIS.Text:=' ';
 TBAYAR.Text:=' ';
 TLM.SetFocus;
end;

procedure TForm1.CSELESAIClick(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Tjumlah.Enabled:=False;
Tjumlah.Color:=clbtnface;
Tkdis.Enabled:=False;
Tkdis.Color:=clbtnface;
Tdis.Enabled:=False;
Tdis.Color:=clbtnface;
Tbayar.Enabled:=False;
Tbayar.Color:=clbtnface;
end;

procedure TForm1.TLMChange(Sender: TObject);
var
 Sjml,Sbyr,Sds,Skdis:string[30];
 Tsem:integer;
 Slm,Shk,Sjumlah,Sdis,Sbayar:single;
begin
   val(Tlm.Text,Slm,Tsem);
   val(Thk.Text,Shk,Tsem);
   Sjumlah:=Slm*Shk;
   str(Sjumlah:30:0,Sjml);
   Tjumlah.Text:=Sjml;
   if Rdis30.Checked=true
     then
       Sdis:=Sjumlah*0.3
     else
       if Rdis20.Checked=true
         then
           Sdis:=Sjumlah*0.2
         else
           if Rdis10.Checked=true
             then
               Sdis:=Sjumlah*0.1
             else
               Sdis:=0;
   if (Rdis30.checked=true) or (Rdis20.checked=true) or (Rdis10.checked=true)
then
 Skdis:='DAPAT DISKON'
else
 Skdis:='TAK DISKON';
 Tkdis.text:=Skdis;
 Sbayar:=Sjumlah-Sdis;
 str(Sbayar:30:0,Sbyr);
 str(Sdis:30:0,Sds);
 Tdis.text:=Sds;
 Tbayar.text:=Sbyr;
        end;

end.
