Algoritmo sin_titulo
	
	// Se ingresan, para cada alumno de un curso, su número de legajo y las seis notas
	// correspondientes a las materias rendidas en el año. Para finalizar, se ingresa el número de
	// legajo 0.
	// La computadora debe emitir los números de legajo de los tres alumnos con el mejor promedio. Si
	// hay más de tres alumnos con el mismo promedio máximo, debe emitir un mensaje.
	
	Definir legajo, i, legajoUno, legajoDos, legajoTres Como Entero;
	Definir acum, promedio, mejorUno, mejorDos, mejorTres, nota como Real;
	
	Repetir
		acum = 0;
		promedio = 0;
		
		Imprimir "Ingresar legajo: ";
		Leer legajo;
		
		Si legajo <> 0 Entonces
			Para i = 0 hasta 5 Hacer
				Imprimir "Ingresar notas: ";
				Leer nota;
				
				acum = acum + nota;
			FinPara
			
			promedio = acum/6;
			
			Imprimir "Legajo: ", legajo;
			Imprimir "Promedio: ", promedio;
			
			Si promedio > mejorUno Entonces
				mejorTres = mejorDos;
				mejorDos = mejorUno;
				mejorUno = promedio;
				
				legajoTres = legajoDos;
				legajoDos = legajoUno;
				legajoUno = legajo;
			SiNo
				Si promedio > mejorDos Entonces
					mejorTres = mejorDos;
					mejorDos = promedio;
					
					legajoTres = legajoDos;
					legajoDos = legajo;
				SiNo
					Si promedio > mejorTres Entonces
						mejorTres = promedio;
						legajoTres = legajo;
					FinSi
				FinSi
			FinSi
		FinSi
	Hasta Que legajo == 0; 
	
	Imprimir "Primer puesto: ", legajoUno, ". Promedio: ", mejorUno;
	Imprimir "Segundo puesto: ", legajoDos, ". Promedio: ", mejorDos;
	Imprimir "Tercer puesto: ", legajoTres, ". Promedio: ", mejorTres;
	
FinAlgoritmo
