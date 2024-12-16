Algoritmo sin_titulo
	
	//  Lea los valores de los lados de un triángulo. Determine y muestre un mensaje
	//  correspondiente a su tipo (1. EQUILÁTERO, 2. ISÓSCELES, O 3. ESCALENO)
	
	Definir ladoUno, ladoDos, ladoTres como Real;
	Definir bandera como Entero;
	
	Imprimir "Ingresar lado del triangulo: ";
	Leer ladoUno;
	
	Imprimir "Ingresar lado del triangulo: ";
	Leer ladoDos;
	
	Imprimir "Ingresar lado del triangulo: ";
	Leer ladoTres;
	
	Si ladoUno == ladoDos y ladoDos == ladoUno Entonces
		bandera = 1;
	SiNo
		Si (ladoUno == ladoDos) o (ladoUno == ladoTres) o (ladoDos == ladoTres) Entonces
			bandera = 2;
		SiNo
			bandera = 3;
		FinSi
	FinSi
	
	Segun bandera hacer
		1:
			Imprimir "Equilátero.";
		2:
			Imprimir "Isósceles.";
		3:
			Imprimir "Escaleno";
	FinSegun
	
FinAlgoritmo
