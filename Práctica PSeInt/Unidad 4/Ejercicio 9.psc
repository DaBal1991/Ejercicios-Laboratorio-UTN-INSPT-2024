Algoritmo sin_titulo
	
//	Calcular el número de pulsaciones que debe tener una persona por cada 10 segundos de
//	ejercicio aeróbico; la fórmula que se aplica cuando el sexo es femenino
//	es: num_pulsaciones = (220 - edad)/10 y si el sexo es masculino: num_pulsaciones =
//	(210 - edad)/10.
	
	Definir numPolsaciones como Real;
	Definir edad Como Entero;
	Definir genero Como Caracter;
	
	Imprimir "Ingresar edad: ";
	Leer edad;
	
	Imprimir "Ingresar genero (H o M): ";
	Leer genero;
	
	Segun genero hacer
		"H":
			Imprimir "Pulsaciones por cada 10 segs.: ", (210 - edad)/10;
		"M":
			Imprimir "Pulsaciones por cada 10 segs.: ", (220 - edad)/10;
		De Otro Modo:
			Imprimir "Género no válido...";
	FinSegun
	
FinAlgoritmo
