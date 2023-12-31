unit U_InterfaceGraficaCalc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, U_Calculos;

type
  TF_InterfaceGraficaCalc = class(TForm)
    btn_calcularArea: TButton;
    lbl_base: TLabel;
    lbl_altura: TLabel;
    Label3: TLabel;
    edt_base: TEdit;
    edt_altura: TEdit;
    pnl_top: TPanel;
    lbl_area: TLabel;
    edt_resultadoArea: TEdit;
    procedure btn_calcularAreaClick(Sender: TObject);
  private
    { Private declarations }
    procedure MudaCorEdits(Edits: array of TEdit; NovaCorFundo, NovaCorTexto: TColor);
  public
    { Public declarations }
  end;

var
  F_InterfaceGraficaCalc: TF_InterfaceGraficaCalc;

implementation

{$R *.dfm}


procedure TF_InterfaceGraficaCalc.MudaCorEdits(Edits: array of TEdit; NovaCorFundo, NovaCorTexto: TColor);
var
   i : Integer;
begin
     for i := Low(Edits) to High(Edits) do
      begin
           if Assigned(Edits[i]) then
            begin
                 Edits[i].BorderStyle := bsSingle;
                 Edits[i].Color       := NovaCorFundo;  // Cor do fundo
                 Edits[i].Font.Color  := NovaCorTexto;  // Cor do texto
            end;
      end;
end;

procedure TF_InterfaceGraficaCalc.btn_calcularAreaClick(Sender: TObject);
var
  BaseString: String;
  AlturaString: String;
  BaseFloat: Single;
  AlturaFloat: Single;
  ArrayEdits: array [0..1] of TEdit;
  Calculos: TCalculos;
begin
     Try
        BaseString := edt_base.Text;
        AlturaString := edt_altura.Text;
        ArrayEdits[0] := edt_base;
        ArrayEdits[1] := edt_altura;

        Calculos := TCalculos.Create; // Cria uma inst�ncia de TCalculos

        Try
           if TryStrToFloat(BaseString, BaseFloat) and TryStrToFloat(AlturaString, AlturaFloat) then
            begin
                 MudaCorEdits(ArrayEdits, clGreen, clWhite);
                 edt_resultadoArea.Text := FormatFloat('#0.00', Calculos.CalculaAreaTriangulo(BaseFloat, AlturaFloat));
            end
           else
            begin
                 MudaCorEdits(ArrayEdits, clRed, clWhite);
                 ShowMessage('Os valores digitados s�o inv�lidos! s�o permitidos apenas n�meros.');
            end;

        Finally
           FreeAndNil(Calculos); // Libera a inst�ncia de TCalculos quando n�o for mais necess�ria
        End;

     Except
       on E: Exception do
         ShowMessage('Erro ao calcular �rea! ' + E.Message);
     End;
end;


end.
