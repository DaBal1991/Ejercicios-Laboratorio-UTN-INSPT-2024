Algoritmo sin_titulo
	
//	De una empresa de transporte se quiere guardar el nombre de los conductores que tiene,
//	y los kilómetros que conducen cada día de la semana. Para guardar esta información se van a
//	utilizar dos arreglos:
//	Nombre: Vector para guardar los nombres de los conductores.
//	kms: Tabla para guardar los kilómetros que realizan cada día de la semana.
//	Se quiere generar un nuevo vector ("total_kms") con los kilómetros totales que realza cada
//	conductor. Al finalizar se muestra la lista con los nombres de conductores y los kilómetros
//	que ha realizado.
	
	Definir cant, i, j Como Entero;
	Definir nombre como Cadena;
	Definir kms, total_kms Como Real;
	
	Imprimir "Ingresar cantidad de choferes: ";
	Leer cant;
	
	Dimension nombre[cant];
	Dimension kms[7];
	Dimension total_kms[cant];
	
	Para i = 0 Hasta cant-1 Hacer
		Imprimir "Ingresar nombre del chofer: ";
		Leer nombre[i];
		
		Mientras j <= 6 Hacer
			Imprimir "Ingresar Kms. recorrido el dia ", j+1, ": ";
			Leer kms[j];
			total_kms[i] = total_kms[i] + kms[j];
			j = j + 1;
		FinMientras
		j = 0;
		
		Imprimir nombre[i];
		mostrarVector(kms, 6);
		
	FinPara
	
	mostrarVector(nombre, cant);
	mostrarVector(total_kms, cant);
	
	
FinAlgoritmo

Funcion mostrarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir vec[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
FinFuncion
	