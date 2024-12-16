Algoritmo sin_titulo
	
	// Se ingresa una lista de ternas (legajo, edad, sexo). El fin de los datos se indica ingresando
	// el legajo == -1. La computadora debe indicar
	// - si en la lista hay hombres de más de 90 años
	// - en caso afirmativo cuántos
	// - mostrar el legajo de la mujer más joven
	// - la edad promedio de los hombres
	
	Definir legajo, edad, edadMujerJoven, legajoMujerJoven, contadorHombre90, acumHombre, contadorHombre Como Entero;
	Definir sexo Como Caracter;
	
	edadMujerJoven = 120;
	
	Repetir
		Imprimir "Ingresar legajo: ";
		Leer legajo;
		
		Si legajo <> -1 Entonces
			Imprimir "Ingresar edad: ";
			Leer edad;
			
			Mientras edad < 18 o edad > 120 Hacer
				Imprimir "Ingrese una edad válida (18 a 120 años): ";
				Leer edad;
			FinMientras
			
			Imprimir "Sexo (M o F): ";
			Leer sexo;
			
			Mientras sexo <> "F" y sexo <> "M" Hacer
				Imprimir "Ingrese un sexo válido: ";
				Leer sexo;
			FinMientras
			
			Segun sexo Hacer
				"M":
					Si edad >= 90 Entonces
						contadorHombre90 = contadorHombre90 + 1;
						acumHombre = acumHombre + edad;
						contadorHombre = contadorHombre + 1;
					SiNo
						acumHombre = acumHombre + edad;
						contadorHombre = contadorHombre + 1;
					FinSi
				"F":
					Si edad < edadMujerJoven y sexo == "F" Entonces
						edadMujerJoven = edad;
						legajoMujerJoven = legajo;
					FinSi
			FinSegun
			
		FinSi
	
	Hasta Que legajo == -1; 
	
	Imprimir "Hombres de 90 años o más: ", contadorHombre90;
	Imprimir "Legajo mujer más joven: ", legajoMujerJoven, " con ", edadMujerJoven, " años";
	Si contadorHombre > 0 Entonces
		Imprimir "Edad promedio de los hombres: ", acumHombre/contadorHombre;
	FinSi
	
FinAlgoritmo
