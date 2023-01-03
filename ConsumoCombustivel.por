programa
{
	inclua biblioteca Matematica
	
	real quantidadeCombustivel= 0.0, quilometragem= 0.0
	
	funcao inicio()
	{
		//Funcao para capturar os valores das variaveis
		capturaValores()

		//Validacao dos valores para a execução do cálculo de média
		logico validado = validarValores()
		
		se(validado == falso){
			retorne
		}
		
		//Funcao para calcular os valores da media de consumo
		calcularConsumo()	
	}

	funcao capturaValores(){
		escreva("================================\n")
		escreva("====== CALCULO DE CONSUMO ======\n")
		escreva("================================\n")
		escreva("\nQual a quantidade de combustivel adicionada no veículo? (litros): ")
		leia(quantidadeCombustivel)
		escreva("\nQual a quilometragem rodada? (Km): ")
		leia(quilometragem)
	}

	funcao logico validarValores(){

		//Validacao dos valores, retornando true or false para funcao principal
		se(quantidadeCombustivel < 0){
			escreva("\nA quantidade adicionada não pode ser igual ou menor a 0! ")
			retorne falso
		}
		senao se(quilometragem <0){
			escreva("\nA quilometragem percorrida não pode ser igual ou menor a 0! ")
			retorne falso
		}
		senao{	
			retorne verdadeiro
		}
	}
	funcao calcularConsumo(){

		//Calculo e exibição dos valores
		//Usando o arredondamento para 2 casas decimais
		real media = Matematica.arredondar(quilometragem / quantidadeCombustivel, 2)

		escreva("\nO consumo médio do seu veículo é: " + media + "Km/l")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 744; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */