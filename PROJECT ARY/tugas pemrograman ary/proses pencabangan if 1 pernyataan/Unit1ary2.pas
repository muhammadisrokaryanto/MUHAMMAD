unit Unit1ary2;

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
    THK: TEdit;
    TJUMLAH: TEdit;
    TDIS: TEdit;
    TBAYAR: TEdit;
    Label6: TLabel;
    CMULAI: TButton;
    CSELESAI: TButton;
    TLM: TEdit;
    procedure TLMChange(Sender: TObject);
    procedure CMULAIClick(Sender: TObject);
    procedure CSELESAIClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure THKChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.TLMChange(Sender: TObject);
var
 Sjml,Sbyr,Sds:string[30];
 Tsem:integer;
 Slm,Shk,Sjumlah,Sdis,Sbayar:single;
begin
 val(Tlm.Text,Slm,Tsem);
 val(Thk.Text,Shk,Tsem);
 Sjumlah:=Slm*Shk;
 str(Sjumlah:30:0,Sjml);
 if Sjumlah>=100000
   then
     Sdis:=Sjumlah*0.1
   else
     Sdis:=0;
 Sbayar:=Sjumlah-Sdis;
 str(Sbayar:30:0,Sbyr);
 str(Sdis:30:0,Sds);
 Tdis.Text:=Sds;
 Tbayar.Text:=Sbyr;

end;

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
 TJumlah.Enabled:=False;
 TJumlah.Color:=clbtnface;
 Tdis.Enabled:=False;
 Tdis.Color:=clbtnface;
 Tbayar.Enabled:=False;
 Tbayar.Color:=clbtnface;
end;

procedure TForm1.THKChange(Sender: TObject);
var
 Sjlm,Sbyr,Sds:string[30];
 Tsem:integer;
 Slm,Shk,Sjumlah,Sdis,Sbayar:single;
begin
 val(Tlm.Text,Slm,Tsem);
 val(Thk.Text,Shk,Tsem);
 Sjumlah:=Slm*Shk;
 str(Sjumlah:30:0,Sjlm);
 Tjumlah.Text:=Sjlm;
 if Sjumlah>=100000
   then
    Sdis:=Sjumlah*0.1
   else
    Sdis:=0;
 Sbayar:=Sjumlah-Sdis;
 str(Sbayar:30:0,Sbyr);
 str(Sdis:30:0,Sds);
 Tdis.Text:=Sds;
 Tbayar.Text:=Sbyr;
end;

end.
