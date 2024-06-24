programa {
  inclua biblioteca Util --> u
  cadeia menu
  cadeia jogador1cartas [3], jogador2cartas [3], aux, aux2 
  inteiro auxint = 0, auxint2
  inteiro opcoesmenu = 0
  cadeia cartas1 [40]
  cadeia cartasocupacao [6]
  inteiro pontuacaocartas [40]={28,29,30,31,32,33,34,39,36,37,28,29,30,31,32,33,34,35,36,37,28,29,30,38,32,33,34,40,36,37,28,29,30,37,32,33,34,35,36,37}
  logico iguais = falso
  cadeia jogadacarta1
  cadeia jogadacarta2
  logico auxlogi
  inteiro rodadas = 0
  inteiro rodadasdamao = 0
  inteiro player1 = 0, player2 = 0
  inteiro pontuacaorodada = 0, pontuacaorodada2 = 0, pontuacaodamao = 0, pontuacaodamao2 = 0
  logico auxiliar
  cadeia salvarCarta
  inteiro valorCarta

  funcao inicio() { 
    cartas1[0] = "4 de Paus"
    cartas1[1] = "5 de Paus" 
    cartas1[2] = "6 de Paus" 
    cartas1[3] = "7 de Paus" 
    cartas1[4] = "11 de Paus" 
    cartas1[5] = "12 de Paus" 
    cartas1[6] = "13 de Paus" 
    cartas1[7] = "1 de Paus" 
    cartas1[8] = "2 de Paus" 
    cartas1[9] = "3 de Paus" 
    cartas1[10] = "4 de Copa" 
    cartas1[11] = "5 de Copa" 
    cartas1[12] = "6 de Copa" 
    cartas1[13] = "7 de Copa" 
    cartas1[14] = "11 de Copa" 
    cartas1[15] = "12 de Copa" 
    cartas1[16] = "13 de Copa" 
    cartas1[17] = "1 de Copa"
    cartas1[18] = "2 de Copa" 
    cartas1[19] = "3 de Copa" 
    cartas1[20] = "4 de Espada" 
    cartas1[21] = "5 de Espada" 
    cartas1[22] = "6 de Espada" 
    cartas1[23] = "7 de Espada"
    cartas1[24] = "11 de Espada" 
    cartas1[25] = "12 de Espada" 
    cartas1[26] = "13 de Espada" 
    cartas1[27] = "1 de Espada" 
    cartas1[28] = "2 de Espada" 
    cartas1[29] = "3 de Espada" 
    cartas1[30] = "4 de Ouro"
    cartas1[31] = "5 de Ouro" 
    cartas1[32] = "6 de Ouro" 
    cartas1[33] = "7 de Ouro" 
    cartas1[34] = "11 de Ouro" 
    cartas1[35] = "12 de Ouro" 
    cartas1[36] = "13 de Ouro" 
    cartas1[37] = "1 de Ouro" 
    cartas1[38] = "2 de Ouro" 
    cartas1[39] = "3 de Ouro"

    menuinicial()
  }
    
    
  funcao menuinicial() {
    escreva ("Bem Vindo ao TRUCO BAGUAL! \n")
    escreva ("Escolha uma das opções \n")
    escreva ("[1] - JOGAR \n")
    escreva ("[2] - SAIR \n")
    leia(opcoesmenu)

    escolha(opcoesmenu){

      caso 1:
        menudojogo()
        pare

      caso 2:
        escreva("Obrigado por escolher o TRUCO BAGUAL! \n")
        pare
    }
  }
  funcao menudojogo(){
    para(rodadasdamao = 0; rodadasdamao < 12; rodadasdamao++){
    cartasdejogadores()
      jogadacarta1 = ""
      para(rodadas = 0; rodadas < 3; rodadas++){
        limpa()
        escreva("Pontuação da Mão - Jogador ", 1, ": ", pontuacaorodada,"\n")
        escreva("Pontuação da Mão - Jogador ", 2, ": ", pontuacaorodada2,"\n")
        escreva("Pontuação da Rodada - Jogador ", 1, ": ", pontuacaodamao,"\n")
        escreva("Pontuação da Rodada - Jogador ", 2, ": ", pontuacaodamao2,"\n")
        auxiliar = falso
        enquanto(auxiliar == falso){
          cartasjogador1()
          jogarcartas()
        }
        limpa()
        jogadacarta2 = ""
        escreva("Pontuação da Mão - Jogador ", 1, ": ", pontuacaorodada,"\n")
        escreva("Pontuação da Mão - Jogador ", 2, ": ", pontuacaorodada2,"\n")
        escreva("Pontuação da Rodada - Jogador ", 1, ": ", pontuacaodamao,"\n")
        escreva("Pontuação da Rodada - Jogador ", 2, ": ", pontuacaodamao2,"\n")
        auxiliar = falso
        
        cartasjogador2()
        jogarcartas2()
        
        igualcartasepontos()
      }
      VencedordaMao()
    VencedordaRodada() 
    }
  }

  //sorteia as cartas
  funcao cartasdejogadores(){
    enquanto(auxint<6){
      inteiro cartasDaMao=u.sorteia(0, 39)
      para(inteiro i = 0;i<6;i++){
        se(cartasocupacao[i] == cartas1[cartasDaMao]){
          iguais=verdadeiro
        }
      }
      se(iguais==falso){
        cartasocupacao[auxint]=cartas1[cartasDaMao]
        auxint++
      }
    }  
    separacaodecartas()  
  }
  //separa as cartas
  funcao separacaodecartas(){
    para(inteiro i = 0; i<3; i++){
      jogador1cartas[i]=cartasocupacao[i]
    }
    para(inteiro i = 0; i<3; i++){
      jogador2cartas[i]=cartasocupacao[i +3]
    }
    escreva("\n Jogador 1\n",jogador1cartas)
    escreva("\n Jogador 2\n",jogador2cartas)
  }

  //joga as cartas
  funcao jogarcartas(){
    escreva("Qual carta deseja jogar?", "\n")
    leia(jogadacarta1)
    auxlogi = falso
    para (inteiro i = 0; i<3; i++){
      se(jogadacarta1==jogador1cartas[i]){  
        jogador1cartas[i]="Carta jogada"
        auxiliar=verdadeiro
        salvarCarta = jogador1cartas[i]
        pare
      }
    }
    se (auxlogi==falso){
      escreva("Carta digitada inválida \n")
    }
  }
  funcao jogarcartas2(){
    escreva("Qual carta deseja jogar?", "\n")
    leia(jogadacarta2)
    auxlogi = falso
    para (inteiro i = 0; i<3; i++){
      se(jogadacarta2==jogador2cartas[i]){
        jogador2cartas[i]="Carta jogada"
        auxlogi=verdadeiro
        pare
      }
    }
    se (auxlogi==falso){
      escreva("Carta digitada inválida \n")
    }
  }


  // escreve as cartas
  funcao cartasjogador1 (){ 
    escreva("As Cartas do Jogador 1 são: \n")
    para(inteiro i = 0; i < 3; i++){
      escreva(jogador1cartas[i],"\n")
    }
  }
  funcao cartasjogador2 (){ 
    escreva("As Cartas do Jogador 2 são: \n")
    para(inteiro i = 0; i < 3; i++){
      escreva(jogador2cartas[i],"\n")
    }
  }

  // FUNÇÃO DA RODADA
  funcao VencedordaRodada (){
    se(rodadas == 3){
      se(pontuacaorodada > pontuacaorodada2){
        pontuacaodamao ++
        retorne
      }senao se(pontuacaorodada < pontuacaorodada2){
        pontuacaodamao2 ++
        retorne
      }
      pontuacaorodada = 0
      pontuacaorodada2 = 0
    }
    VencedordaMao()
  }

  // FUNÇÃO DA MÃO
  funcao VencedordaMao (){
      se(player1 > player2){
        pontuacaorodada ++ 
       
      }
      senao se(player1 < player2){
        pontuacaorodada2 ++
       
      }
      senao se(player1 == player2){
        pontuacaorodada++
        pontuacaorodada2++
       
      }      
    }

  funcao igualcartasepontos(){
    para(inteiro i = 0; i < 40; i++){
      se(jogadacarta1==cartas1[i]){
        player1 = pontuacaocartas[i]
      }
      se(jogadacarta2==cartas1[i]){
        player2 = pontuacaocartas[i]
      }
      VencedordaMao()
    }
  }
  } 