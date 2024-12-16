Algoritmo sin_titulo
	
	Definir vec, N Como Entero;
	N = 10;
	Dimension vec[N];
	
	cargarVector(vec, N);
	mostrarVector(vec, N);
	
	
FinAlgoritmo

Funcion cargarVector(vec, N)
	
	Definir i, j Como Entero;
	Definir num Como Entero;
	Definir bandera Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		para j = 0 Hasta N-1 Hacer
			num = Aleatorio(1, 12);
			bandera = VerificaDigito(vec, num, N);
			Si bandera == 0 Entonces
				vec[j] = num;
			FinSi
		FinPara
	FinPara
	
//	Para i = 0 Hasta N-1 Hacer
//		Repetir
//			num = Aleatorio(1, 12);
//			bandera = VerificaDigito(vec, num, N);
//		Hasta Que bandera == 0; 
//		vec[i] = num;
//	FinPara
	
FinFuncion

Funcion bandera = VerificaDigito(vec, num, N)
	
	Definir i, bandera, contador Como Entero;
	contador = 0;
	bandera = 0;
	
	Para i = 0 Hasta N-1 Hacer
		Si num == vec[i] Entonces
			contador = contador + 1;
//			Imprimir "cont", contador;
		FinSi
	FinPara
	
	Si contador > 0 Entonces
		bandera = 1;
	SiNo
		bandera = 0;
	FinSi

FinFuncion

Funcion mostrarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir vec[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
FinFuncion
	