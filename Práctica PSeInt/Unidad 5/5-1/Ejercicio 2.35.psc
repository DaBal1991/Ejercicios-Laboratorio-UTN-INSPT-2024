Algoritmo sin_titulo
	
	// Se ingresa una lista de ternas (legajo, curso, nota). El fin de los datos se indica ingresando
	//	el legajo ==-1. La computadora debe mostrar
	// - el legajo del alumno de menor nota
	// - el promedio de los alumnos que obtuvieron notas entre 4 y 7 (inclusive)
	// - el legajo del alumno que aparecería último si la lista estuviera ordenada por legajo y su curso.
	
	Definir legajo, curso, contador, ultimoCurso, ultimoLegajo, legajoMenor Como Entero;
	Definir nota, acum, menorNota, promedio como Real;
	
	menorNota = 10;
	
	Repetir
		
		Imprimir "Ingresar legajo: ";
		Leer legajo;
		
		Si legajo <> -1 Entonces
			Imprimir "Ingresar curso: ";
			Leer curso;
			
			Si curso > ultimoCurso Entonces
				ultimoCurso = curso;
				ultimoLegajo = legajo;
			FinSi
			
			Imprimir "Ingresar nota: ";
			Leer nota;
			
			Si nota < menorNota Entonces
				menorNota = nota;
				legajoMenor = legajo;
			FinSi
			
			Mientras nota > 10 o nota < 1 Hacer
				Imprimir "Ingrese nota entre 1 y 10: ";
				Leer nota;
			FinMientras
			
			Si nota >= 4 y nota <= 7 Entonces
				contador = contador + 1;
				acum = acum + nota;
			FinSi
		FinSi
	Hasta Que legajo == -1; 
	
	promedio =  acum/contador;
	
	Imprimir "Alumno con menos nota: ", legajoMenor;
	Si contador > 0 Entonces
		Imprimir "Promedio  de alumnos con nota entre 4 y 7: ", promedio;
	FinSi
	Imprimir "Ultimo legajo: ", ultimoLegajo, " del curso ", ultimoCurso;

	
FinAlgoritmo
