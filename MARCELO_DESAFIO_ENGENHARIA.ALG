Algoritmo "leitorcodbarras"
// Nome(a)    : Marcelo Augusto de Mello Paix�o
// Universidade : Universidade Est�cio Concei��o
// Curso : An�lise e Desenvolvimento de Sistemas
// Semestre Atual : 1� Semestre
// Descri��o   : Este programa tem por fun��o ler c�digos de barras(Entender)
Var
   // Se��o de Declara��es das vari�veis

   //Ordem do C�digo de Barras
   Origem: inteiro
   Destino: inteiro
   CodLoggi: Inteiro
   CodVendor: Inteiro
   TiProduto: Inteiro

   //Regi�o
   CentroOeste: caractere
   Nordeste: caractere
   Norte: caractere
   Sudeste: caractere
   Sul: caractere

   //Produtos
   Joias: inteiro
   Livros: inteiro
   Eletronicos: inteiro
   Bebidas: inteiro
   Brinquedos: inteiro

   //V�riaveis de op��o
   OrigemEscreva: caractere
   DestinoEscreva: caractere
   Produto: caractere

   //V�riaveis L�gicos
   OrigemTF: logico
   DestinoTF: logico
   Cnpj: logico
   TipoProduto: logico
   JoiasInvalid: logico
   Codigo: logico
   CodigoBar: logico

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   Escreval("Ol�, seja bem vindo ao leitor de c�digo de barras da LOGGI.")
   Escreval("")
   Escreval("Na tabela abaixo verifique quais s�o os c�digos de refer�ncia:")
   Escreval("....................................")
   Escreval("C�digo de Refer�ncia: Cidade/Regi�o")
   Escreval("Centro-Oeste          201 at� 299")
   Escreval("Nordeste              300 at� 399")
   Escreval("Norte                 400 at� 499")
   Escreval("Sudeste               001 at� 099")
   Escreval("Sul                   100 at� 199")
   Escreval("")

   Escreval("Agora na lista abaixo, verifique o Tipo do Produto:")
   Escreval("....................................")
   Escreval("J�ias         001")
   Escreval("Livros        111")
   Escreval("Eletr�nicos   333")
   Escreval("Bebidas       555")
   Escreval("Brinquedos    888")
   Escreval("")

   Escreva("Digite a Regi�o de Origem do produto:(Apenas com N�meros) ")
   leia(Origem)
   Escreva("Digite a Regi�o de Destino do produto:(Apenas com N�meros) ")
   Leia(Destino)

   //O c�digo Loggi foi colocado como padr�o em todas as notas
   CodLoggi <- 555

   Escreva("Digite o C�digo do Vendedor:(Apenas o N�mero) ")
   Leia(CodVendor)
   Escreva("Digite o Tipo do seu Produto:(Apenas o N�mero) ")
   Leia(TiProduto)
   Escreval("")
   
//Op��es de Origem
OrigemTF <- verdadeiro
OrigemTF <- falso
   Escolha Origem
      //verificar os n�meros de 1 at� 100 entre outros.

   caso 201 ate 299
      OrigemEscreva <- "Centro-Oeste"

   caso 300 ate 399
      OrigemEscreva <- "Nordeste"

   caso 400 ate 499
      OrigemEscreva <- "Norte"

   caso 001 ate 099
      OrigemEscreva <- "Sudeste"

   caso 100 ate 199
      OrigemEscreva <- "Sul"

   outrocaso
      escreva("Op��o inserida n�o corresponde a tabela.")
fimalgoritmo

FimEscolha

//Op��es de Destino
DestinoTF <- verdadeiro
DestinoTF <- falso

Escolha Destino

caso 201 ate 299
   DestinoEscreva <- "Centro-Oeste"

caso 300 ate 399
   DestinoEscreva <- "Nordeste"

caso 400 ate 499

   DestinoEscreva <- "Norte"

caso 001 ate 099
   DestinoEscreva <- "Sudeste"

caso 100 ate 199
   DestinoEscreva <- "Sul"
   
FimEscolha

//Op��es de Tipos de Produtos
TipoProduto <- verdadeiro
TipoProduto <- falso

Escolha TiProduto

caso 001
   Produto <- "J�ias"

caso 111
   Produto <- "Livros"

caso 333
   Produto <- "Eletr�nicos"

caso 555
   Produto <- "Bebidas"

caso 888
   Produto <- "Brinquedos"
FimEscolha

//Os Pacotes que cont�m o Produto J�ias n�o podem ser enviados de Origem Centro-Oeste.
JoiasInvalid <- verdadeiro
JoiasInvalid <- falso

Escolha TiProduto

caso 001
   JoiasInvalid <- verdadeiro
FimEscolha

//Leitor de Cnpj Incorreto
Cnpj <- verdadeiro
Cnpj <- falso

Escolha CodVendor

caso 367
   Cnpj <- verdadeiro
FimEscolha

//Nesta parte do c�digo ser� feita a l�gica de cada etapa do leitor
Se OrigemTF = OrigemEscreva Entao
senao
   Escreval("O Endere�o de Origem n�o corresponde com a tabela acima, Tente Novamente!")
   Escreval("")
fimalgoritmo
fimse

Se DestinoTF = DestinoEscreva Entao
senao
   Escreval("O endere�o de destino n�o corresponde com a tabela acima, Tente Novamente!")
   Escreval("")
fimalgoritmo
fimse

//J�ias n�o podem ser enviadas por Origem Centro-Oeste
Se TiProduto = JoiasInvalid entao
   Escreval("Este produto ", Produto, " n�o pode ser enviado por Origem ", OrigemEscreva)
fimalgoritmo
fimse

Se CodVendor = Cnpj entao
   Escreval("Este usu�rio informado n�o pode mais enviar pacotes, CNPJ inativo ou suspenso.")
fimalgoritmo
Senao
   Escreval("Usu�rio Permitido.")
   Escreval("")
fimse

Se TipoProduto = Produto entao
   Escreval("Siga a Nota de Envio abaixo")
   Escreval("")
senao
   Escreval("Este produto n�o corresponde com a tabela acima, Tente Novamente!")
fimalgoritmo
fimse

//Nota de Envio
Escreval("C�digo: ", Origem, " ", Destino, " ", CodLoggi, " ", CodVendor, " ", TiProduto)
Escreval("Regi�o de origem: Cidade ", Origem, ", regi�o ", OrigemEscreva )
Escreval("Regi�o de destino: Cidade ", Destino, ", regi�o ", DestinoEscreva)
Escreval("C�digo Loggi: ", CodLoggi)
Escreval("C�digo do Vendedor do Produto: ", CodVendor)
Escreval("Tipo do Produto: ", Produto)
Fimalgoritmo