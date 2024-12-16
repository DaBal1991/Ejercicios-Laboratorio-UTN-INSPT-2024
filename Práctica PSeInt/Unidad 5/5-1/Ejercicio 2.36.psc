Algoritmo sin_titulo
	
	// Se ingresa una lista de ternas (legajo, edad, sexo). El fin de los datos se indica ingresando
	// el legajo == -1. La computadora debe indicar
	// - si en la lista hay hombres de m�s de 90 a�os
	// - en caso afirmativo cu�ntos
	// - mostrar el legajo de la mujer m�s joven
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
				Imprimir "Ingrese una edad v�lida (18 a 120 a�os): ";
				Leer edad;
			FinMientras
			
			Imprimir "Sexo (M o F): ";
			Leer sexo;
			
			Mientras sexo <> "F" y sexo <> "M" Hacer
				Imprimir "Ingrese un sexo v�lido: ";
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
	
	Imprimir "Hombres de 90 a�os o m�s: ", contadorHombre90;
	Imprimir "Legajo mujer m�s joven: ", legajoMujerJoven, " con ", edadMujerJoven, " a�os";
	Si contadorHombre > 0 Entonces
		Imprimir "Edad promedio de los hombres: ", acumHombre/contadorHombre;
	FinSi
	
FinAlgoritmo
