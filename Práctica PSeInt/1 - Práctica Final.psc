Algoritmo sin_titulo
	
	// 	En una empresa de selección de personal, se necesita realizar una búsqueda en distintas
	// 	BDD de agentes con capacidades específicas para cubrir 3 puestos jerárquicos, para ello
	//	se procede del siguiente modo: se cargan en un vector los N primeros candidatos que se toman
	//	de distintas BDD, se cargan en otros vectores apellido y nombre y 3 puntajes, A, B y C (cada uno
	//	de 0 a 100)
	//	Se pide: Calcular el puntaje total y el puntaje promedio de cada agente. Utilizar un menú interactivo
	//	para visualizar las siguientes opciones:
	//	1) Listado Completo
	//	2) 3 primeros puestos
	//	3) La posición en el ranking elegida por el usuario
	// 	4) La posibilidad de elegir los resultados ordenados por legajo, por puntaje, o alfabéticamente
	// 	NOTA: Si el legajo se repite se debe indicar por pantalla y dar la posibilidad de ingresar otro, si
	//	el apellido o el nombre se cargan mal debe poder ser editado.
	
	Definir N, i, j, op, legajo Como Entero;
	Definir puntajeTotal, puntajeProm Como Real;
	Definir nombre, apellido como Cadena;
	
	Imprimir "Ingresar N cantidad de candidatos: ";
	Leer N;
	
	Dimension nombre[N], apellido[N], puntajeTotal[N],  puntajeProm[N], legajo[N];
	
	Imprimir "Cargar datos...";
	llenarVector(legajo, nombre, apellido, puntajeTotal, puntajeProm,N);
	
	Repetir
		op = menu(legajo, nombre, apellido, puntajeTotal, puntajeProm, N);
	Hasta Que op == 5; 
	
FinAlgoritmo

Funcion llenarVector(legajo, nombre, apellido, puntaje, puntajeProm, N)
	
	Definir i, j Como Entero;
	Definir puntos, acum Como Real;
	
	Para i = 0 Hasta N-1 Hacer
		legajo[i] = i+1;
		
		Imprimir "Ingresar nombre: ";
		Leer nombre[i];
		
		Imprimir "Ingresar apellido: ";
		Leer apellido[i];
		
		acum = 0;
		Imprimir "Ingresar puntajes A, B y C";
		Para j = 0 Hasta 2 Hacer
			Imprimir "Ingresar puntaje: ";
			Leer puntos;
			
			Mientras puntos < 0 o puntos > 100 Hacer
				Imprimir "Ingresar un puntaje válido (0 a 100): ";
				Leer puntos;
			FinMientras
			
			acum = acum + puntos;
			puntaje[i] = acum;
			puntajeProm[i] = acum/3;
		FinPara
		
	FinPara
	
FinFuncion

Funcion mostrarVector(legajo, nombre, apellido, puntaje, puntajeProm, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir "Legajo: ", legajo[i], " | Nombre: ", nombre[i], " | Apellido: ", apellido[i], " | Puntaje Total: ", puntaje[i], " | Puntaje Promedio: ", puntajeProm[i];
	FinPara
	
FinFuncion

Funcion ordenarPor(legajo, nombre, apellido, puntaje, puntajeProm, N)
	
	Definir op Como Entero;
	
	Imprimir "1. Ordenar por legajo";
	Imprimir "2. Ordenar por puntaje.";
	Imprimir "3. Ordenar alfabéticamente.";
	Imprimir "4. Regresar al menú principal";
	
	Imprimir "Ingresar opción: ";
	Leer op;
	

		Segun op Hacer
			1:
				porLegajo(legajo, nombre, apellido, puntaje, puntajeProm, N);
			2:
				porPuntaje(legajo, nombre, apellido, puntaje, puntajeProm, N);
			3:
				porApellido(legajo, nombre, apellido, puntaje, puntajeProm, N);
			4:
				Imprimir "Volviendo...";
			De Otro Modo:
				Imprimir "Ingresar una opción válida...";
		FinSegun
	
	
FinFuncion


Funcion op = menu(legajo, nombre, apellido, puntaje, puntajeProm, N)
	
	Definir op Como Entero;
	
	Imprimir "1. Mostrar listado.";
	Imprimir "2. Mostrar primeros tres puestos.";
	Imprimir "3. Mostrar posición.";
	Imprimir "4. Ordenar por legajo, por puntaje, o alfabéticamente.";
	Imprimir "0. Editar legajo.";
	
	Imprimir "Ingresar una opción:" ; 
	Leer op;
	
	Segun op Hacer
		1:
			mostrarVector(legajo, nombre, apellido, puntaje, puntajeProm, N);
		2:
			rankingTres(legajo, nombre, apellido, puntaje, puntajeProm, N);
		3:
			imprimirDelRanking(legajo, nombre, apellido, puntaje, puntajeProm, N);
		4:
			ordenarPor(legajo, nombre, apellido, puntaje, puntajeProm, N);
		0:
			editar(legajo, nombre, apellido, N);
		5:
			Imprimir "Saliendo...";
	FinSegun
	
FinFuncion

Funcion editar(legajo, nombre, apellido, N)
	
	Definir idLegajo, i, op Como Entero;
	
	Imprimir "Ingresar legajo a editar: ";
	Leer idLegajo;
	
	Para i = 0 Hasta N-1 Hacer
		Si legajo[i] == idLegajo Entonces
			Imprimir "1. Editar nombre.";
			Imprimir "2. Editar Apellido.";
			Leer op;
			
			Segun op Hacer
				1:
					Leer nombre[i];
				2:
					Leer apellido[i];
				De Otro Modo:
					Imprimir "Error. Opción Inexistente...";
			FinSegun
		FinSi
	FinPara
	
FinFuncion


Funcion porLegajo(legajo, nombre, apellido, puntaje, puntajeProm, N)
	
	Definir i, j Como Entero;
	Definir auxNom Como Cadena;
	Definir aux Como Real;
	
	Para i = 0 Hasta N-1 Hacer
		Para j = 0 Hasta N-2 Hacer
			Si legajo[j] < legajo[j+1] Entonces
				aux = puntaje[j];
				puntaje[j] = puntaje[j+1];
				puntaje[j+1] = aux;
				
				aux = puntajeProm[j];
				puntajeProm[j] = puntajeProm[j+1];
				puntajeProm[j+1] = aux;
				
				aux = legajo[j];
				legajo[j] = legajo[j+1];
				legajo[j+1] = aux;
				
				auxNom = nombre[j];
				nombre[j] = nombre[j+1];
				nombre[j+1] = auxNom;
				
				auxNom = apellido[j];
				apellido[j] = apellido[j+1];
				apellido[j+1] = auxNom;
			FinSi
		FinPara
	FinPara
	
FinFuncion

Funcion porApellido(legajo, nombre, apellido, puntaje, puntajeProm, N)
	
	Definir i, j Como Entero;
	Definir auxNom Como Cadena;
	Definir aux Como Real;
	
	Para i = 0 Hasta N-1 Hacer
		Para j = 0 Hasta N-2 Hacer
			Si Subcadena(apellido[j], 0, 0) > Subcadena(apellido[j+1], 0, 0) Entonces 
				aux = puntaje[j];
				puntaje[j] = puntaje[j+1];
				puntaje[j+1] = aux;
				
				aux = puntajeProm[j];
				puntajeProm[j] = puntajeProm[j+1];
				puntajeProm[j+1] = aux;
				
				aux = legajo[j];
				legajo[j] = legajo[j+1];
				legajo[j+1] = aux;
				
				auxNom = nombre[j];
				nombre[j] = nombre[j+1];
				nombre[j+1] = auxNom;
				
				auxNom = apellido[j];
				apellido[j] = apellido[j+1];
				apellido[j+1] = auxNom;
			FinSi
		FinPara
	FinPara
	
FinFuncion

Funcion porPuntaje(legajo, nombre, apellido, puntaje, puntajeProm, N)
	
	Definir i, j Como Entero;
	Definir auxNom Como Cadena;
	Definir aux Como Real;
	
	Para i = 0 Hasta N-1 Hacer
		Para j = 0 Hasta N-2 Hacer
			Si puntaje[j] < puntaje[j+1] Entonces
				aux = puntaje[j];
				puntaje[j] = puntaje[j+1];
				puntaje[j+1] = aux;
				
				aux = puntajeProm[j];
				puntajeProm[j] = puntajeProm[j+1];
				puntajeProm[j+1] = aux;
				
				aux = legajo[j];
				legajo[j] = legajo[j+1];
				legajo[j+1] = aux;
				
				auxNom = nombre[j];
				nombre[j] = nombre[j+1];
				nombre[j+1] = auxNom;
				
				auxNom = apellido[j];
				apellido[j] = apellido[j+1];
				apellido[j+1] = auxNom;
			FinSi
		FinPara
	FinPara
	
	
FinFuncion


Funcion rankingTres(legajo, nombre, apellido, puntaje, puntajeProm, N)
	
	Definir i, j Como Entero;
	Definir auxNom Como Cadena;
	Definir aux Como Real;
	
	Para i = 0 Hasta N-1 Hacer
		Para j = 0 Hasta N-2 Hacer
			Si puntajeProm[j] < puntajeProm[j+1] Entonces
				aux = puntaje[j];
				puntaje[j] = puntaje[j+1];
				puntaje[j+1] = aux;
				
				aux = puntajeProm[j];
				puntajeProm[j] = puntajeProm[j+1];
				puntajeProm[j+1] = aux;
				
				aux = legajo[j];
				legajo[j] = legajo[j+1];
				legajo[j+1] = aux;
				
				auxNom = nombre[j];
				nombre[j] = nombre[j+1];
				nombre[j+1] = auxNom;
				
				auxNom = apellido[j];
				apellido[j] = apellido[j+1];
				apellido[j+1] = auxNom;
				
			FinSi
		FinPara
	FinPara

	Para i = 0 Hasta 2 Hacer
		Imprimir "Legajo: ", legajo[i], " | Nombre: ", nombre[i], " | Apellido: ", apellido[i], " | Puntaje Total: ", puntaje[i], " | Puntaje Promedio: ", puntajeProm[i];
	FinPara

	
FinFuncion

Funcion imprimirDelRanking(legajo, nombre, apellido, puntaje, puntajeProm, N)
	
	Definir pos Como Entero;
	
	Imprimir "Elegir una posición del Ranking: ";
	Leer pos;
	
	Mientras pos < 0 o pos > N Hacer
		Imprimir "Debe ingresar un valor entere 1 y ", N, ": ";
		Leer pos;
	FinMientras
	
	Imprimir "Legajo: ", legajo[pos-1], " | Nombre: ", nombre[pos-1], " | Apellido: ", apellido[pos-1], " | Puntaje Total: ", puntaje[pos-1], " | Puntaje Promedio: ", puntajeProm[pos-1];
	
FinFuncion
	