Algoritmo sin_titulo
	
//	Un estudiante necesita calcular el valor del �rea de una figura geom�trica. Las figuras geom�tricas
//	disponibles son el tri�ngulo, circulo, rect�ngulo y un hex�gono.
	
	Definir op como Entero;
	Definir base, altura, radio, apotema como Real;
	
	Imprimir "Ingresar una opci�n: ";
	Leer op;
	
	Imprimir "1. Tri�ngulo.";
	Imprimir "2. C�rculo.";
	Imprimir "3. Rect�ngulo.";
	Imprimir "4. Hex�gono.";
	
	Segun op Hacer
		1:
			Imprimir "Ingresar base: ";
			Leer base;
			Imprimir "Ingresar altura: ";
			Leer altura;
			Imprimir "Area de Tri�ngulo: ", (base*altura)/2;
		2:
			Imprimir "Ingresar radio: ";
			Leer radio;
			Imprimir "Area del Circulo: ", 3.14*radio*radio;
		3: 
			Imprimir "Ingresar lado mayor: ";
			Leer base;
			Imprimir "Ingresar lado menor: ";
			Leer altura;
			Imprimir "Area del R�ctangulo: ", base*altura;
		4:
			Imprimir "Ingresar lado: ";
			Leer lado;
			Imprimir "Ingresar apotema: ";
			Leer apotema;
			Imprimir "Area del Hex�gono: ", ((lado*6)*apotema)/2;
	FinSegun
	
FinAlgoritmo
