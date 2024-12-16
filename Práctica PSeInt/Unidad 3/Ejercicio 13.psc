Algoritmo sin_titulo
	
	// Dados dos números A y B dejar en A el mayor y en B el menor.
	
	Definir A, B, aux Como Real;
	
	A = ingresarValorReal;
	B = ingresarValorReal;
	
	Si A > B Entonces
		Imprimir "A = ", A;
		Imprimir "B = ", B;
	SiNo
		aux = B;
		B = A;
		A = aux;
		
		Imprimir "A = ", A;
		Imprimir "B = ", B;
	FinSi
	
FinAlgoritmo

SubAlgoritmo numReal = ingresarValorReal
	
	Definir numReal como Real;
	
	Imprimir "Ingresar un valor real: ";
	Leer numReal;
	
FinSubAlgoritmo