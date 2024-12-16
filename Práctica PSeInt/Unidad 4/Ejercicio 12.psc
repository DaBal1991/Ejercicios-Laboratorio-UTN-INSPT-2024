Algoritmo sin_titulo
	
//	Un estudiante necesita calcular el valor del área de una figura geométrica. Las figuras geométricas
//	disponibles son el triángulo, circulo, rectángulo y un hexágono.
	
	Definir op como Entero;
	Definir base, altura, radio, apotema como Real;
	
	Imprimir "Ingresar una opción: ";
	Leer op;
	
	Imprimir "1. Triángulo.";
	Imprimir "2. Círculo.";
	Imprimir "3. Rectángulo.";
	Imprimir "4. Hexágono.";
	
	Segun op Hacer
		1:
			Imprimir "Ingresar base: ";
			Leer base;
			Imprimir "Ingresar altura: ";
			Leer altura;
			Imprimir "Area de Triángulo: ", (base*altura)/2;
		2:
			Imprimir "Ingresar radio: ";
			Leer radio;
			Imprimir "Area del Circulo: ", 3.14*radio*radio;
		3: 
			Imprimir "Ingresar lado mayor: ";
			Leer base;
			Imprimir "Ingresar lado menor: ";
			Leer altura;
			Imprimir "Area del Réctangulo: ", base*altura;
		4:
			Imprimir "Ingresar lado: ";
			Leer lado;
			Imprimir "Ingresar apotema: ";
			Leer apotema;
			Imprimir "Area del Hexágono: ", ((lado*6)*apotema)/2;
	FinSegun
	
FinAlgoritmo
