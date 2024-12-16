Algoritmo sin_titulo
	
//	Hacer un programa que inicialice un vector de números con valores aleatorios, y posterior
//	ordene los elementos de menor a mayor.
	
	Definir num, vector, aux como Real;
	Definir i, j, N Como Entero;
	N = 10;
	Dimension vector[N];
	
	Para i = 0 Hasta N-1 Hacer
		vector[i] = Aleatorio(1,100);
	FinPara
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir vector[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
	Para i = 0 Hasta N-1 Hacer
		Para j = 0 Hasta N-2 Hacer
			Si vector[j] > vector[j+1] Entonces
				aux = vector[j];
				vector[j] = vector[j+1];
				vector[j+1] = aux;
			FinSi
		FinPara
	FinPara
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir vector[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
FinAlgoritmo
