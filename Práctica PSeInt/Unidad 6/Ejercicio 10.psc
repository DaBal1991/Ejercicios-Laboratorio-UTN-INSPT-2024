Algoritmo sin_titulo
	
//	Queremos guardar los nombres y las edades de los alumnos de un curso. Realiza un
//	programa que introduzca el nombre y la edad de cada alumno. El proceso de lectura de
//	datos terminará cuando se introduzca como nombre un asterisco (*) Al finalizar se mostrará
//	los siguientes datos:
//	Los alumnos mayores de edad.
//	Todos los alumnos de mayor a menor edad.
	
	Definir edad, cant, i, j, edadAlumnos, aux Como Entero;
	Definir nombre, nomMayores, nomAlum, auxNom Como Cadena;
	
	Imprimir "Ingresar cantidad de alumnos: ";
	Leer cant;
	
	Dimension nomMayores[cant];
	Dimension nomAlum(cant];
	Dimension edadAlumnos[cant];
	
	Repetir
		
		Imprimir "Ingresar nombre: ";
		Leer nombre;
		
		Si nombre <> "*" o j == cant Entonces
			Imprimir "Ingresar edad: ";
			Leer edad;
			
			Si edad >= 18 Entonces
				nomMayores[i] = nombre;
				i = i + 1;
			FinSi
			
			nomAlum[j] = nombre;
			edadAlumnos[j] = edad;
			
			j = j + 1;
		FinSi
		
	Hasta Que nombre == "*" o j == cant; 
	
	Imprimir "Alumnos mayores de edad";
	Para i = 0 Hasta cant-1 Hacer
		Imprimir nomMayores[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
	Imprimir "Alumnos de mayor a menor";
	Para i = 0 Hasta cant-1 Hacer
		Para j = 0 Hasta cant-2 Hacer
			Si edadAlumnos[j] < edadAlumnos[j+1] Entonces
				aux = edadAlumnos[j];
				edadAlumnos[j] = edadAlumnos[j+1];
				edadAlumnos[j+1] = aux;
				
				auxNom = nomAlum[j];
				nomAlum[j] = nomAlum[j+1];
				nomAlum[j+1] = auxNom;
			FinSi
		FinPara
	FinPara
	
	Imprimir "Alumnos ordenados de mayor a menor";
	Para i = 0 Hasta cant-1 Hacer
		Imprimir nomAlum[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
	Para i = 0 Hasta cant-1 Hacer
		Imprimir edadAlumnos[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
FinAlgoritmo
