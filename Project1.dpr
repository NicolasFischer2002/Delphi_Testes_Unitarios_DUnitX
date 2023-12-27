program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {F_Calculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Calculadora, F_Calculadora);
  Application.Run;
end.
