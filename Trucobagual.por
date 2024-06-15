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
  inteiro rodadas
  inteiro rodadasdamao
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

        //separa as cartas

        separacaodecartas()  
       }
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
          escreva("Qual carta deseja jogar?")
          leia(jogadacarta1)
          auxlogi = falso
          para (inteiro i = 0; i<3; i++){
            se(jogadacarta1==jogador1cartas[i]){
            jogador1cartas[i]="Carta jogada"
            auxlogi=verdadeiro
            salvarCarta = jogador1cartas
            pare
            }
          }
          se (auxlogi==falso){
          escreva("Carta digitada inválida \n")
          }
        }
          funcao jogarcartas2(){
                escreva("Qual carta deseja jogar?")
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

          //busca o valor de cada carta jogada(conferir o valor de cada carta)
          funcao inteiro buscarCartas(){
          se (salvarCarta == "4 de Paus"){
            valorCarta = 28
            retorne 28
          }senao se (salvarCarta == "5 de Paus"){
            valorCarta = 29
            retorne 29
          }senao se (salvarCarta == "6 de Paus"){
            valorCarta = 30
            retorne 30
          }senao se (salvarCarta == "7 de Paus" ){
            valorCarta = 31
            retorne 31
          }senao se (salvarCarta == "11 de Paus"){
            valorCarta = 32
            retorne 32
          }senao se (salvarCarta == "12 de Paus"){
            valorCarta = 33
            retorne 33
          }senao se (salvarCarta == "13 de Paus"){
            valorCarta = 34
            retorne 34
          }senao se (salvarCarta == "1 de Paus"){
            valorCarta = 39
            retorne 39
          }senao se (salvarCarta == "2 de Paus" ){
            valorCarta = 36
            retorne 36
          }senao se (salvarCarta == "3 de Paus"){
            valorCarta = 37
            retorne 37
          }senao se (salvarCarta == "4 de Copa"){
            valorCarta = 29
            retorne 29
          }senao se (salvarCarta == "5 de Copa"){
            valorCarta = 28
            retorne 28
          }senao se (salvarCarta == "6 de Copa"){
            valorCarta = 29
            retorne 29
          }senao se (salvarCarta == "7 de Copa" ){
            valorCarta = 30
            retorne 30
          }senao se (salvarCarta == "11 de Copa"){
            valorCarta = 32
            retorne 32
          }senao se (salvarCarta == "12 de Copa"){
            valorCarta = 31
            retorne 31
          }senao se (salvarCarta == "13 de Copa"){
            valorCarta = 32
            retorne 32
          }senao se (salvarCarta == "1 de Copa"){
            valorCarta = 33
            retorne 33
          }senao se (salvarCarta == "2 de Copa" ){
            valorCarta = 34
            retorne 34
          }senao se (salvarCarta == "3 de Copa"){
            valorCarta = 35
            retorne 35
          }senao se (salvarCarta == "3 de Espada"){
            valorCarta = 36
            retorne 36
          }senao se (salvarCarta == "5 de Espada"){
            valorCarta = 37
            retorne 37
          }senao se (salvarCarta == "6 de Espada"){
            valorCarta = 28
            retorne 28
          }senao se (salvarCarta == "7 de Espada" ){
            valorCarta = 29
            retorne 29
          }senao se (salvarCarta == "11 de Espada"){
            valorCarta = 30
            retorne 30
          }senao se (salvarCarta == "12 de Espada"){
            valorCarta = 38
            retorne 38
          }senao se (salvarCarta == "13 de Espada"){
            valorCarta = 32
            retorne 32
          }senao se (salvarCarta == "1 de Espada"){
            valorCarta = 33
            retorne 33
          }senao se (salvarCarta == "2 de Espada" ){
            valorCarta = 34
            retorne 34
          }senao se (salvarCarta == "3 de Espada"){
            valorCarta = 40
            retorne 40
          }senao se (salvarCarta == "4 de Ouro"){
            valorCarta = 36
            retorne 36
          }senao se (salvarCarta == "5 de Ouro"){
            valorCarta = 37
            retorne 37
          }senao se (salvarCarta == "6 de Ouro"){
            valorCarta = 28
            retorne 28
          }senao se (salvarCarta == "7 de Ouro" ){
            valorCarta = 29
            retorne 29
          }senao se (salvarCarta == "11 de Ouro"){
            valorCarta = 30
            retorne 30
          }senao se (salvarCarta == "12 de Ouro"){
            valorCarta = 37
            retorne 37
          }senao se (salvarCarta == "13 de Ouro"){
            valorCarta = 32
            retorne 32
          }senao se (salvarCarta == "1 de Ouro"){
            valorCarta = 33
            retorne 33
          }senao se (salvarCarta == "2 de Ouro" ){
            valorCarta = 34
            retorne 34
          }senao se (salvarCarta == "3 de Ouro"){
            valorCarta = 35
            retorne 35
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

              // compara o valor das cartas

                funcao vencedordamao (){
                  se(rodadas == 3){
                    se(pontuacaorodada > pontuacaorodada2){
                      pontuacaodamao ++
                    }senao se(pontuacaorodada < pontuacaorodada2){
                      pontuacaodamao2 ++
                    }
                    pontuacaorodada = 0
                    pontuacaorodada2 = 0
                  }
                }

                //compara as jogadas dos jogadores
                funcao vencedordamaoOutro (){
                  se (valorCarta > buscarCartas()){
                        pontuacaorodada ++
                        pare
                      } senao se (valorCarta < buscarCartas()){
                        pontuacaorodada2 ++
                        pare
                      } senao{
                        pare
                      }
                }
                  funcao vencedordarodada (){
                    para(inteiro i = 0; i < 3; i++){
                      se(jogador1cartas[i] > jogador2cartas[i]){
                        pontuacaorodada ++
                        pare
                      }
                      senao se(jogador1cartas[i] < jogador2cartas[i]){
                        pontuacaorodada2 ++
                        pare
                      }
                      senao se(jogador1cartas[i] == jogador2cartas[i]){
                        pare
                      }
                    }
                  } 

                  //Problema: cartas cartasocupacao[i] não pode ser igual a pontuacaocartas[i], cartasocupacao[i] é uma cadeia e pontuacaocartas[i] é um inteiro

                    funcao cartaspontuacao(){
                      inteiro aux = 0
                      inteiro pontuacaocartas [40]={28,29,30,31,32,33,34,39,36,37,28,29,30,31,32,33,34,35,36,37,28,29,30,38,32,33,34,40,36,37,28,29,30,37,32,33,34,35,36,37}
                      inteiro cartasocupacao [40]
                        para(inteiro i = 0; i<40; i++){
                        cartasocupacao[i] = pontuacaocartas[i]
                        }
                    } 
                      funcao menudojogo(){
                        cartasdejogadores()
                        para(rodadasdamao = 0; rodadasdamao < 3; rodadasdamao++){
                          //repetição "para" não sendo utilizada
                        para(rodadas = 0; rodadas < 3; rodadas++)
                        jogadacarta1 = ""
                        limpa()
                        escreva("Pontuação da Rodada - Jogador ", 1, ": ", pontuacaorodada,"\n")
                        escreva("Pontuação da Rodada - Jogador ", 2, ": ", pontuacaorodada2,"\n")
                        escreva("Pontuação da Mão - Jogador ", 1, ": ", pontuacaodamao,"\n")
                        escreva("Pontuação da Mão - Jogador ", 2, ": ", pontuacaodamao2,"\n")
                        auxiliar = falso
                        enquanto(auxiliar == falso){
                        cartasjogador1()
                        jogarcartas()
                        auxiliar = verdadeiro
                        }
                        jogadacarta2 = ""
                        escreva("Pontuação da Rodada - Jogador ", 1, ": ", pontuacaorodada,"\n")
                        escreva("Pontuação da Rodada - Jogador ", 2, ": ", pontuacaorodada2,"\n")
                        escreva("Pontuação da Mão - Jogador ", 1, ": ", pontuacaodamao,"\n")
                        escreva("Pontuação da Mão - Jogador ", 2, ": ", pontuacaodamao2,"\n")
                        auxiliar = falso
                          cartasjogador2()
                          jogarcartas2()
                        vencedordarodada()
                        }           
                        vencedordamao()        
                      }
}