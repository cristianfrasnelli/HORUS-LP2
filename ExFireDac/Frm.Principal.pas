unit Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Frm.Proprietarios;

type
  TFrmPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
Frm.VeiculosMultas;



{$R *.dfm}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
var
vFrmProprietarios: TfrmProprietarios;
begin
 vFrmProprietarios := TfrmProprietarios.Create(nil);
 try
  vFrmProprietarios.ShowModal;
 finally
  FreeAndNil(vFrmProprietarios);
 end;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
var
vFrmVeiculosMultas: TForm1;
begin
 vFrmVeiculosMultas:= TForm1.Create(nil);
 try
   vFrmVeiculosMultas.ShowModal;
 finally
   FreeAndNil(vFrmVeiculosMultas);
 end;
end;

end.
