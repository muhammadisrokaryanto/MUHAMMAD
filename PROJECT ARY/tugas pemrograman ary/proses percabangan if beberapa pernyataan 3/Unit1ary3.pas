unit Unit1ary3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    TLM: TEdit;
    THK: TEdit;
    TJUMLAH: TEdit;
    TDIS: TEdit;
    TKDIS: TEdit;
    TBAYAR: TEdit;
    CMULAI: TButton;
    CSELESAI: TButton;
    procedure CMULAIClick(Sender: TObject);
    procedure CSELESAIClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure THKChange(Sender: TObject);
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

procedure TForm1.THKChange(Sender: TObject);
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
 if Sjumlah>=100000
     then
      begin
       Sdis:=Sjumlah*0.1;
       Skdis:='SELAMAT ANDA DAPAT DISKON';
      end
     else
      begin
       Sdis:=0;
       Skdis:='MAAF ANDA TIDAK DAPAT DISKON';
      end;
 Tkdis.Text:=Skdis;
 Sbayar:=Sjumlah-Sdis;
 str(Sbayar:30:0,Sbyr);
 str(Sdis:30:0,Sds);
 Tdis.Text:=Sds;
 Tbayar.Text:=Sbyr;
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
 if Sjumlah>=100000
    then
     begin
      Sdis:=Sjumlah*0.1;
      Skdis:='SELAMAT ANDA DAPAT DISKON';
     end
    else
     begin
      Sdis:=0;
      Skdis:='MAAF ANDA TIDAK DAPAT DISKON';
     end;
 Tkdis.Text:=Skdis;
 Sbayar:=Sjumlah-Sdis;
 str(Sbayar:30:0,Sbyr);
 str(Sdis:30:0,Sds);
 Tdis.Text:=Sds;
 Tbayar.Text:=Sbyr;
end;

end.
