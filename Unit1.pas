unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TF_Calculadora = class(TForm)
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
    function CalculaAreaTriangulo(Base, Altura : Single): Single; // Single = float, num�rico 32 bits
    procedure MudaCorEdits(Edits: array of TEdit; NovaCorFundo, NovaCorTexto: TColor);
  public
    { Public declarations }
  end;

var
  F_Calculadora: TF_Calculadora;

implementation

{$R *.dfm}


// Dois exemplos de Testes que poder�o ser feitos com DUnix, s�o:
// �reas negativas, Altura e/ou Base Szeradas


procedure TF_Calculadora.MudaCorEdits(Edits: array of TEdit; NovaCorFundo, NovaCorTexto: TColor);
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

function TF_Calculadora.CalculaAreaTriangulo(Base, Altura: Single): Single;
begin
     Result := ((Base * Altura) / 2);
end;

procedure TF_Calculadora.btn_calcularAreaClick(Sender: TObject);
var
   BaseString   : String;
   AlturaString : String;
   BaseFloat    : Single;
   AlturaFloat  : Single;
   ArrayEdits   : array [0..1] of TEdit;
begin
     Try
        BaseString    := edt_base.Text;
        AlturaString  := edt_altura.Text;
        ArrayEdits[0] := edt_base;
        ArrayEdits[1] := edt_altura;
        
        if TryStrToFloat(BaseString, BaseFloat) and TryStrToFloat(AlturaString, AlturaFloat) then
         begin
              MudaCorEdits(ArrayEdits, clGreen, clWhite);
              edt_resultadoArea.Text := FormatFloat('#0.00', CalculaAreaTriangulo(BaseFloat, AlturaFloat));
         end
        else
         begin
              MudaCorEdits(ArrayEdits, clRed, clWhite);
              ShowMessage('Os valores digitados s�o inv�lidos! s�o permitidos apenas n�meros.');
         end;
      
     Except
        on E: Exception do
        ShowMessage('Erro ao calcular �rea! ' + E.Message);
     End;
end;

end.
