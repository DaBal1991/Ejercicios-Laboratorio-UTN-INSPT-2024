Algoritmo sin_titulo
	
	//  Se ingresa un número natural N, seguido de N números. La computadora muestra el valor
	// de los dos mayores. Si todos los números fueron iguales, emitir un mensaje
	
	Definir N, vecNum como Real;
	
	Imprimir "Ingresar cantidad de números: ";
	Leer N;
	
	Dimension vecNum[N];
	
	llenarVector(vecNum, N);
	mostrarVector(vecNum, N);
	buscarMayores(vecNum, N);
	
FinAlgoritmo

Funcion llenarVector(vectorNum, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir "Ingresar valores: ";
		Leer vectorNum[i];
	FinPara
	
FinFuncion

Funcion buscarMayores(vectorNum, N)
	
	Definir i como Entero;
	Definir primerMayor, segundoMayor, iguales, aux, bandera Como Real;
	
	primerMayor = vectorNum[0];
	
	Para i = 0 Hasta N-1 Hacer
		Si vectorNum[i] > primerMayor Entonces
			aux = primerMayor;
			primerMayor = vectorNum[i];
			
			Si aux > segundoMayor Entonces
				segundoMayor = aux;
			FinSi
		FinSi
	FinPara
	
	iguales = buscarIguales(vectorNum,N);
	
	Si iguales <> 1 Entonces
		Imprimir "Primer mayor: ", primerMayor;
		Imprimir "Segundo mayor: ", segundoMayor;
	SiNo
		Imprimir "Son iguales";
	FinSi
	
FinFuncion

Funcion mostrarVector(vectorNum, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir i+1, ") ", vectorNum[i];
	FinPara
	
FinFuncion

Funcion iguales = buscarIguales(vectorNum, N)
	
	Definir i, iguales Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Si vectorNum[i] == vectorNum[0] Entonces
			iguales = 1;
		SiNo
			iguales = 0;
		FinSi
	FinPara
FinFuncion
	