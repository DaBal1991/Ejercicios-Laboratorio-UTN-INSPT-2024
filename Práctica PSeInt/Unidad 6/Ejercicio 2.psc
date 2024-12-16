Algoritmo sin_titulo
	
//	Dado un vector cargado al azar llamado vec1 con 20 números, en forma aleatoria entre 50
//	y 375, se pide poder cargar un vector llamado vecPares con todos los números pares posibles
//	que se encuentren dentro del vector original vec1. Informar el vector original vec1. Informar
//	el vector vecPares.
	
	Definir i, contadorPares, j Como Entero;
	Definir vec1, vecPares Como Real;
	Dimension vec1[20];
	
	Para i = 0 Hasta 19 Hacer
		vec1[i] = Aleatorio(50,375);
		
		Si vec1[i] mod 2 == 0 Entonces
			contadorPares = contadorPares + 1;
		FinSi
	FinPara
	
	Dimension vecPares[contadorPares];
	
	j = 0;
	Para i = 0 Hasta 19 Hacer
		Si vec1[i] mod 2 == 0 Entonces
			vecPares[j] = vec1[i];
			j = j + 1;
		FinSi
	FinPara
	
	Imprimir "Vector base: ";
	Para i = 0 Hasta 19 Hacer
		Imprimir vec1[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
	Imprimir "Vector de pares: ";
	Para i = 0 Hasta contadorPares-1 Hacer
		Imprimir vecPares[i], " ", Sin Saltar;
	FinPara
FinAlgoritmo
