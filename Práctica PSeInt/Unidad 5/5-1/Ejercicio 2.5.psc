Algoritmo sin_titulo
	
	// Se leen N números; se emite su promedio.
	
	Definir vectorNum como Real;
	Definir N Como Entero;
	
	Imprimir "Ingresar cantidad de números: ";
	Leer N;
	
	Dimension vectorNum[N];
	
	llenarVector(vectorNum, N);
	Imprimir "Promedio: ", calcularPromedio(vectorNum, N);
	
FinAlgoritmo

Funcion llenarVector(vectorNum, N)
	
	Definir i Como Entero;
	
	Para i = 0 hasta N-1 Hacer
		Imprimir i+1,") Ingresar un valor : ";
		Leer vectorNum[i];
	FinPara
	
FinFuncion

Funcion prom = calcularPromedio(vectorNum,N)
	
	Definir i Como Entero;
	Definir acum, prom como Real;
	
	Para i = 0 Hasta N-1 Hacer
		acum = acum + vectorNum[i];
	FinPara
	
	prom = acum/N;
	
FinFuncion
	