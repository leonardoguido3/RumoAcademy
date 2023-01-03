programa
{	
	inclua biblioteca Matematica

	real quantidadeAbastecida= 0.0, consumoMedio= 0.0
	
	funcao inicio()
	{
		//Funcao para capturar os valores das variaveis
		capturaValores()

		//Validacao dos valores para a execução do cálculo de distancia
		logico validado = validarValores()
		
		se(validado == falso){
			retorne
		}
		
		//Funcao para calcular os valores passados
		calcularConsumo()	
	}

	funcao capturaValores(){
		escreva("==================================\n")
		escreva("====== CALCULO DE DISTANCIA ======\n")
		escreva("==================================\n")
		escreva("\nQual a quantidade de combustivel adicionada no veículo? (litros): ")
		leia(quantidadeAbastecida)
		escreva("\nQual o consumo médio do seu veículo? (Km/h): ")
		leia(consumoMedio)
	}

	funcao logico validarValores(){

		//Validacao dos valores, retornando true or false e retornando para funcao principal
		se(quantidadeAbastecida < 0){
			escreva("\nA quantidade adicionada não pode ser igual ou menor a 0! ")
			retorne falso
		}
		senao se(consumoMedio <0){
			escreva("\nO consumo médio deve ser maior que 0! ")
			retorne falso
		}
		senao{	
			retorne verdadeiro
		}
	}
	funcao calcularConsumo(){

		//Calculo e exibição dos valores solicitados
		//Usando o arredondamento para 2 casas decimais
		real total = Matematica.arredondar(consumoMedio * quantidadeAbastecida, 2)

		escreva("\nA distancia máxima que seu veiculo pode percorrer é: " + total + "Km")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 898; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */