Algoritmo sin_titulo
	
	// Se ingresa número n y a continuación n enteros de 3 cifras, informar que porcentaje de ellos
	// son capicúas.
	
	Definir N Como Entero;
	Definir vectorNum Como Real;
	
	Imprimir "Ingresar cantidad de números: ";
	Leer N;
	
	Dimension vectorNum[N];
	
	llenarVector(vectorNum, N);
	chequearCapicuas(vectorNum, N);
	
FinAlgoritmo

Funcion llenarVector(vecNum, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir "Ingresar valor: ";
		Leer vecNum[i];
		
		Mientras vecNum[i] < 100 o vecNum[i] > 999 Hacer
			Imprimir "Ingresar un valor de tres cifras...";
			Leer vecNum[i];
		FinMientras
		
	FinPara
	
FinFuncion

Funcion chequearCapicuas(vecNum, N)
	
	Definir i Como Entero;
	Definir centena, unidad, contadorCapicua Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		
		centena = trunc(vecNum[i]/100);
		unidad = (vecNum[i] mod 100) mod 10;
		
		Si centena == unidad Entonces
			contadorCapicua = contadorCapicua + 1;
		FinSi
		
	FinPara
	
	Imprimir "Porcentaje de Capicuas: ", (contadorCapicua*100/N), "%";
	
	
FinFuncion
	