Algoritmo sin_titulo
	
//	Un club cobra de acuerdo a la siguiente tabla: 
//	C�digo|Categor�a |Cuota
//	I|Infantiles|$800
//	C|Cadetes|$1000
//	J|Juvenil|$1200
//	A|Adulto|$90
//	Dise�ar un algoritmo que solicite el c�digo de la categor�a e informe su nombre y el valor de la cuota.
	
	Definir categoria como Caracter;
	
	Repetir
		categoria = menuEjercicioUno();
	hasta que categoria = "S";
	
FinAlgoritmo

Funcion categoria = menuEjercicioUno
	
	Definir categoria Como Caracter;
	
	Imprimir "Ingresar categoria: ";
	Leer categoria;
	
	Segun categoria Hacer
		"I":
			Imprimir "Infantiles. Cuota: $800";
		"C":
			Imprimir "Cadetes. Cuota: $1000";
		"J":
			Imprimir "Juvenil. Cuota: 1200";
		"A":
			Imprimir "Adulto. Cuota $90";
		"S":
			Imprimir "Saliendo...";
		De Otro Modo:
			Imprimir "Categor�a inv�lida...";
	FinSegun
	
FinFuncion