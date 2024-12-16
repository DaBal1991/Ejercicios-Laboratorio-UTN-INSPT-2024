Algoritmo sin_titulo
	
	// Dados tres numero A, B y C ordenarlos de mayor a menor de modo que el mayor
	// queda en A el menor queda en C y el restante en B. Imprimir A, B, C.
	
	Definir A, B, C, aux como Real;
	
	A = ingresarValorReal;
	B = ingresarValorReal;
	C = ingresarValorReal;
	
	Si C > A Entonces
		aux = A;
		A = C;
		C = aux;
	FinSi
	
	Si C > B Entonces
		aux = B;
		B = C;
		C = aux;
	FinSi
	
	Si B > A Entonces
		aux = B;
		B = A;
		A = aux;
	FinSi
	
	Imprimir "A: ", A, ", B: ", B, ", C: ", C;
	
FinAlgoritmo

SubAlgoritmo numReal = ingresarValorReal
	
	Definir numReal como Real;
	
	Imprimir "Ingresar un valor real: ";
	Leer numReal;
	
FinSubAlgoritmo