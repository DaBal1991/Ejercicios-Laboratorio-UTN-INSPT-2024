Algoritmo sin_titulo
	
	//  Se lee un entero N y luego N número reales. Se emite el menor de ellos.
	
	Definir N, i Como Entero;
	Definir nReales, realMenor Como Real;
	
	Imprimir "Ingresar cantidad de N Reales: ";
	Leer N;
	
	Dimension nReales[N];
	
	llenarVector(nReales, N);
	
	realMenor = buscarMenor(nReales, N);
	
	Imprimir "Menor de todos los Reales es: ", realMenor;
	
FinAlgoritmo

Funcion llenarVector(nReales, N)
	
	Definir numReal como Real;
	Definir i Como Entero;
	
	Para i = 0 hasta N-1 Hacer
		Imprimir "Ingresar un número Real: ";
		Leer numReal;		
		
		nReales[i] = numReal;
	FinPara
	
FinFuncion

Funcion realMenor = buscarMenor(nReales, N)
	
	Definir realMenor como Real;
	Definir i Como Entero;
	
	realMenor = nReales[0];
	
	Para i = 0 Hasta N-1 Hacer
		Si nReales[i] < realMenor Entonces
			realMenor = nReales[i];
		FinSi
	FinPara
	
FinFuncion
	