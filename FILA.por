programa {
  inclua biblioteca Util --> u
  //Variáveis globais
  inteiro pilha[6]//Tamanho da pilha (stack)
  inteiro topo=-1 //Pilha vazia
  funcao inicio() {
    push(10)
    push(32)
    push(7)
    pop()
    push(78)
    
  }
  //Adiciona item a pilha (Push)
  funcao push(inteiro valor){
    //Verifica se não estorou a pilha
    se(topo<5){
      topo++
      pilha[topo]=valor
      escreva("Empilhando :",valor,"\n")
    }senao{
      escreva("Erro: pilha cheia.😒")
    }
    mostraPilha()
  }//Fim função Push
  //Função que remove item da pilha (Pop)
  funcao pop(){
    //Verifica de tem item na pilha
    se(topo>=0){
      escreva("Desempilhando: ",pilha[topo],"\n")
      topo--
    }senao{
      escreva("Erro: A pilha está vazia.😒")
    }
    mostraPilha()
  }//Fim Função Pop
  //Função mostra pilha
  funcao mostraPilha(){
    se(topo==-1){
      escreva("A pilha está vazia.😒")
    }senao{
      para(inteiro i=topo;i>=0;i--){
        escreva(pilha[i]," ")
      }
      escreva("\n")
    }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1020; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */