program TRABALHO_LP2;

uses
  Vcl.Forms,
  UnitTRABALHO in 'UnitTRABALHO.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
