Algoritmo sin_titulo
	
//	Ayude a un estudiante de electrónica básica a determinar el resultado de la compuerta lógica
//	AND y una NOR. Los valores lógicos que requiere ingresarse o mostrarse son las letras (v , f ) o sus
//	mayúsculas. Si usuario se equivoca al brindar entradas, el algoritmo le informa el error
//	apropiadamente y finaliza.
	
	Definir cUno, cDos Como Caracter;
	
	Imprimir "Ingresar V o F";
	
	Imprimir "Compuerta Uno: ";
	Leer cUno;
	
	Mientras cUno <> "F" y cUno <> "V" y cUno <> "f" y cUno <> "v" Hacer
		Imprimir "Error. Ingrese V o F: ";
		Leer cUno;
	FinMientras
	
	Imprimir "Compuerta Dos: ";
	Leer cDos;
	
	Mientras cDos <> "F" y cDos <> "V" y cDos <> "f" y cDos <> "v" Hacer
		Imprimir "Error. Ingrese V o F: ";
		Leer cDos;
	FinMientras
	
	Imprimir "Compuerta AND: ";
	Si (cUno == "V" y cDos == "V") o (cUno == "v" y cDos == "v")  Entonces
		Imprimir "Verdadero.";
	SiNo
		Si (cUno == "V" y cDos == "F") o (cUno ==  "v" y cDos == "f") Entonces
			Imprimir "Falso.";
		SiNo
			Imprimir "Falso";
		FinSi
	FinSi
	
	Imprimir "Compuerta NOR: ";
	Si (cUno == "F" y cDos == "F") o (cUno == "f" y cDos == "f") Entonces
		Imprimir "Verdadero.";
	SiNo
		Si (cUno == "V" y cDos == "F") o (cUno == "v" y cDos == "f") Entonces
			Imprimir "Falso.";
		SiNo
			Imprimir "Falso";
		FinSi
	FinSi
	
FinAlgoritmo
