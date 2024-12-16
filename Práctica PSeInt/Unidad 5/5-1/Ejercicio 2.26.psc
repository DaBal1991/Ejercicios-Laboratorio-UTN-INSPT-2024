Algoritmo sin_titulo
	
	// Se lee un valor n seguido de n valores, se pide informar el primer y segundo valor más alto
	// ingresado.
	
	Definir vec, N Como Entero;
	
	Imprimir "Ingresar cantidad de valores: ";
	Leer N;
	
	Dimension vec[N];
	
	llenarVector(vec, N);
	mostrarVector(vec, N);
	dosMayores(vec, N);
	
FinAlgoritmo

Funcion llenarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir "Ingresar valor: ";
		Leer vec[i];
	FinPara
	
FinFuncion

Funcion mostrarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir vec[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
FinFuncion

Funcion dosMayores(vec, N)
	
	Definir i, primerMayor, segundoMayor Como Entero;
	
	primerMayor = vec[0];
	
	Para i = 0 Hasta N-1 Hacer
		Si vec[i] > primerMayor Entonces
			segundoMayor = primerMayor;
			primerMayor = vec[i];
		SiNo
			Si vec[i] > segundoMayor y vec[i] < primerMayor Entonces
				segundoMayor = vec[i];
			FinSi
		FinSi
	FinPara
	
	Imprimir "Primer valor mas alto: ", primerMayor;
	Imprimir "Segundo valor mas alto: ", segundoMayor;
	
FinFuncion
	