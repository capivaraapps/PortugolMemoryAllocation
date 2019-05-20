
// Exemplo de funcionamento do algoritmo de alocação de memoria First-fit
// Devido as limitações de Portugol, não utilizarei alocação real de memoria
// e sim uma serie de vetores que simularão os blocos de memoria disponiveis
// e os processos a serem alocados.

// Autor: Pablo Rufat Muñoz - 144162026

programa {
	funcao inicio() {
		inteiro blocosLivres[] = { 100, 500, 200, 300, 600 }
		inteiro processos[] = { 212, 417, 112, 426 }
		inteiro alocacoes[] = { 0, 0, 0, 0, 0 }
		
		para (inteiro posProcesso = 0; posProcesso < 4; posProcesso++){
		    para (inteiro posBloco = 0; posBloco < 5; posBloco++){
    		    se (processos[posProcesso] != 0){
    		        se (processos[posProcesso] <= blocosLivres[posBloco]){
    		            blocosLivres[posBloco] = blocosLivres[posBloco] - processos[posProcesso]
    		            processos[posProcesso] = 0
    		            alocacoes[posProcesso] = posBloco + 1
    		        }
    		    }
    		}
		}
		
		escreva ("Estado final da memoria: \n")
		para (inteiro posBloco = 0; posBloco < 5; posBloco++){
		    escreva ("Bloco: ", posBloco + 1, " => Memoria livre: ", blocosLivres[posBloco], "\n")    
		}
		escreva ("\nAlocação de processos: \n")
		para (inteiro posProcesso = 0; posProcesso < 4; posProcesso++){
		    se (alocacoes[posProcesso] != 0)
		        escreva ("Processo ", posProcesso + 1, " alocado em bloco ", alocacoes[posProcesso], "\n")
		    senao
		        escreva ("Processo ", posProcesso + 1, " não alocado \n")
		}
	}
}
