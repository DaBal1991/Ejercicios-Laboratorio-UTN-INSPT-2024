Algoritmo sin_titulo
	
	// Se ingresa nombre, apellido y promedio de los 3 alumnos de un curso con el promedio más
	// alto obtenido. Mostrar el abanderado, primer escolta y segundo escolta.
	
	Definir nombreAl, apellidoAl Como Caracter;
	Definir nombreAb, nombrePri, nombreSeg, apellidoAb, apellidoPri, apellidoSeg Como Caracter;
	Definir promedioAb, promedioPri, promedioSeg, promedioAl como Real;
	Definir i Como Entero;
	
	Para i = 0 hasta 2 Hacer
		Imprimir "Ingresar nombre de alumno: ";
		Leer nombreAl;
		
		Imprimir "Ingresar apellido de alumno: ";
		Leer apellidoAl;
		
		Imprimir "Promedio de alumno: ";
		Leer promedioAl;
		
		Mientras promedioAl > 10 o promedioAl < 1 Hacer
			Imprimir "Ingrese un promedio valido entre 1 y 10: ";
			Leer promedioAl;
		FinMientras
		
		Si promedioAl >= promedioAb Entonces
			promedioSeg = promedioPri;
			nombreSeg = nombrePri;
			apellidoSeg = apellidoPri;
			
			promedioPri = promedioAb;
			nombrePri = nombreAb;
			apellidoPri = apellidoAb;
			
			promedioAb = promedioAl;
			nombreAb = nombreAl;
			apellidoAb = apellidoAl;
		SiNo
			Si promedioAl >= promedioPri Entonces
				promedioSeg = promedioPri;
				nombreSeg = nombrePri;
				apellidoSeg = apellidoPri;
				
				promedioPri = promedioAl;
				nombrePri = nombreAl;
				apellidoPri = apellidoAl;
			SiNo
				promedioSeg = promedioAl;
				nombreSeg = nombreAl;
				apellidoSeg = apellidoAl;
			FinSi
		FinSi
	FinPara
	
	Imprimir "Abanderado: ", apellidoAb, " ", nombreAb, " Promedio: ", promedioAb;
	Imprimir "Primer Escolta: ", apellidoPri, " ", nombrePri, " Promedio: ", promedioPri;
	Imprimir "Segunda Escolta: ", apellidoSeg, " ", nombreSeg, " Promedio: ", promedioSeg;
	
FinAlgoritmo
