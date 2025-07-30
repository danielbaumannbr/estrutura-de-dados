/* CLIQUE NO SINAL DE "+", À ESQUERDA, PARA EXIBIR A DESCRIÇÃO DO EXEMPLO
 *  
 * Copyright (C) 2025 - SENAI SC 
 * 
 * Este arquivo de código-fonte é livre para utilização, cópia e/ou modificação,
 * desde que este cabeçalho, contendo os direitos autorais e a descrição do programa, 
 * seja mantido.
 * 
 * Descrição:
 * 
 * 	Este exemplo implementa uma estrutura de dados do tipo FILA (queue),
 * 	usando um vetor com controle de início e fim. Permite inserir (inserir)
 * 	e remover (remover) valores, além de visualizar a fila.
 * 
 * Autor: Daniel Baumann
 * 
 * Data: 30/07/2025
 */

programa
{
    inclua biblioteca Util --> u

    // Capacidade da fila
    inteiro fila[10]
    inteiro inicio = 0
    inteiro fim = -1
    inteiro tamanho = 0

    funcao inicio()
    {
        // Inserindo elementos
        para (inteiro i = 0; i < 5; i++)
        {
            inserir(u.sorteia(1, 100))
        }

        escreva("\nFila após inserir 5 elementos:\n")
        mostrarFila()

        // Removendo dois elementos
        escreva("\nRemovendo dois elementos...\n")
        remover()
        remover()

        escreva("\nFila após remover 2 elementos:\n")
        mostrarFila()
    }

    funcao inserir(inteiro valor)
    {
        se (tamanho < 10)
        {
            fim = (fim + 1) % 10
            fila[fim] = valor
            tamanho++
            escreva("Inserido: ", valor, "\n")
        }
        senao
        {
            escreva("Erro: Fila cheia\n")
        }
    }

    funcao remover()
    {
        se (tamanho > 0)
        {
            escreva("Removido: ", fila[inicio], "\n")
            inicio = (inicio + 1) % 10
            tamanho--
        }
        senao
        {
            escreva("Erro: Fila vazia\n")
        }
    }

    funcao mostrarFila()
    {
        se (tamanho == 0)
        {
            escreva("Fila vazia\n")
        }
        senao
        {
            inteiro pos = inicio
            para (inteiro i = 0; i < tamanho; i++)
            {
                escreva(fila[pos], " ")
                pos = (pos + 1) % 10
            }
            escreva("\n")
        }
    }
}
