Algoritmo sin_titulo
	
	// Mientras la respuesta sea afirmativa, se leen los tres lados de un tri�ngulo y se informa su per�metro y que tipo de triangulo forma.
	
	Definir triangulo, lado como Reales;
	Definir i Como Entero;
	Dimension triangulo[3];
	
	i = 0;
	
	Imprimir "-1 para salir";
	Repetir
		Imprimir "Ingresar lado del triangulo: ";
		Leer lado;
		
		triangulo[i] = lado;
		
		i = i + 1;
		
		Si i == 3 Entonces
			Imprimir "Per�metro: ", calcularPer(triangulo);
			tipoTriangulo(triangulo);
			vaciarVector(triangulo);
			i = 0;
		FinSi
		
	Hasta Que lado = -1; 
	
FinAlgoritmo

Funcion per = calcularPer(triangulo)
	
	Definir per Como Real;
	Definir i Como Entero;
	
	Para i = 0 Hasta 2 Hacer
		per = per + triangulo[i];
	FinPara
	
FinFuncion

Funcion tipoTriangulo(triangulo)
	
	Si (triangulo[0] == triangulo[1]) y (triangulo[1] == triangulo[2]) Entonces
		Imprimir "Es equilatero.";
	SiNo
		Si (triangulo[0] == triangulo[1]) o (triangulo[1] == triangulo[2]) o (triangulo[0] == triangulo[2]) Entonces
			Imprimir "Es is�sceles.";
		SiNo
			Imprimir "Es escaleno.";
		FinSi
	FinSi
	
FinFuncion

Funcion vaciarVector(triangulo)
	
	Definir i Como Entero;
	
	Para i = 0 hasta 2 Hacer
		triangulo[i] = 0;
	FinPara
	
FinFuncion
	