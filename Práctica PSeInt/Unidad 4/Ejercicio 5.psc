Algoritmo sin_titulo
	
	// Realizar un programa que permita elegir al usuario el c�lculo del per�metro y/o superficie de por lo menos 5 figuras geom�tricas.
	
	Definir op Como Entero;
	
	Repetir
		op = menuCinco();
	Hasta Que op = 0; 
	
FinAlgoritmo

Funcion op = menuCinco
	
	Definir op como Entero; 
	Definir lado, ladoM como Real;
	
	Imprimir "Calcular Per�metro y Superficie de: ";
	Imprimir "1. Cuadrado";
	Imprimir "2. Rect�ngulo";
	Imprimir "3. C�rculo";
	Imprimir "4. Tri�ngulo Equilatero";
	Imprimir "5. Romboide";
	
	Imprimir "Ingrese una op�i�n:";
	Leer op;
	
	Segun op Hacer
		1:
			Imprimir "Ingrese la medida de uno de sus lados: ";
			Leer lado;
			Imprimir "Per�metro: ", perCuadrado(lado);
			Imprimir "Superficie: ", supCuadrado(lado);
		2:
			Imprimir "Ingrese la medida del lado mayor: ";
			Leer ladoM;
			
			Imprimir "Ingrese la medida del lado menor: ";
			Leer lado;
			Imprimir "Per�metro: ", perRectangulo(ladoM, lado);
			Imprimir "Superficie: ", supRectangulo(ladoM, lado);
		3: 
			Imprimir "Ingrese medida del radio: ";
			Leer lado;
			Imprimir "Per�metro: ", perCirculo(lado);
			Imprimir "Superficie: ", supCirculo(lado);
		4: 
			Imprimir "Ingrese medida de la base: ";
			Leer ladoM;
			
			Imprimir "Ingrese medida de la altura: ";
			leer lado;
			Imprimir "Per�metro: ", perTriang(ladoM);
			Imprimir "Superficie: ", supTriang(ladoM, lado);
		5:
			Imprimir "Ingrese medida de la base:";
			Leer ladoM;
			
			Imprimir "Ingrese medida la altura: ";
			leer lado;
			Imprimir "Per�metro: ", perRomboide(ladoM, lado);
			Imprimir "Superficie: ", supRomboide(ladoM, lado);
	FinSegun
	
FinFuncion

Funcion per = perCuadrado(lado)
	
	Definir per como Real;
	
	per = lado*4;
	
FinFuncion

Funcion sup = supCuadrado(lado)
	
	Definir sup como Real;
	
	sup = lado*lado;
	
FinFuncion

Funcion per = perRectangulo(ladoM, lado)
	
	Definir per como Real;
	
	per = ladoM*2 + lado*2;
	
FinFuncion

Funcion sup = supRectangulo(ladoM, lado)
	
	Definir sup como Real;
	
	sup = ladoM*lado;
	
FinFuncion

Funcion per = perCirculo(lado)
	
	Definir per como Real;
	
	per = 2*3.14*lado;
	
FinFuncion

Funcion sup = supCirculo(lado)
	
	Definir sup como Real;
	
	sup = lado*lado*3.14;
	
FinFuncion

Funcion per = perTriang(ladoM)
	
	Definir per como Real;
	
	per = ladoM*3;
	
FinFuncion

Funcion sup = supTriang(ladoM, lado)
	
	Definir sup como Real;
	
	sup = (ladoM*lado)/2;
	
FinFuncion

Funcion per = perRomboide(ladoM, lado)
	
	Definir per como Real;
	
	per = 2*(ladoM+lado);
	
FinFuncion

Funcion sup = supRomboide(ladoM, lado)
	
	Definir sup como Real;
	
	sup = ladoM*lado;
	
FinFuncion
