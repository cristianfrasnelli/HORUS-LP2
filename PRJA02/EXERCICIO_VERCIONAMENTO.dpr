program EXERCICIO_VERCIONAMENTO;

uses
  Vcl.Forms,
  EXERCICIO in 'EXERCICIO.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
