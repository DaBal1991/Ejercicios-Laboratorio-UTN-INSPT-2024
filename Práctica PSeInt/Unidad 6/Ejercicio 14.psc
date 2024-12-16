Algoritmo sin_titulo
	
//	Crear un programa de ordenador para gestionar los resultados de la quiniela de fútbol.
//	Para ello vamos a utilizar dos tablas:
//	Equipos: Que es una tabla de cadenas donde guardamos en cada columna el nombre de
//	los equipos de cada partido. En la quiniela se indican 15 partidos.
//	Resultados: Es una tabla de enteros donde se indica el resultado. También tiene dos
//	columnas, en la primera se guarda el número de goles del equipo que está guardado en
//	la primera columna de la tabla anterior, y en la segunda los goles del otro equipo.
//	El programa ira pidiendo los nombres de los equipos de cada partido y el resultado del
//	partido, a continuación, se imprimirá la quiniela de esa jornada.
	
	Definir equipos como Cadena;
	Definir resultados, i, j Como Entero;
	
	Dimension equipos[15,2];
	Dimension resultados[15,2];
	
	Para i = 0 hasta 14 Hacer
		Para j = 0 Hasta 1 Hacer
			Si j == 0 Entonces
				Imprimir "Local";
			SiNo
				Imprimir "Visitante";
			FinSi
			
			Imprimir "Ingresar nombre de equipo: ";
			Leer equipos[i,j];
			
			Imprimir "Ingresar goles: ";
			Leer resultados[i,j];
		FinPara
	FinPara
	
	Para i = 0 Hasta 14 Hacer
		para j = 0 Hasta 1 Hacer
			Imprimir equipos[i,j], " ", sin saltar;
			Imprimir resultados[i,j], Sin Saltar;
			
			Si j < 1 Entonces
				Imprimir " - ", Sin Saltar;
			FinSi
		FinPara
		Imprimir " ";
	FinPara
	
FinAlgoritmo
