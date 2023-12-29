program Project1;

uses
  Vcl.Forms,
  U_InterfaceGraficaCalc in 'U_InterfaceGraficaCalc.pas' {F_InterfaceGraficaCalc},
  U_Calculos in 'U_Calculos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_InterfaceGraficaCalc, F_InterfaceGraficaCalc);
  Application.Run;
end.
