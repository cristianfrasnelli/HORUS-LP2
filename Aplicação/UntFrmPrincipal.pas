unit UntFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    fgdfg1: TMenuItem;
    Pas1: TMenuItem;
    tica1: TMenuItem;
    cnico1: TMenuItem;
    ClubeJogador1: TMenuItem;
    procedure Pas1Click(Sender: TObject);
    procedure tica1Click(Sender: TObject);
    procedure cnico1Click(Sender: TObject);
    procedure ClubeJogador1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation
uses
UntFrmPais,
UntFrmTatica,
UntFrmTecnico,
UntFrmClubeJogador;

{$R *.dfm}

procedure TFrmPrincipal.ClubeJogador1Click(Sender: TObject);
var
vUntFrmClbJog: TFrmClubeJogador;
begin
vUntFrmClbJog:= TFrmClubeJogador.Create(nil);
try
  vUntFrmClbJog.ShowModal;
finally
   FreeAndNil(vUntFrmClbJog);
end;

end;

procedure TFrmPrincipal.cnico1Click(Sender: TObject);
var
vUntFrmTecnico: TFrmTecnico;
begin
vUntFrmTecnico:= TFrmTecnico.Create(nil);
try
  vUntFrmTecnico.ShowModal;
finally
   FreeAndNil(vUntFrmTecnico);
end;

end;

procedure TFrmPrincipal.Pas1Click(Sender: TObject);
var
vUntFrmPais: TFrmPais;
begin
vUntFrmPais:= TFrmPais.Create(nil);
try
  vUntFrmPais.ShowModal;
finally
   FreeAndNil(vUntFrmPais);
end;

end;

procedure TFrmPrincipal.tica1Click(Sender: TObject);

var
vUntFrmTatica: TFrmTatica;
begin
vUntFrmTatica:= TFrmTatica.Create(nil);
try
  vUntFrmTatica.ShowModal;
finally
   FreeAndNil(vUntFrmTatica);
end;

end;


end.
