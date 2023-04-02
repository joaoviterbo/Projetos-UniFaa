Algoritmo "Urna eletronica"

Var
   senha: inteiro
   numero_candidato : inteiro
   soma_votos : inteiro
   Herbert, Ribeiro, branco_pr : inteiro
   Barone, Bidu, Monteiro, Joao_fera, Branco_vr : inteiro
   nulo_pr, nulo_vr : inteiro
   votar : caractere
   i : inteiro
Inicio

//Iniciando sistema
timer 1000
escreval("  ****** Iniciando o Sistema ******")
timer 5
repita
escreval(" Carregando",i, "%")
i <- i +1
ate i>100
timer 500
//Leitura da Senha de acesso
     limpatela
     repita
     escreval("Informe a Senha de acesso")
     leia(senha)
     limpatela
     se (senha<>2411)entao
     timer 500
     escreval(" **SENHA INCORRETA*")
     escreval
     escreval(" **INSIRA SENHA CORRETA**")
     TIMER 1000
     fimse
     TIMER 0
     limpatela
     ate(senha = 2411)
     Limpatela
timer 40
//Inicio da Votação - indicação de prefeitos
     repita
       escreval("**********************************")
       escreval("* INFORME SEU VOTO PARA PREFEITO * ")
       escreval("**********************************")
       escreval()
       escreval()
       escreval("Lista de candidatos a prefeito")
       escreval()
       escreval("Candidato Herbert - (90)")
       escreval("Candidato Ribeiro - (95)")
       escreval("Candidato Branco - (10)")
       escreval
       escreval("##Qualquer outro numero para invalidar voto## ")
       escreval
       escreval("Escolha o numero do candidato")
       leia(numero_candidato)
       
//Condição de escolha dos candidatos a prefeito
       escolha numero_candidato
          caso 90
            Herbert <- Herbert + 1
          caso 95
            Ribeiro <- Ribeiro + 1
          caso 10
            Branco_pr <- Branco_pr + 1
          outrocaso
             nulo_pr <- nulo_pr + 1
       fimescolha
          limpatela

//Inicio da Votação - indicação de Vereadores
       escreval("* INFORME SEU VOTO PARA VEREADOR * ")
       escreval()
       escreval()
       escreval("Lista de candidatos a prefeito")
       escreval()
       escreval("Candidato Barone - (90000)")
       escreval("Candidato Bidu - (90999)")
       escreval("Candidato Monteiro - (95000)")
       escreval("Candidato João Fera - (95999)")
       escreval("Candidato Branco - (10000)")
       escreval
       escreval("##Qualquer outro numero para invalidar voto## ")
       escreval("Escolha o numero do candidato")
       escreval
       leia(numero_candidato)

//Condição de escolha dos candidatos a Vereador
       escolha numero_candidato
          caso 90000
            Barone <- Barone + 1
          caso 90999
            Bidu <- Bidu + 1
          caso 95000
            Monteiro <- Monteiro + 1
          caso 95999
            Joao_fera <- Joao_fera+ 1
          caso 10000
            Branco_vr <- Branco_vr + 1
          outrocaso
             nulo_vr <- nulo_vr + 1
       fimescolha
          limpatela
//Condição para Termino da Eleição
        escreval("Novo voto - [S(1) ou N(0)]?")
        leia(votar)
        limpatela
        se (votar <> "1") então
        fimse
     até(votar = "0")
        limpatela

//Indicação dos vencedores da Eleição a Prefeit]o
            escreval(" *************************** ")
            escreval(" *** Apuração da votação *** ")
            escreval(" *************************** ")
            escreval
            escreval("___________________________________")
            escreval
            escreval("  ************************* ")
            escreval("  ** Votos para prefeito ** ")
            escreval("  ************************* ")
            escreval
            escreval(" Candidato Herbert = ", Herbert)
            escreval(" Candidato Ribeiro = ", Ribeiro)
            escreval(" Votos em Branco = ", branco_pr)
            escreval(" Votos Nulos = ", nulo_pr)
            escreval

//Prefeito mais votado
//No caso de não ter nenum voto para prefeito a votação é anulada
//Votos em branco vão para o prefeiro mais Votado
            se( Herbert > Ribeiro ) então
             Herbert <- herbert + Branco_pr
            senao
             se( Herbert < Ribeiro ) então
              Ribeiro <- Ribeiro + Branco_pr
            senao
             nulo_pr <- nulo_pr + branco_pr
             fimse
            fimse
//Vereador mais votado
//No caso de não ter nenum voto para Vereador a votação é anulada
//Votos em branco vão para o vereador mais Votado
            se (( barone > bidu) e ( barone > Monteiro) e ( barone > joao_fera) e ( barone > nulo_vr ))entao
               borone<- barone + branco_vr
            senao
             se(( bidu > barone) e ( bidu > Monteiro) e ( bidu > joao_fera) e ( bidu > nulo_vr ))entao
               bidu<-Bidu + Branco_vr
              senao
               se (( monteiro > barone) e ( monteiro > bidu) e ( monteiro > joao_fera) e ( monteiro > nulo_vr )) entao
                monteiro<- monteiro + Branco_vr
               senao
                se (( joao_fera > barone) e ( Joao_fera > bidu) e ( Joao_fera > monteiro) e ( joao_fera > nulo_vr ))entao
                joao_fera<- joao_fera + Branco_vr
                 senao
                 Nulo_vr<-Nulo_vr + Branco_vr
            fimse
            fimse
            fimse
            fimse
            
            se( Herbert > Ribeiro ) entao
             escreval("  **********************")
             escreval("  *** Herbert eleito ***")
             escreval("  **********************")
             senao
             se ( Ribeiro> Herbert ) entao
             escreval("  **********************")
             escreval("  *** Ribeiro eleito ***")
             escreval("  **********************")
             senao
             escreval("  ***********************")
             escreval("  *** Votação anulada ***")
             escreval("  ***********************")
            fimse
            fimse
              escreval("___________________________________")

//Indicação dos vencedores da Eleição a Vereador
            escreval
            escreval("  ************************* ")
            escreval("  ** Votos para vereador ** ")
            escreval("  ************************* ")
            escreval
            escreval(" Candidato Barone = ",Barone )
            escreval(" Candidato  = Bidu",Bidu )
            escreval(" Candidato  = Monteiro ",Monteiro )
            escreval(" Candidato  = João Fera",joao_fera )
            escreval(" Votos em Branco  = ",branco_vr )
            escreval(" Votos Nulos  = ",nulo_vr )
            escreval
            
            se (( barone > bidu) e ( barone > Monteiro) e ( barone > joao_fera) e ( barone > nulo_vr ))entao
            escreval("  ************************************ ")
            escreval(" ** Barone é o vereador mais votado ** ")
            escreval("  ************************************ ")
            senao
             se(( bidu > barone) e ( bidu > Monteiro) e ( bidu > joao_fera) e ( bidu > nulo_vr ))entao
              escreval(" *********************************** ")
              escreval(" ** Bidu é o vereador mais votado ** ")
              escreval(" *********************************** ")
              senao
               se (( monteiro > barone) e ( monteiro > bidu) e ( monteiro > joao_fera) e ( monteiro > nulo_vr )) entao
               escreval(" *************************************** ")
               escreval(" ** Monteiro é o vereador mais votado **")
               escreval(" *************************************** ")
               senao
                se (( joao_fera > barone) e ( Joao_fera > bidu) e ( Joao_fera > monteiro) e ( joao_fera > nulo_vr ))entao
                 escreval(" *************************************** ")
                 escreval(" ** João Fera é o vereador mais votado **")
                 escreval(" *************************************** ")
                 senao
                 escreval(" *********************************************** ")
                 escreval(" ** NÃO HOUVE CANDIDATO MAIS VOTADO ************")
                 escreval(" *********************************************** ")
            fimse
            fimse
            fimse
            fimse



Fimalgoritmo