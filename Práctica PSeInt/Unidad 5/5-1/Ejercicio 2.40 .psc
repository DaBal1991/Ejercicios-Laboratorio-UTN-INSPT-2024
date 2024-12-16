Algoritmo sin_titulo
	
	// Se lee un número N y luego N grupos de 5 números reales. Se desea conocer la posición
	// del grupo de 5 números cuya suma fue mayor. Emitir ese resultado.
	
	Definir N, i, j Como Entero;
	Definir vecSuma como Real;
	
	Imprimir "Ingresar cantidad de grupos de cinco valores reales: ";
	Leer N;
	
	Dimension vecSuma[N];
	
	llenarVector(vecSuma, N);
	mostrarVector(vecSuma, N);
	buscarMayor(vecSuma, N);
	
FinAlgoritmo

Funcion llenarVector(vec, N)
	
	Definir i, j Como Entero;
	Definir acum Como Real;
	
	Para i = 0 hasta N-1 Hacer
		Para j = 0 hasta 4 Hacer
			acum = acum + Aleatorio(1,100);
		FinPara
		vec[i] = acum;
		acum = 0;
	FinPara
	
FinFuncion

Funcion mostrarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir vec[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
FinFuncion

Funcion buscarMayor(vec, N)
	
	Definir i Como Entero;
	Definir resultado, posMayor Como Real;
	
	Para i = 0 Hasta N-1 Hacer
		Si vec[i] > resultado Entonces
			resultado = vec[i];
			posMayor = i + 1;
		FinSi
	FinPara
	
	Imprimir "Grupo cuya suma es mayor es el: ", posMayor, " con el valor de ", resultado;
	
FinFuncion
	