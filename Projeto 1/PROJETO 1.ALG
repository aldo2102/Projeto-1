Algoritmo "Projeto 1"
// Disciplina  : [Linguagem e L�gica de Programa��o Orientada a Objetos]
// Professor/Mestre(a): Aldo Henrique
// Descri��o   : menu com divis�o, faixa et�ria, n�meros primos, media maior e menor,
//codigo morse, mudan�a de base e sair
// Autor(a)    : Mateus Guimar�es Alves CPD: 36454)
// Data atual  : 13/09/2019
Var
   // Se��o de Declara��es das vari�veis

   indice, V : inteiro  //vair�vel para escolha do procedimento
   L,XL :  LOGICO   //variaveis para controle da escolha do menu
   OPCAO : Caracter  //vairavel para escolha caso






PROCEDIMENTO DIVISAO
Var
   n1, n2, D1: real

   // escrever opera��es

INICIO

   escreval ("-------------------------------------")
   escreval ("           1 - DIVIS�O               ")
   escreval ("-------------------------------------")
   escreval ("Digite o 1� numero da divis�o: ")
   leia (n1)
   escreval ("Digite o 2� n�mero da divis�o: ")
   leia (n2)
   se (n2 = 0) entao  //fun��o de valida��o da divis�o (n�o pode ser =0)
      repita
         escreval("N�o pode haver divis�o por zero.")
         Escreval ("DIgite novamente o 2� n�mero da divis�o: ")
         leia (n2)
      ate (n2 <> 0)
   fimse

   D1 <- n1/n2

   escreval ("A Divis�o �: ", D1)
   leia (V)

FIMPROCEDIMENTO


PROCEDIMENTO FAIXAETARIA
Var
   nP, iD, idM, idF, conP, conF, conM, S: inteiro
   mP, mM, mF: real

INICIO

   escreval ("-----------------------------------------------------")
   escreval ("                  2 - FAIXA ET�RIA                   ")
   escreval ("-----------------------------------------------------")
   escreva ("Digite o n�mero de pessoas que deseja pesquisar: ")
   leia (nP)
   se (nP > 0) entao  // condi��o minima para validadar idade (iD > 0)

      conP <- 0
      conM <- 0
      conF <- 0

      // fun��o de descrever idade e quantidade de pessoas pelo sexo informado
      repita
         escreval ("Qual a idade da ", (conP + 1),"� pessoa?")
         leia (iD)
         se (iD > 0) entao
            escreval ("Digite o sexo:  1 - FEMININO ou 2 - MASCULINO:")
            leia (S)
            escolha S
            caso 1
               idF <- iD + idF   // idade + sexo feminino
               conF <- conF + 1
            caso 2
               idM <- iD + idM   // idade + sexo masculino
               conM <- conM + 1
            outrocaso
               escreval ("Sexo informado errado.")  // retorno
               conf <- conF - 1
               conM <- conM - 1
               conP <- conP - 1
            fimescolha
            conP <- conP + 1
            iD <- IdM + idF
         senao
            escreval ("Idade inv�lida.")
            
         fimse
      at� (conP = nP)
      // condi��o para divis�o da m�dia
      se (conF > 0) entao
         mF <- idF/conF
      fimse
      se (conM > 0) entao
         mM <- idM/conM
      fimse

      se (conP > 0) entao
         mP <- iD/ conP
      fimse

      escreval ("A m�dia total das idades das pessoas �: ", mP)
      escreval ("A m�dia das idades femininas �: ", mF)
      escreval ("A m�dia das idades masculinas �: ", mM)
   senao
      escreval ("Quantidade de pessoas nula.")
   fimse
   leia (V) // variavel de retorno

FIMPROCEDIMENTO



PROCEDIMENTO NUMEROSPRIMOS
Var
   cont1, cont2, NumP, P, SPrimo: inteiro
Inicio
   escreval ("-----------------------------------------------------")
   escreval ("                3 - N�MEROS PRIMOS                   ")
   escreval ("-----------------------------------------------------")
   escreva ("Digite at� que n�mero quer a soma dos primos: ")
   leia (NumP)
   se (NumP > 0) entao  // condi��o
      SPrimo <- 0
      Para cont1 de 1 ate NumP passo 1 faca // contagem dos n�meros at� escolhido
         P <- 0
         para cont2 de 1 ate cont1 passo 1 faca
            se (cont1 mod cont2 = 0) entao // condi��o de verifica��o do numero de divisores
               P <- P + 1 //contador da verifica��o
            fimse
         fimpara
         se (p = 2) entao     // condi��o para verificar se � um n� primo
            SPrimo <- SPrimo + cont1
         fimse
      fimpara
      escreval ("A soma dos primos at�", NumP," �:", SPrimo)
   senao
      escreval ("O n�mero informado � inv�lido.")
   fimse
   leia (V) //variavel vazia para retornar ao menu

FIMPROCEDIMENTO


PROCEDIMENTO RETORNAMAIOR

Var
   nInf, Maior, Menor, cont4, nMax, SNum: inteiro
   mediaNUm: real


Inicio

   escreval ("-----------------------------------------------------")
   escreval ("        4 - RETORNA O MAIOR, MENOR E A M�DIA         ")
   escreval ("-----------------------------------------------------")
   escreva  ("Informe quantos n�meros deseja calcular: ")
   leia (nMax)

   se (nMax > 0) entao // condi��o de valida��o

      para cont4 de 1 ate nMax passo 1 faca  // la�o at� numero digitado
         escreval ("Digite o ", cont4,"� n�mero: ")
         leia (nInf)

         se (cont4 = 1) entao  //condi��o para receber valores iniciais
            Maior <- nInf
            Menor <- nInf
         fimse

         se (nInf > Maior) entao   // condi��o para receber maior
            Maior <- nInf
         senao
            se (nInf < Menor) entao   // condi�ao para receber menor
               Menor <- nInf
            fimse

         fimse
         SNum <- SNum + nInf  //soma dos valores totais para calculo da media
      fimpara
      mediaNUm <- SNum / nMax // m�dia total
      escreval ("O MAIOR n�mero digitado foi: ", Maior)
      escreval ("O MENOR n�mero digitado foi: ", Menor)
      escreval ("A M�DIA de todos os n�meros �: ", mediaNUm)
   senao
      escreval ("Numero informado inv�lido.")
   fimse
   leia (V)// variavel de retorno

FIMPROCEDIMENTO



PROCEDIMENTO CODIGOMORSE
//declara��o de vari�veis
Var
   NumMorse: inteiro
   resposta :caracter
Inicio
   //legenda para guiar a escolha
   escreval ("-----------------------------------------------------")
   escreval ("                 5 - C�DIGO MORSE.                   ")
   escreval ("-----------------------------------------------------")
   escreval  ("LEGENDA: ")
   escreval ("1 = . _ _ _ _          6 = _ . . . .")
   escreval ("")
   escreval ("2 = . . _ _ _          7 = _ _ . . .")
   escreval ("")
   escreval ("3 = . . . _ _          8 = _ _ _ . .")
   escreval ("")
   escreval ("4 = . . . . _          9 = _ _ _ _ .")
   escreval ("")
   escreval ("5 = . . . . .          0 = _ _ _ _ _")


   escreva ("Informe um n�mero de 0 a 20 para codificar: ")
   leia (NumMorse)

   se (numMorse > 0) e (numMorse < 20) entao// condi�ao de execu��o
      escolha NumMorse
      caso 1
         resposta <- ". _ _ _ _"
      caso 2
         resposta <- ". . _ _ _"
      caso 3
         resposta <- ". . . _ _"
      caso 4
         resposta <- ". . . . _"
      caso 5
         resposta <- ". . . . ."
      caso 6
         resposta <- "_ . . . ."
      caso 7
         resposta <- "_ _ . . ."
      caso 8
         resposta <- "_ _ _ . ."
      caso 9
         resposta <- "_ _ _ _ ."
      caso 10
         resposta <- ". _ _ _ _ _ _ _ _ _"
      caso 11
         resposta <- ". _ _ _ _ . _ _ _ _"
      caso 12
         resposta <- ". _ _ _ _ . . _ _ _"
      caso 13
         resposta <- ". _ _ _ _ . . . _ _"
      caso 14
         resposta <- ". _ _ _ _ . . . . _"
      caso 15
         resposta <- ". _ _ _ _ . . . . ."
      caso 16
         resposta <- ". _ _ _ _ _ . . . ."
      caso 17
         resposta <- ". _ _ _ _ _ _ . . ."
      caso 18
         resposta <- ". _ _ _ _ _ _ _ . ."
      caso 19
         resposta <- ". _ _ _ _ _ _ _ _ ."
      caso 20
         resposta <- ". . _ _ _ _ _ _ _ _"
      fimescolha
      escreval ("O C�digo Morse para o n�mero digitado �: ")
      escreval (resposta)
   senao
      escreval ("N�mero inv�lido!")
   fimse

   leia (V) //variavel de retorno

FIMPROCEDIMENTO


PROCEDIMENTO MUDANCABASE
VAR
   x, bin, numBase: caracter
   y, d, contbin1, contbin2: inteiro
   dec: real

Inicio

   escreval ("-----------------------------------------------------")
   escreval ("               6 - MUDAN�A DE BASE.                  ")
   escreval ("-----------------------------------------------------")

   escreval ("Escolha o tipo de base que ir� digitar o n�mero: ")
   escreval ("B - bin�rio         D - Decimal")
   leia (numbase)

   se (numbase = "D") ou (numbase = "d") entao

      escreva ("Digite um n�mero inteiro: ")
      leia (y)
      d <- y //variavel auxiliar para refer�ncia na resposta.
      enquanto (y > 0) faca
         se (y mod 2) = 0 entao // se o resto for = 0 escreva 0.
            x <- "0" + x
         senao
            x <- "1" + x
         fimse
         y <- y div 2
      fimenquanto
      escreval ("A representa��o bin�ria de", d, " �: ", x)
   senao
      se (numbase = "B") ou (numbase = "b") entao
         escreval ("Digite o N�mero Bin�rio: ")
         leia (bin)
         contbin2<- compr(bin)// quantidade de caracteres do numero binario
         enquanto contbin1 < compr(bin) faca  // para contador at� quantidade de caracter
            dec <- dec + caracpnum (copia(bin, contbin2, contbin1))*exp(2,1)//Esta fun��o
            //serve para converter um valor do tipo texto em um valor do tipo inteiro
            contbin1 <- contbin1 + 1
            contbin2 <- contbin2 - 1
         fimenquanto
         escreval ("A representa��o decimal de ", bin, " �: ",dec)
      senao
         escreval ("Tipo de base incorreta.")
      fimse
   fimse

   leia (V)
FIMPROCEDIMENTO



Inicio
   // Menu para os procedimentos

   indice := 1
   L := VERDADEIRO
   OPCAO := "" // formata��o de tela
   ENQUANTO L FA�A   // fun��o l�gica
      LIMPATELA //formata�a� de tela
      ESCREVAL("   MENU   ")
      ESCREVAL("1- DIVIS�O")
      ESCREVAL("2- FAIXA ET�RIA")
      ESCREVAL("3- N�MEROS PRIMOS")
      ESCREVAL("4- RETORNA MAIOR, MENOR E M�DIA")
      ESCREVAL("5- C�DIGO MORSE")
      ESCREVAL("6- MUDAN�A DE BASE")
      ESCREVAL("7- FINALIZAR")
      ESCREVAL(" ")
      Escreva("Digite a op��o:")
      Leia(opcao)
      ESCOLHA OPCAO FA�A
      CASO "1"
         DIVISAO
      CASO "2"
         FAIXAETARIA
      CASO "3"
         NUMEROSPRIMOS
      CASO "4"
         RETORNAMAIOR
      CASO "5"
         CODIGOMORSE
      CASO "6"
         MUDANCABASE
      CASO "7"
         L := FALSO
      OUTROCASO
         ESCREVAL("OP��O INV�LIDA !!!")
         ESCREVAL(" ")
         ESCREVA("TECLE <ENTER> ")
         LEIA(XL) //variavel para retorna ao menu
      FIMESCOLHA
   FIMENQUANTO
Fimalgoritmo