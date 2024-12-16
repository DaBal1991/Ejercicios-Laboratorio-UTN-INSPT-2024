Algoritmo sin_titulo
	
	// Se ingresa un número no determinado de veces una terna formada por legajo (int), sexo
	// (carácter m o f), y edad. Se desea emitir
	// - el legajo de la mujer más joven
	// - el legajo del varón más viejo
	// - el promedio de edades de quienes tengan nombre con inicial 'j' o ?J?.
	
	Definir legajo, mujerLegajo, hombreLegajo Como Entero;
	Definir edad, hombreViejo, mujerJoven, contador Como Entero;
	Definir genero, inicial Como Caracter;
	Definir nombre como cadena;
	definir acum como real;
	
	mujerJoven = 999;
	
	Repetir
		Imprimir "Ingresar legajo: ";
		Leer legajo;
		
		Si legajo <> -1 Entonces
			Imprimir "Ingresar genero: ";
			Leer genero;
			
			Mientras genero <> "f" y genero <> "F" y genero <> "M" y genero <> "m" Hacer
				Imprimir "Ingresar un genero valido: ";
				Leer genero;
			FinMientras
			
			Imprimir "Ingresar edad: ";
			Leer edad;
			
			Si edad < mujerJoven y (genero == "f" o genero == "F")
				mujerJoven = edad;
				mujerLegajo = legajo;
			FinSi
			
			Si edad > hombreViejo y (genero == "M" o genero == "m")
				hombreViejo = edad;
				hombreLegajo = legajo;
			FinSi
			
			Imprimir "Ingresar nombre: ";
			Leer nombre;
			inicial = SubCadena(nombre,0,0);
			
			Si inicial == "J" o inicial == "j" Entonces
				contador = contador + 1;
				acum = acum + edad;
			FinSi
		FinSi
		
	Hasta Que legajo == -1; 
	
	Imprimir "Legajo Mujer Más Joven: ", mujerLegajo;
	Imprimir "Legajo Hombre Más Viejo: ", hombreLegajo;
	Si contador > 0 Entonces
		Imprimir "Promedio de edad de aquellos con nombre empezado en J: ", acum/contador;
	FinSi
	
FinAlgoritmo
