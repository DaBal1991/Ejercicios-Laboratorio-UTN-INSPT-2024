Algoritmo sin_titulo
	
	// Se lee un número no determinado de veces estos datos: legajo, edad (entero), sueldo (real),
	// sexo (carácter M o F). El fin de datos se indica con legajo -1. Se quiere determinar:
	// - promedio de edad de los hombres.
	// - legajo de la mujer que cobre el mayor sueldo, y valor del sueldo
	// - cuántos juegos de datos fueron procesados
	
	Definir legajo, edad, contadorLegajos, contadorHombres, mejorLegajoMujer, contador Como Entero;
	Definir sueldo, promedioEdad, mejorSueldoMujer, acumEdad Como Real;
	Definir sexo Como Caracter;
	
	Repetir
		Imprimir "Ingresar legajo: ";
		Leer legajo;
		
		Si legajo > 0 Entonces
			contador = contador + 1;
			
			Imprimir "Ingresar edad: ";
			Leer edad;
			
			Imprimir "Ingresar sueldo: ";
			Leer sueldo;
			
			Imprimir "Ingresar sexo: ";
			Leer sexo;
			
			Mientras sexo <> "F" y sexo <> "M" Hacer
				Imprimir "Ingresar un sexo válido: ";
				Leer sexo;
			FinMientras
			
			Segun sexo Hacer
				"M":
					contadorHombres = contadorHombres + 1;
					acumEdad = acumEdad + edad;
				"F":
					Si sueldo > mejorSueldoMujer Entonces
						mejorSueldoMujer = sueldo;
						mejorLegajoMujer = legajo;
					FinSi
			FinSegun
		FinSi
	Hasta Que legajo == -1;
	
	Si contadorHombres > 0 Entonces
		Imprimir "Promedio edad de hombres: ", acumEdad/contadorHombres;
	FinSi
	Imprimir "Mejor sueldo de mujer: $", mejorSueldoMujer, " percibido por: ", mejorLegajomujer;
	Imprimir "Cantidad de juegos de datos procesados: ", contador;
	
FinAlgoritmo
