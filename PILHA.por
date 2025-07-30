/* CLIQUE NO SINAL DE "+", À ESQUERDA, PARA EXIBIR A DESCRIÇÃO DO EXEMPLO
 *  
 * Copyright (C) 2025 - SENAI SC 
 * 
 * Este arquivo de código fonte é livre para utilização, cópia e/ou modificação
 * desde que este cabeçalho, contendo os direitos autorais e a descrição do programa, 
 * seja mantido.

 * Descrição:
 * 
 * 	Este exemplo implementa uma estrutura de dados do tipo PILHA (stack),
 * 	usando um vetor e um ponteiro para o topo. Permite empilhar (push) e
 * 	desempilhar (pop) valores, além de visualizar o conteúdo da pilha.
 * 
 * Autor: Daniel Baumann
 * 
 * Data: 30/07/2025
 */

programa

{
  inclua biblioteca Util-->u
    // Define a capacidade máxima da pilha
    inteiro pilha[10]
    inteiro topo = -1 // -1 indica que a pilha está vazia

    funcao inicio()
    {
        // Empilhando elementos
        para (inteiro i = 0; i < 5; i++)
        {
            push(u.sorteia(1, 100))
        }

        escreva("\nPilha após empilhar 5 elementos:\n")
        mostrarPilha()

        // Desempilhando dois elementos
        escreva("\nDesempilhando dois elementos...\n")
        pop()
        pop()

        escreva("\nPilha após pop 2 elementos:\n")
        mostrarPilha()
    }

    funcao push(inteiro valor)
    {
        se (topo < 9)
        {
            topo++
            pilha[topo] = valor
            escreva("Empilhado: ", valor, "\n")
        }
        senao
        {
            escreva("Erro: Pilha cheia\n")
        }
    }

    funcao pop()
    {
        se (topo >= 0)
        {
            escreva("Desempilhado: ", pilha[topo], "\n")
            topo--
        }
        senao
        {
            escreva("Erro: Pilha vazia\n")
        }
    }

    funcao mostrarPilha()
    {
        se (topo == -1)
        {
            escreva("Pilha vazia\n")
        }
        senao
        {
            para (inteiro i = topo; i >= 0; i--)
            {
                escreva(pilha[i], " ")
            }
            escreva("\n")
        }
    }
}
