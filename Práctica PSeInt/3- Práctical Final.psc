Algoritmo sin_titulo
	
//	Una línea aérea, American Airlines, vende pasajes en 3 aeropuertos: "Uruguay", "Perú" y
//	"Brasil". En cada uno de ellos, hay 3 empleados que efectúan las ventas. Cada vez que un
//	cliente compra pasajes, se requiere la siguiente información:
//	? Número de Aeropuerto
//	? Número de Empleado
//	? Valor del pasaje
//	? Cantidad de pasajeros
//	Se pide calcular:
//	a) La cantidad de pasajes vendidos por cada empleado.
//	b) La recaudación por cada aeropuerto.
//	c) El número de empleado que haya vendido la mayor cantidad de pasajes.
//	d) La cantidad de pasajes vendidos por aeropuerto.
//	e) El porcentaje de ventas en pesos de cada empleado.
//	f) El porcentaje de ventas por aeropuerto.
//	g) Ranking de ventas por Aeropuerto de Ordenado de mayor a Menor.
//	La carga de datos finalizará cuando se ingrese un número de aeropuerto igual a cero.
//	La carga o inicialización de nombre será la siguiente
//	SubAlgoritmo cargarDatosIniciales(Aeropuerto,Empleado)
//		Aeropuerto[0]="Uruguay"
//		Aeropuerto[1]="Peru"
//		Aeropuerto[2]="Brasil"
//		//-----------------------
//		Empleado[0]="Lopez"
//		Empleado[1]="Perez"
//		Empleado[2]="Aguilar"
//		Empleado[3]="Gonzalez"
//		Empleado[4]="Gomez"
//		Empleado[5]="Rodriguez"
//		Empleado[6]="Fernandez"
//		Empleado[7]="Diaz"
//		Empleado[8]="Martinez"
//	FinSubAlgoritmo
	
	Definir Aeropuerto, Empleado como Cadena;
	Definir cantPasajesEmpleado, cantPasajesAeropuerto Como Entero;
	Definir recaudacionEmpleado, recaudacionAeropuerto, porcentajeEmpleado, porcentajeAeropuerto como Real;
	Dimension Aeropuerto[3], Empleado[9]; 
	Dimension cantPasajesEmpleado[9], recaudacionEmpleado[9], recaudacionAeropuerto[3], cantPasajesAeropuerto[3];
	
	cargarDatosIniciales(Aeropuerto,Empleado);
	compraPasajes(Aeropuerto, Empleado, cantPasajesEmpleado, recaudacionEmpleado, recaudacionAeropuerto, cantPasajesAeropuerto); 
	
	// A
	mostrarVector(Empleado, 9);
	mostrarVector(cantPasajesEmpleado, 9);
	
	// B
	mostrarVector(Aeropuerto, 3);
	mostrarVector(recaudacionAeropuerto, 3);
	
	// C
	mejorEmpleado(cantPasajesEmpleado, Empleado, 9);
	
	// D
	mostrarVector(Aeropuerto, 3);
	mostrarVector(cantPasajesAeropuerto, 3);
	// E
	calcularPorcentajeEmpleados(recaudacionEmpleado, 9, Empleado);
	// F
	calcularPorcentajeAeropuerto(cantPasajesAeropuerto, 3, Aeropuerto);
	// G
	rankingAeropuerto(recaudacionAeropuerto, 3, Aeropuerto);
	mostrarVector(Aeropuerto, 3);
	mostrarVector(recaudacionAeropuerto, 3);
FinAlgoritmo

Funcion rankingAeropuerto(recaudacionAeropuerto, N, Aeropuerto)
	
	Definir i, j Como Entero;
	Definir auxCad comO cADENA;
	dEFINIR aux como Real;
	
	Para i = 0 Hasta N-1 Hacer
		Para j = 0 Hasta N-2 Hacer
			Si recaudacionAeropuerto[j] < recaudacionAeropuerto[j+1] Entonces
				aux = recaudacionAeropuerto[j];
				recaudacionAeropuerto[j] = recaudacionAeropuerto[j+1];
				recaudacionAeropuerto[j+1] = aux;
				
				auxCad = Aeropuerto[j];
				Aeropuerto[j] = Aeropuerto[j+1];
				Aeropuerto[j+1] = auxCad;
			FinSi
		FinPara
	FinPara
	
FinFuncion

Funcion calcularPorcentajeEmpleados(recaudacionEmpleado, N, Empleado)
	
	Definir i Como Entero;
	Definir total Como Real;
	
	Para i = 0 Hasta N-1 Hacer
		total = total + recaudacionEmpleado[i];
	FinPara
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir "Porcentaje de Recaudacion del empleado, ", Empleado[i], " fue de: %, ", (recaudacionEmpleado[i]*100)/total;
	FinPara
	
FinFuncion

Funcion calcularPorcentajeAeropuerto(cantPasajesAeropuerto, N, Aeropuerto)
	
	Definir i Como Entero;
	Definir ventasTotales Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		ventasTotales = ventasTotales + cantPasajesAeropuerto[i];
	FinPara
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir "Porcentaje Aeropuerto ", Aeropuerto[i], ": %", (cantPasajesAeropuerto[i]*100)/ventasTotales;
	FinPara
	
FinFuncion

SubAlgoritmo compraPasajes(Aeropuerto, Empleado, cantPasajesEmpleado, recaudacionEmpleado, recaudacionAeropuerto, cantPasajesAeropuerto)
	
	Definir opAero, opEmpleado como Entero;
	
	Repetir
		Imprimir "Ingresar el N° de Aeropuerto";
		Leer opAero;
		
		Mientras opAero < 0 o opAero > 3 Hacer
			Imprimir "Ingresar un N° de Aeropuerto válido: ";
			Leer opAero;
		FinMientras
		
		Si opAero <> 0 Entonces
			cargarMontos(Aeropuerto, Empleado, opAero, opEmpleado, recaudacionAeropuerto, recaudacionEmpleado, cantPasajesEmpleado, cantPasajesAeropuerto);
		SiNo
			Imprimir "Saliendo...";
		FinSi
		
	Hasta Que opAero == 0;
	
FinSubAlgoritmo

Funcion cargarMontos(Aeropuerto, Empleado, opAero, opEmpleado, recaudacionAeropuerto, recaudacionEmpleado, cantPasajesEmpleado, cantPasajesAeropuerto)
	
	Definir importe, cantPasajes como Real;
	
	Segun opAero Hacer
		1:
			Imprimir "Ingresar el N° del empleado: ";
			Leer opEmpleado;
			
			Mientras opEmpleado > 3 o opEmpleado < 1 Hacer
				Imprimir "Ingresar un empleado válido del 1 al 3";
				Leer opEmpleado;
			FinMientras
			
			Imprimir "Ingresar importe del pasaje: ";
			Leer importe;
			
			Imprimir "Ingresar cantidad de pasajes: ";
			Leer cantPasajes;
			
			cantPasajesAeropuerto[opAero-1] = cantPasajesAeropuerto[opAero-1] + cantPasajes;
			recaudacionAeropuerto[opAero-1] = recaudacionAeropuerto[opAero-1] + importe*cantPasajes;
			cantPasajesEmpleado[opEmpleado-1] = cantPasajesEmpleado[opEmpleado-1]  +  cantPasajes;
			recaudacionEmpleado[opEmpleado-1] = recaudacionEmpleado[opEmpleado-1] + importe*cantPasajes;
			
			Imprimir "Aeropuerto: ", opAero;
			Imprimir "Empleado: ", opEmpleado;
			Imprimir "Pasajes Vendidos: ", cantPasajes;
			Imprimir "Valor Unitario: $", importe;
			Imprimir "Importe Total: $", importe*cantPasajes;
		2:
			Imprimir "Ingresar el N° del empleado: ";
			Leer opEmpleado;
			
			Mientras opEmpleado > 6 o opEmpleado < 4 Hacer
				Imprimir "Ingresar un empleado válido del 4 al 7";
				Leer opEmpleado;
			FinMientras
			
			Imprimir "Ingresar importe del pasaje: ";
			Leer importe;
			
			Imprimir "Ingresar cantidad de pasajes: ";
			Leer cantPasajes;
			
			cantPasajesAeropuerto[opAero-1] = cantPasajesAeropuerto[opAero-1] + cantPasajes;
			recaudacionAeropuerto[opAero-1] = recaudacionAeropuerto[opAero-1] + importe*cantPasajes;
			cantPasajesEmpleado[opEmpleado-1] = cantPasajesEmpleado[opEmpleado-1]  +  cantPasajes;
			recaudacionEmpleado[opEmpleado-1] = recaudacionEmpleado[opEmpleado-1] + importe*cantPasajes;
			
			Imprimir "Aeropuerto: ", opAero;
			Imprimir "Empleado: ", opEmpleado;
			Imprimir "Pasajes Vendidos: ", cantPasajes;
			Imprimir "Valor Unitario: $", importe;
			Imprimir "Importe Total: $", importe*cantPasajes;
		3:
			Imprimir "Ingresar el N° del empleado: ";
			Leer opEmpleado;
			
			Mientras opEmpleado > 9 o opEmpleado < 7 Hacer
				Imprimir "Ingresar un empleado válido del 7 al 9";
				Leer opEmpleado;
			FinMientras
			
			Imprimir "Ingresar importe del pasaje: ";
			Leer importe;
			
			Imprimir "Ingresar cantidad de pasajes: ";
			Leer cantPasajes;
			
			cantPasajesAeropuerto[opAero-1] = cantPasajesAeropuerto[opAero-1] + cantPasajes;
			recaudacionAeropuerto[opAero-1] = recaudacionAeropuerto[opAero-1] + importe*cantPasajes;
			cantPasajesEmpleado[opEmpleado-1] = cantPasajesEmpleado[opEmpleado-1]  +  cantPasajes;
			recaudacionEmpleado[opEmpleado-1] = recaudacionEmpleado[opEmpleado-1] + importe*cantPasajes;
			
			Imprimir "Aeropuerto: ", opAero;
			Imprimir "Empleado: ", opEmpleado;
			Imprimir "Pasajes Vendidos: ", cantPasajes;
			Imprimir "Valor Unitario: $", importe;
			Imprimir "Importe Total: $", importe*cantPasajes;
	FinSegun
	
FinFuncion

SubAlgoritmo cargarDatosIniciales(Aeropuerto,Empleado)
	Aeropuerto[0]="Uruguay";
	Aeropuerto[1]="Peru";
	Aeropuerto[2]="Brasil";
	//-----------------------
	Empleado[0]="Lopez";
	Empleado[1]="Perez";
	Empleado[2]="Aguilar";
	Empleado[3]="Gonzalez";
	Empleado[4]="Gomez";
	Empleado[5]="Rodriguez";
	Empleado[6]="Fernandez";
	Empleado[7]="Diaz";
	Empleado[8]="Martinez";
FinSubAlgoritmo

Funcion mostrarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir vec[i], " | ", Sin Saltar;
	FinPara
	Imprimir " ";
	
FinFuncion

Funcion mejorEmpleado(cantPasajesEmpleado, Empleado, N)
	
	Definir i, mayorVenta, masPasajes Como Entero;
	
	mayorVenta = cantPasajesEmpleado[0];
	
	Para i = 0 Hasta N-1 Hacer
		Si cantPasajesEmpleado[i] > mayorVenta Entonces
			mayorVenta = cantPasajesEmpleado[i];
			masPasajes = i;
		FinSi
	FinPara
	
	Imprimir "Empleado con más ventas fue: ", Empleado[masPasajes], " cuyo N° es, ", masPasajes+1;
	
FinFuncion
	