Algoritmo sin_titulo
	
//	Se quiere realizar un programa que lea por teclado las 5 notas obtenidas por un alumno
//	(comprendidas entre 0 y 10). A continuación, debe mostrar todas las notas, la nota media, la
//	nota más alta que ha sacado y la menor.
	
	// Nota media? -> promedio? posicion media? distancia?
	
	Definir i como Entero;
	Definir nota, vecNotas, notaMedia, notaAlta, notaBaja como Real;
	Dimension vecNotas[5];
	
	notaBaja = 10;
	
	Para i = 0 Hasta 4 Hacer
		Imprimir "Ingresar nota: ";
		Leer nota;
		
		Mientras nota < 0 o nota > 10 Hacer
			Imprimir "Ingrese una nota de 0 a 10: ";
			Leer nota;
		FinMientras
		
		vecNotas[i] = nota;
		
		Si nota > notaAlta Entonces
			notaAlta = nota;
		FinSi
		
		Si nota < notaBaja Entonces
			notaBaja = nota;
		FinSi
		
		notaMedia = notaMedia + vecNotas[i];
	FinPara
	
	Imprimir "Nota alta: ", notaAlta;
	Imprimir "Nota baja: ", notaBaja;
	Imprimir "Nota media (promedio): ", notaMedia/5;
	Imprimir "Nota media (posicion): ", vecNotas[2];
	
FinAlgoritmo
