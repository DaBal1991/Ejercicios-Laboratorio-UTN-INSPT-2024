Algoritmo sin_titulo
	
//	Hacer un programa, que inicialmente cargue 2 vectores de 10 posiciones con números al
//	azar entre 1 y 20, y puedan mostrarlos. Luego calcule la sumatoria de los productos, de cada
//	elemento del vector, para ello existen restricciones, que son las siguientes para llevar a cabo
//	esta sumatoria de producto, los 2 valores de cada vector deben ser pares. Por ultimo
//	informar el resultado.
	
	Definir i, vectorUno, vectorDos Como Entero;
	Definir producto, sumatoria Como Real;
	Dimension vectorUno[10], vectorDos[10];
	
	llenarVector(vectorUno, 10);
	llenarVector(vectorDos, 10);
	
	Imprimir "Vector Uno: ";
	mostrarVector(vectorUno, 10);
	
	Imprimir "Vector Dos: ";
	mostrarVector(vectorDos, 10);
	
	Para i = 0 Hasta 9 Hacer
		Si vectorUno[i] mod 2 == 0 y vectorDos[i] mod 2 == 0 Entonces
			producto = vectorUno[i]*vectorDos[i];
			sumatoria = sumatoria + producto;
		FinSi
	FinPara
	
	Imprimir "Resultado: ", sumatoria;
	
FinAlgoritmo

Funcion llenarVector(vec, N) 
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		vec[i] = Aleatorio(1,20);
	FinPara
	
FinFuncion

Funcion mostrarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir vec[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
FinFuncion
	