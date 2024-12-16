Algoritmo sin_titulo
	
//	Crea un programa que pida un número al usuario un número de mes (por ejemplo, el 4) y
//	diga cuántos días tiene (por ejemplo, 30) y el nombre del mes. Debes usar un vector. Para
//	simplificarlo vamos a suponer que febrero tiene 28 días. Si no existe ningún día se muestra
//	un mensaje de información.
	
	Definir num, diasMes Como Entero;
	Dimension diasMes[12];
	
	diasMes[0] = 31;
	diasMes[1] = 28;
	diasMes[2] = 31;
	diasMes[3] = 30;
	diasMes[4] = 31;
	diasMes[5] = 30;
	diasMes[6] = 31;
	diasMes[7] = 31;
	diasMes[8] = 30;
	diasMes[9] = 31;
	diasMes[10] = 30;
	diasMes[11] = 31;
	
	Imprimir "Ingresar un número: ";
	Leer num;
	
	Segun num-1 hacer
		0:
			Imprimir "Enero: ", Sin Saltar;
			Imprimir diasMes[0], " dias.";
		1:
			Imprimir "Febrero: ", Sin Saltar;
			Imprimir diasMes[1], " dias.";
		2:
			Imprimir "Marzo: ", Sin Saltar;
			Imprimir diasMes[2], " dias.";
		3:
			Imprimir "Abril: ", Sin Saltar;
			Imprimir diasMes[3], " dias.";
		4:
			Imprimir "Mayo: ", Sin Saltar;
			Imprimir diasMes[4], " dias.";
		5:
			Imprimir "Junio: ", Sin Saltar;
			Imprimir diasMes[5], " dias.";
		6:
			Imprimir "Julio: ", Sin Saltar;
			Imprimir diasMes[6], " dias.";
		7:
			Imprimir "Agosto: ", Sin Saltar;
			Imprimir diasMes[7], " dias.";
		8:
			Imprimir "Septiembre: ", Sin Saltar;
			Imprimir diasMes[8], " dias.";
		9:
			Imprimir "Octubre: ", Sin Saltar;
			Imprimir diasMes[9], " dias.";
		10:
			Imprimir "Noviembre: ", Sin Saltar;
			Imprimir diasMes[10], " dias.";
		11:
			Imprimir "Diciembre: ", Sin Saltar;
			Imprimir diasMes[11], " dias.";
		De Otro Modo:
			Imprimir "No existe...";
	FinSegun
	
FinAlgoritmo
