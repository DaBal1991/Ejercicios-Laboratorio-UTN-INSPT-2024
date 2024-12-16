Algoritmo sin_titulo
	
	// Ingresar un vector V1 de n componentes enteros (n<=30), generar e imprimir un nuevo vector
	// V2 que resulte de permutar entre si la primera y última componente.
	
	Definir V1, V2, N Como Entero;
	
	Imprimir "Ingresar cantidad de valores: ";
	Leer N;
	
	Mientras N > 30 o N < 1 Hacer
		Imprimir "Ingresar una cantidad entre 1 a 30: ";
		Leer N;
	FinMientras
	
	Dimension V1[N], V2[N];
	
	llenarVector(V1, N);
	llenarVector(V2, N);

	Imprimir "Vector 1: ";
	mostrarVector(V1, N);
	Imprimir " ";
	Imprimir "Vector 2: ";
	mostrarVector(V2, N);
	
	Imprimir "--- PERMUTACIÓN --- ";
	permutarValores(V1, V2, N);
	
	Imprimir "Vector 1: ";
	mostrarVector(V1, N);
	Imprimir " ";
	Imprimir "Vector 2: ";
	mostrarVector(V2, N);
	
FinAlgoritmo

Funcion llenarVector(V, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		V[i] = Aleatorio(1,100);
	FinPara
	
FinFuncion

Funcion permutarValores(V1, V2, N)
	
	Definir aux Como Entero;;
	
	aux = V1[0];
	V1[0] = V2[0];
	V2[0] = aux;
	
	aux = V1[N-1];
	V1[N-1] = V2[N-1];
	V2[N-1] = aux;
	
FinFuncion

Funcion mostrarVector(V, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1
		Imprimir V[i], ", ", Sin Saltar;
	FinPara
	
FinFuncion
