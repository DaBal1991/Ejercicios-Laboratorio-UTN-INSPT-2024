Algoritmo sin_titulo
	
	// En un locutorio se realizan 3 tipos de llamadas. 1- local, se abona $0,50 por minuto. 2-
	// urbana, se abona $4 los primeros 3 minutos y $2 cada minuto adicional. 3-interurbana, se ingresa
	// una tarifa T1 para los primeros 3 minutos y una tarifa T2 para cada minuto adicional (t1 y t2
	// dependen del país de destino). La duración de la llamada es un número entero. Se ingresa tipo de
	// llamada y duración, se dese informar: Tipo de llamada, duración e importe a abonar. Al cambiar el
	// turno se ingresa F y se emite el importe total recaudado.
	
	Definir tipoLlamada Como Caracter;
	Definir acum como Real;
	
	Repetir
		tipoLlamada = menu();
		acum = calcularLlamada(tipoLlamada, acum);
	Hasta Que tipoLlamada == "F"
	
FinAlgoritmo

Funcion op = menu
	
	Definir op Como Caracter;
	
	Imprimir "1 - Local";
	Imprimir "2 - Urbana";
	Imprimir "3 - Interurbana";
	Imprimir "Ingresar el tipo de llamada: ";
	Leer op;
	
	Mientras op <> "1" y op <> "2" y op <> "3" y op <> "F" Hacer
		Imprimir "Ingrese una opción válida: ";
		Leer op;
	FinMientras
	
FinFuncion

Funcion acum = calcularLlamada(tipoLlamada, acum)
	
	Definir local, urbana, interurbana como Real;
	
	Segun tipoLlamada Hacer
		"1":
			local = calculoLocal();
			acum = acum + local;
		"2":
			urbana = calculoUrbana();
			acum = acum + urbana;
		"3":
			interurbana = calculoInterurbana();
			acum = acum + interurbana;
		"F":
			Imprimir "Fin de turno...";
			Imprimir "Importe Total Recaudado: $", acum;
	FinSegun
	
FinFuncion

Funcion local = calculoLocal
	
	Definir local como Real;
	Definir minutos como Entero;
	
	Imprimir "Ingresar cantidad de minutos: ";
	Leer minutos;
	
	local = minutos*0.5;
	
	Imprimir "Llamada Local";
	Imprimir "Duración: ", minutos, " minutos";
	Imprimir "Importe: $", local;
	
FinFuncion

Funcion urbana = calculoUrbana
	
	Definir urbana como Real;
	Definir minutos como Entero;
	
	Imprimir "Ingresar cantidad de minutos: ";
	Leer minutos;
	
	urbana = ((minutos - 3)*2) + 3*4;
	
	Imprimir "Llamada Urbana";
	Imprimir "Duración: ", minutos, " minutos";
	Imprimir "Importe: $", urbana;
		
FinFuncion

Funcion interurbana = calculoInterurbana
	
	Definir interurbana, T1, T2 como Real;
	Definir minutos como Entero;
	
	Imprimir "Ingresar cantidad de minutos: ";
	Leer minutos;
	
	Imprimir "Ingresar T1 para primeros tres minutos: ";
	Leer T1;
	
	Imprimir "Ingresar T2 para minutos adicionales: ";
	Leer T2;
	
	interurbana = ((minutos-3)*T2) + 3*T1;
	
	Imprimir "Llamada Interurbana";
	Imprimir "Duración: ", minutos, " minutos";
	Imprimir "Importe: $", interurbana;
	
FinFuncion
	