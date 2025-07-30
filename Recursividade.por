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
 * 	Este exemplo demonstra o uso de RECURSIVIDADE para calcular o fatorial
 * 	de um número. A função chama a si mesma até atingir o caso base (n == 1).
 * 
 * Autor: Daniel Baumann
 * 
 * Data: 30/07/2025
 */

programa
{
    funcao inicio()
    {
        inteiro numero = 5
        inteiro resultado = fatorial(numero)

        escreva("Fatorial de ", numero, " é: ", resultado, "\n")
    }

    funcao inteiro fatorial(inteiro n)
    {
        se (n == 1 ou n == 0)
        {
            retorne 1
        }
        senao
        {
            retorne n * fatorial(n - 1)
        }
    }
}
