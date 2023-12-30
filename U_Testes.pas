unit U_Testes;

interface

uses
  DUnitX.TestFramework, System.SysUtils, U_Calculos;

type
  [TestFixture]
  TMyTestObject = class
  strict private
    aTCalculos: TCalculos;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure TestCalculaAreaTriangulo;
  end;

implementation

// <===== Testes para realizar =====>
// Dois exemplos de Testes que poder�o ser feitos com DUnitx, s�o:
// �reas negativas, Altura e/ou Base zeradas

// <===== Documenta��o =====>
// https://docwiki.embarcadero.com/RADStudio/Sydney/en/Developing_Tests_with_DUnitX
// https://docwiki.embarcadero.com/RADStudio/Sydney/en/DUnitX_Overview


// <===== Setup e TearDown =====>
// Juntos, esses m�todos garantem que cada teste
// comece com um estado consistente e termine sem deixar res�duos.
// Eles fazem parte da abordagem padr�o para configura��o e limpeza
// em testes unit�rios e ajudam a garantir a reprodutibilidade e a
// confiabilidade dos testes.



// O m�todo Setup (configurar) � chamado antes da execu��o
// de cada m�todo de teste na classe de testes.
// � utilizado para realizar a configura��o inicial necess�ria para o teste,
// como a cria��o de inst�ncias de objetos que ser�o utilizados nos testes.
procedure TMyTestObject.Setup;
begin
     aTCalculos := TCalculos.Create;
end;

// O m�todo TearDown (destruir) � chamado ap�s a execu��o de cada m�todo
// de teste na classe de testes.
// Ele � utilizado para realizar a limpeza
// ou libera��o de recursos utilizados nos testes.
procedure TMyTestObject.TearDown;
begin
     FreeAndNil(aTCalculos);
end;

procedure TMyTestObject.TestCalculaAreaTriangulo;
var
  Base, Altura, Resultado, Calculado: Single;
begin
     // Tr�s fases comuns em um teste unit�rio conhecidas como o padr�o AAA:

     // Arrange (Preparar):
     // Nesta fase, voc� prepara o ambiente de teste.
     // Isso inclui a configura��o de objetos,
     // a defini��o de vari�veis e tudo o que � necess�rio para o teste
     Base := 10;
     Altura := 10;
     Resultado := 50;


     // Act (Agir): Aqui, voc� executa a opera��o ou a fun��o que deseja testar.
     // Este � o passo onde voc� realiza a a��o que est� sendo testada.
     Calculado := aTCalculos.CalculaAreaTriangulo(Base, Altura);


     // Assert (Afirma��o): Na �ltima fase, voc� verifica se o resultado da a��o
     // realizada na fase "Act" � o esperado.
     // Voc� compara o resultado real com o resultado esperado e relata
     // qualquer discrep�ncia como uma falha no teste.
     Assert.AreEqual(Resultado, Calculado);
end;

// <===== DUnitX Functions =====>
// Pass (Passar) => Verifica se uma rotina funciona
// Fail (Falhar) => Verifica se uma rotina falha
// AreEqual (S�o iguais) => Verifica se os itens s�o iguais
// AreNotEqual (N�o s�o iguais) => Verifica se os itens n�o s�o iguais
// AreSame (S�o os mesmos) => Verifica se dois itens t�m o mesmo valor
// AreNotSame (N�o s�o iguais) => Verifica se dois itens n�o t�m o mesmo valor
// Contains (Cont�m) => Verifica se o item est� em uma lista
// DoesNotContain (N�o cont�m) => Verifica se o item n�o est� em uma lista
// IsTrue (� verdade) => Verifica se uma condi��o � verdadeira
// IsFalse (� falso) => Verifica se uma condi��o � falsa
// IsEmpty (Est� vazia) => Verifica se o valor de um item est� vazio
// IsNotEmpty (N�o est� vazio) => Verifica se o valor de um item n�o est� vazio
// IsNull (� nulo) => Verifica se um item � nulo
// IsNotNull (N�o � nulo) => Verifica se um item n�o � nulo
// WillRaise (Aumentar�) => Verifica se o m�todo gerar� uma exce��o
// StartsWith (Come�a com) => Verifica se uma string come�a com uma substring especificada
// InheritsFrom (Herda de) => Verifica se uma classe � descendente de uma classe especificada
// IsMatch (� compat�vel) => Verifica se o item corresponde a um padr�o especificado

initialization
  TDUnitX.RegisterTestFixture(TMyTestObject);

end.
