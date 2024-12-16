Algoritmo sin_titulo
	
//	Crear un vector de 5 elementos de cadenas de caracteres, inicializa el vector con datos
//	leídos por el teclado. Copia los elementos del vector en otro vector, pero en orden inverso, y
//	lo muestre por pantalla.
	
	Definir i, j Como Entero;
	Definir palabra, vecUno, vecDos como Cadena;
	Dimension vecUno[5], vecDos[5];
	
	Para i = 0 Hasta 4 Hacer
		Imprimir "Ingresar una cadena: ";
		Leer palabra;
		vecUno[i] = palabra;
	FinPara
	
	j = 4;
	Para i = 0 Hasta 4 Hacer
		vecDos[j] = vecUno[i];
		j = j - 1;
	FinPara
	
	Imprimir "Vector Original: ";
	Para i = 0 Hasta 4 Hacer
		Imprimir vecUno[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
	Imprimir "Vector Invertido: ";
	Para i = 0 Hasta 4 Hacer
		Imprimir vecDos[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
	
FinAlgoritmo
