Algoritmo sin_titulo
	
	//  Se ingresa un número natural N, seguido de N reales. Se emite el promedio de los números
	// positivos, el promedio de los números negativos y la cantidad de ceros.
	
	Definir N Como Entero;
	
	Imprimir "Ingrese la cantidad de números deseados: ";
	Leer N;
	
	emitirReales(N);
	
FinAlgoritmo

Funcion emitirReales(N)
	
	Definir i Como Entero;
	Definir R, acumNegativo, acumPositivo, contadorCero, contadorNeg, contadorPos como Real;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir "Ingrese un valor real: ";
		Leer R;
		
		Si R < 0 Entonces
			acumNegativo = acumNegativo + R;
			contadorNeg = contadorNeg + 1;
		SiNo
			Si R > 0 Entonces
				acumPositivo = acumPositivo + R;
				contadorPos = contadorPos + 1;
			sino
				contadorCero = contadorCero + 1;
			FinSi
		FinSi
	FinPara
	
	Si contadorNeg <> 0 Entonces
		Imprimir "Promedio Negativos: ", acumNegativo/contadorNeg;
	FinSi
	
	Si contadorPos <> 0 Entonces
		Imprimir "Promedio Positivos: ", acumPositivo/contadorPos;
	FinSi
	
	Si contadorCero <> 0 Entonces
		Imprimir "Cantidad de Ceros: ", contadorCero;
	FinSi
	
FinFuncion
	