Algoritmo sin_titulo
	
	// Ingrese tres números correspondientes a un conjunto y tres números correspondientes a
	// otro conjunto. Muestre los números que corresponden a la intersección de los dos
	// conjuntos.
	
	Definir a1, a2, a3, b1, b2, b3 como Real;
	
	Imprimir "Primer conjunto";
	Imprimir "Ingresar valor del primer conjunto: ";
	Leer a1;
		
	Imprimir "Ingresar valor del primer conjunto: ";
	Leer a2;
	
	Imprimir "Ingresar valor del primer conjunto: ";
	Leer a3;
	
	Imprimir "Segundo conjunto";
	Imprimir "Ingresar valor del segundo conjunto: ";
	Leer b1;
	
	Imprimir "Ingresar valor del segundo conjunto: ";
	Leer b2;
	
	Imprimir "Ingresar valor del segundo conjunto: ";
	Leer b3;
	
	Imprimir "Conjunto A: ", a1, ", ", a2, ", ", a3;
	Imprimir "Conjunto B: ", b1, ", ", b2, ", ", b3;
	
	Si (a1 = b1) Entonces
		Imprimir "Interseccion entre A1 = ", a1, " y B1 = ", b1;
	SiNo
		Si (a1 = b2) Entonces
			Imprimir "Interseccion entre A1 = ", a1, " y B2 = ", b2;
		SiNo
			Si (a1 = b3) Entonces
				Imprimir "Interseccion entre A1 = ", a1, " y B3 = ", b3;
			FinSi
		FinSi
	FinSi
	
	Si (a2 = b1) Entonces
		Imprimir "Interseccion entre A2 = ", a2, " y B1 = ", b1;
	SiNo
		Si (a2 = b2) Entonces
			Imprimir "Interseccion entre A2 = ", a2, " y B2 = ", b2;
		SiNo
			Si (a2 = b3) Entonces
				Imprimir "Interseccion entre A2 = ", a2, " y B3 = ", b3;
			FinSi
		FinSi
	FinSi
	
	Si (a3 = b1) Entonces
		Imprimir "Interseccion entre A3 = ", a3, " y B1 = ", b1;
	SiNo
		Si (a3 = b2) Entonces
			Imprimir "Interseccion entre A3 = ", a3, " y B2 = ", b2;
		SiNo
			Si (a3 = b3) Entonces
				Imprimir "Interseccion entre A3 = ", a3, " y B3 = ", b3;
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo
