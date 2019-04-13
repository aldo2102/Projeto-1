Algoritmo "Projeto 1"
// Disciplina  : [Linguagem e Lógica de Programação Orientada a Objetos]
// Professor/Mestre(a): Aldo Henrique
// Descrição   : menu com divisão, faixa etária, números primos, media maior e menor,
//codigo morse, mudança de base e sair
// Autor(a)    : Mateus Guimarães Alves CPD: 36454)
// Data atual  : 13/09/2019
Var
   // Seção de Declarações das variáveis

   indice, V : inteiro  //vairável para escolha do procedimento
   L,XL :  LOGICO   //variaveis para controle da escolha do menu
   OPCAO : Caracter  //vairavel para escolha caso






PROCEDIMENTO DIVISAO
Var
   n1, n2, D1: real

   // escrever operações

INICIO

   escreval ("-------------------------------------")
   escreval ("           1 - DIVISÃO               ")
   escreval ("-------------------------------------")
   escreval ("Digite o 1º numero da divisão: ")
   leia (n1)
   escreval ("Digite o 2º número da divisão: ")
   leia (n2)
   se (n2 = 0) entao  //função de validação da divisão (não pode ser =0)
      repita
         escreval("Não pode haver divisão por zero.")
         Escreval ("DIgite novamente o 2º número da divisão: ")
         leia (n2)
      ate (n2 <> 0)
   fimse

   D1 <- n1/n2

   escreval ("A Divisão é: ", D1)
   leia (V)

FIMPROCEDIMENTO


PROCEDIMENTO FAIXAETARIA
Var
   nP, iD, idM, idF, conP, conF, conM, S: inteiro
   mP, mM, mF: real

INICIO

   escreval ("-----------------------------------------------------")
   escreval ("                  2 - FAIXA ETÁRIA                   ")
   escreval ("-----------------------------------------------------")
   escreva ("Digite o número de pessoas que deseja pesquisar: ")
   leia (nP)
   se (nP > 0) entao  // condição minima para validadar idade (iD > 0)

      conP <- 0
      conM <- 0
      conF <- 0

      // função de descrever idade e quantidade de pessoas pelo sexo informado
      repita
         escreval ("Qual a idade da ", (conP + 1),"ª pessoa?")
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
            escreval ("Idade inválida.")
            
         fimse
      até (conP = nP)
      // condição para divisão da média
      se (conF > 0) entao
         mF <- idF/conF
      fimse
      se (conM > 0) entao
         mM <- idM/conM
      fimse

      se (conP > 0) entao
         mP <- iD/ conP
      fimse

      escreval ("A média total das idades das pessoas é: ", mP)
      escreval ("A média das idades femininas é: ", mF)
      escreval ("A média das idades masculinas é: ", mM)
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
   escreval ("                3 - NÚMEROS PRIMOS                   ")
   escreval ("-----------------------------------------------------")
   escreva ("Digite até que número quer a soma dos primos: ")
   leia (NumP)
   se (NumP > 0) entao  // condição
      SPrimo <- 0
      Para cont1 de 1 ate NumP passo 1 faca // contagem dos números até escolhido
         P <- 0
         para cont2 de 1 ate cont1 passo 1 faca
            se (cont1 mod cont2 = 0) entao // condição de verificação do numero de divisores
               P <- P + 1 //contador da verificação
            fimse
         fimpara
         se (p = 2) entao     // condição para verificar se é um nº primo
            SPrimo <- SPrimo + cont1
         fimse
      fimpara
      escreval ("A soma dos primos até", NumP," é:", SPrimo)
   senao
      escreval ("O número informado é inválido.")
   fimse
   leia (V) //variavel vazia para retornar ao menu

FIMPROCEDIMENTO


PROCEDIMENTO RETORNAMAIOR

Var
   nInf, Maior, Menor, cont4, nMax, SNum: inteiro
   mediaNUm: real


Inicio

   escreval ("-----------------------------------------------------")
   escreval ("        4 - RETORNA O MAIOR, MENOR E A MÉDIA         ")
   escreval ("-----------------------------------------------------")
   escreva  ("Informe quantos números deseja calcular: ")
   leia (nMax)

   se (nMax > 0) entao // condição de validação

      para cont4 de 1 ate nMax passo 1 faca  // laço até numero digitado
         escreval ("Digite o ", cont4,"º número: ")
         leia (nInf)

         se (cont4 = 1) entao  //condição para receber valores iniciais
            Maior <- nInf
            Menor <- nInf
         fimse

         se (nInf > Maior) entao   // condição para receber maior
            Maior <- nInf
         senao
            se (nInf < Menor) entao   // condiçao para receber menor
               Menor <- nInf
            fimse

         fimse
         SNum <- SNum + nInf  //soma dos valores totais para calculo da media
      fimpara
      mediaNUm <- SNum / nMax // média total
      escreval ("O MAIOR número digitado foi: ", Maior)
      escreval ("O MENOR número digitado foi: ", Menor)
      escreval ("A MÉDIA de todos os números é: ", mediaNUm)
   senao
      escreval ("Numero informado inválido.")
   fimse
   leia (V)// variavel de retorno

FIMPROCEDIMENTO



PROCEDIMENTO CODIGOMORSE
//declaração de variáveis
Var
   NumMorse: inteiro
   resposta :caracter
Inicio
   //legenda para guiar a escolha
   escreval ("-----------------------------------------------------")
   escreval ("                 5 - CÓDIGO MORSE.                   ")
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


   escreva ("Informe um número de 0 a 20 para codificar: ")
   leia (NumMorse)

   se (numMorse > 0) e (numMorse < 20) entao// condiçao de execução
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
      escreval ("O Código Morse para o número digitado é: ")
      escreval (resposta)
   senao
      escreval ("Número inválido!")
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
   escreval ("               6 - MUDANÇA DE BASE.                  ")
   escreval ("-----------------------------------------------------")

   escreval ("Escolha o tipo de base que irá digitar o número: ")
   escreval ("B - binário         D - Decimal")
   leia (numbase)

   se (numbase = "D") ou (numbase = "d") entao

      escreva ("Digite um número inteiro: ")
      leia (y)
      d <- y //variavel auxiliar para referência na resposta.
      enquanto (y > 0) faca
         se (y mod 2) = 0 entao // se o resto for = 0 escreva 0.
            x <- "0" + x
         senao
            x <- "1" + x
         fimse
         y <- y div 2
      fimenquanto
      escreval ("A representação binária de", d, " é: ", x)
   senao
      se (numbase = "B") ou (numbase = "b") entao
         escreval ("Digite o Número Binário: ")
         leia (bin)
         contbin2<- compr(bin)// quantidade de caracteres do numero binario
         enquanto contbin1 < compr(bin) faca  // para contador até quantidade de caracter
            dec <- dec + caracpnum (copia(bin, contbin2, contbin1))*exp(2,1)//Esta função
            //serve para converter um valor do tipo texto em um valor do tipo inteiro
            contbin1 <- contbin1 + 1
            contbin2 <- contbin2 - 1
         fimenquanto
         escreval ("A representação decimal de ", bin, " é: ",dec)
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
   OPCAO := "" // formatação de tela
   ENQUANTO L FAÇA   // função lógica
      LIMPATELA //formataçaõ de tela
      ESCREVAL("   MENU   ")
      ESCREVAL("1- DIVISÃO")
      ESCREVAL("2- FAIXA ETÁRIA")
      ESCREVAL("3- NÚMEROS PRIMOS")
      ESCREVAL("4- RETORNA MAIOR, MENOR E MÉDIA")
      ESCREVAL("5- CÓDIGO MORSE")
      ESCREVAL("6- MUDANÇA DE BASE")
      ESCREVAL("7- FINALIZAR")
      ESCREVAL(" ")
      Escreva("Digite a opção:")
      Leia(opcao)
      ESCOLHA OPCAO FAÇA
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
         ESCREVAL("OPÇÃO INVÁLIDA !!!")
         ESCREVAL(" ")
         ESCREVA("TECLE <ENTER> ")
         LEIA(XL) //variavel para retorna ao menu
      FIMESCOLHA
   FIMENQUANTO
Fimalgoritmo