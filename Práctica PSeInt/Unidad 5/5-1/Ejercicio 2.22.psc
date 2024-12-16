Algoritmo sin_titulo
	
	// Se ingresa nombre del alumno, y curso (todo ordenado por curso), también se ingresa el
	// promedio general obtenido por cada alumno. Los cursos se ingresan ordenados, cuando se
	// ingresan los datos correspondientes a 4to año y por ser fin del año lectivo se pide informar apellidos
	// del futuro abanderado y de los escoltas. Finaliza el ingreso de datos cuando aparece un curso
	// igual a 0.
	
	Definir nombreAlumno, apellidoAlumno como Cadena;
	Definir promedioGral Como Real;
	Definir curso Como Entero;
	
	Repetir
		curso = menuIngreso(nombreAlumno, apellidoAlumno, promedioGral);
	Hasta Que curso == 0; 
	
FinAlgoritmo

Funcion curso = menuIngreso(nombreAlumno, apellidoAlumno, promedioGral)
	
	Definir curso, N Como Entero;
	
	Imprimir "Ingrese el curso: ";
	Leer curso;
	
	Segun curso Hacer
		1:
			ingresarAlumnos(nombreAlumno, apellidoAlumno, promedioGral, curso);
		2:
			ingresarAlumnos(nombreAlumno, apellidoAlumno, promedioGral, curso);
		3:
			ingresarAlumnos(nombreAlumno, apellidoAlumno, promedioGral, curso);
		4:
			ingresarAlumnos(nombreAlumno, apellidoAlumno, promedioGral, curso);
		0:
			Imprimir "Saliendo...";
		De otro modo:
			Mientras curso < 0 o curso > 4 Hacer
				Imprimir "Ingrese un curso válido: ";
				Leer curso;
			FinMientras
	FinSegun
	
FinFuncion

Funcion ingresarAlumnos(nombreAlumno, apellidoAlumno, promedioGral, curso)
	
	Definir N, i Como Entero;
	Definir nombreAb, apellidoAb, nombreEscol, apellidoEscol, nombreSeg, apellidoSeg como Cadena;
	Definir promedioAb, promedioEscol, promedioSeg Como Real;
	
	Imprimir "Ingresar cantidad de alumnos: ";
	Leer N;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir "Ingresar nombre del alumno: ";
		Leer nombreAlumno;
		
		Imprimir "Ingresar apellido del alumno: ";
		Leer apellidoAlumno;
		
		Imprimir "Ingresar promedio general: ";
		Leer promedioGral;
		
		Mientras promedioGral > 10 o promedioGral < 1 hacer
			Imprimir "Ingresar promedio general válido: ";
			Leer promedioGral;
		FinMientras
		
		Si curso == 4 Entonces
			Si promedioGral > promedioAb Entonces
				nombreSeg = nombreEscol;
				nombreEscol = nombreAb;
				nombreAb = nombreAlumno;
				
				apellidoSeg = apellidoEscol;
				apellidoEscol = apellidoAb;
				apellidoAb = apellidoAlumno;
				
				promedioSeg = promedioEscol;
				promedioEscol = promedioAb;
				promedioAb = promedioGral;
			SiNo
				Si promedioGral > promedioEscol Entonces
					nombreSeg = nombreEscol;
					nombreEscol = nombreAlumno;
					
					apellidoSeg = apellidoEscol;
					apellidoEscol = apellidoAlumno;
					
					promedioSeg = promedioEscol;
					promedioEscol = promedioGral;
				SiNo
					Si promedioGral > promedioSeg Entonces
						nombreSeg = nombreAlumno;
						apellidoSeg = apellidoAlumno;
						promedioSeg = promedioGral;
					FinSi
				FinSi
			FinSi
		FinSi
	FinPara
	
	Si curso == 4 Entonces
		Imprimir "Abanderado: ", apellidoAb, " ", nombreAb, " Promedio: ", promedioAb;
		Imprimir "1° Escolta: ", apellidoEscol, " ", nombreEscol, " Promedio: ", promedioEscol;
		Imprimir "2° Escolta: ", apellidoSeg, " ", nombreSeg, " Promedio: ", promedioSeg;
	FinSi
	
FinFuncion
	