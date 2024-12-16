Algoritmo sin_titulo
	
//	En un juego de preguntas a las que se responde Si o No gana quien responda correctamente
//	las tres preguntas. Si se responde mal a cualquiera de ellas ya no se pregunta la siguiente y
//	termina el juego. Las preguntas son: 
//	"¿Colon descubrió América?"
//	"¿La independencia de México fue en el año 1810?"
//	"¿The Doors fue un grupo de rock Americano?"
	
	Definir bandera como Entero;
	Definir respuesta Como Caracter;
	
	
	bandera = 0;
	
	Mientras bandera <> 1 Hacer
		Imprimir "¿Colon descubrió América?";
		Leer respuesta;
		
		Si respuesta == "no" o respuesta == "No" Entonces
			bandera = 1;
			Imprimir "¡Perdiste!";
		SiNo
			Imprimir "¿La independencia de México fue en el año 1810?";
			Leer respuesta;
			
			Si respuesta == "si" o respuesta == "Si" Entonces
				bandera = 1;
				Imprimir "¡Perdiste!";
			SiNo
				Imprimir "¿The Doors fue un grupo de rock Americano?";
				Leer respuesta;
				
				Si respuesta == "no" o respuesta == "No" Entonces
					bandera = 1;
					Imprimir "¡Perdiste!";
				SiNo
					Imprimir "¡Ganaste!";
					bandera = 1;
				FinSi
			FinSi
		FinSi
	FinMientras
	
	
FinAlgoritmo
