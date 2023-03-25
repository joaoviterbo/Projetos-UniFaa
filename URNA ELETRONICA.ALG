Algoritmo "Urna eletronica"
//para Iniciar a Votação deve-se digitar a senha de acesso que é 2411
//após liberar o acesso pressionar 1 para iniciar a votação, para encerrar digite 0
//Nome dos candidatos;
//Prefeito: 1- Herbert Nº 90 2- Ribeiro: Nº 95
//Vereadores: 1- Barone Nº 90000 2- Bidu Nº 90999 3- Monteiro Nº 95000 4- João Fera Nº 95999
//Votos Brancos 0000 | Votos Nulos 9999

Var
   senha:inteiro
   PR:vetor[1..2] de caracter
   VR:vetor[1..4] de caracter
   votosPR:vetor[1..2] de real
   votosVR:vetor[1..4] de real
   v1PR:vetor[1..2] de inteiro
   v1VR:vetor[1..4] de inteiro

//Variáveis de controle
            I:inteiro
            K:inteiro

Inicio
//Liberação Para uso
            senha<-2411
            escreva ("Digite senha de acesso: ")
            leia (senha)
            enquanto (senha<> 2411)faca
            escreval ("##### Verificando Senha #####")
            escreval
            timer 300
            escreval(" . ")
            escreval(" . ")
            escreval(" . ")
            escreval(" . ")
            escreval(" . ")
            timer 0
            limpatela
            escreval("Senha inválida!")
            escreval("____________________________________")
            escreval
            escreval("Digite senha de acesso: ")
            leia (senha)
            fimenquanto

            timer 300
            escreval(" . ")
            escreval(" . ")
            escreval(" . ")
            escreval(" . ")
            escreval(" . ")
            timer 0
            escreval("acesso liberado")
            timer 1000
            escreval(" Carregando Dados")
            escreval(" 8% ")
            escreval(" 36% ")
            escreval(" 40% ")
            escreval(" 70% ")
            escreval(" 100% ")
            timer 0
//Indicação do Nome dos Candidatos a Prefeito e Vereador
            PR[1]<-" HERBERT Nº 90 "
            PR[2]<-" RIBEIRO Nº 95 "
            VR[1]<-" BARONE Nº 90000 "
            VR[2]<-" BIDU Nº 90999 "
            VR[3]<-" MONTEIRO Nº 95000 "
            VR[4]<-" JOAO FERA Nº 95999 "
//Inicio, configuração da Urna, 1º passo: indicar todos votos em 0
//votos Para prefeito
        v1PR[1]<-0
        v1PR[2]<-0
//Votos para Vereador
        v1VR[1]<-0
        v1VR[2]<-0
        v1VR[3]<-0
        v1VR[4]<-0
//Fase de Voltação
       limpatela
       escreval("Iniciando a Votação")
       timer 400
            escreval
            escreval
            timer 0
//Votação Para Prefeito
          escreval
          para i de 1 até 2 faca
          escreval("Os Candidatos a Prefeito são: ",PR[1]," ou ",PR[2])
          escreval("indique seu candidato")
          escreval
          leia(v1PR[i])
          escreval

          fimpara
//votação para Vereador
          escreval("Os Candidatos a Vereador são: ",VR[1]," | ",VR[2]," | ",VR[3]," | ",VR[4])
          escreval



Fimalgoritmo
