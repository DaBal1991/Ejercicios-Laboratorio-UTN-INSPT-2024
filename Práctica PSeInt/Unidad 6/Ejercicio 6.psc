Algoritmo sin_titulo
	
//	Escribir un programa que declare un vector de diez elementos enteros y pida números
//	para rellenarlo hasta que se llene el vector o se introduzca un número negativo. Entonces se
//	debe imprimir el vector (sólo los elementos introducidos).
	
	Definir i, vector, num como entero;
	Dimension vector[10];
	
	Repetir
		Imprimir i;
		Imprimir "Ingresar número: ";
		Leer num;
		
		Si num > 0 Entonces
			vector[i] = num;
			i = i + 1;
		FinSi
			
	Hasta Que i == 10 o num < 0 
	
	Para i = 0 Hasta 9 Hacer
		Si vector[i] <> 0 Entonces
			Imprimir i,") ", vector[i], " ", Sin Saltar;
		FinSi
	FinPara
	Imprimir " ";
	
FinAlgoritmo
