Algoritmo sin_titulo
	
	Definir num, ano, mes, dia como Entero;
	
	// Dada una fecha expresada con un entero de 6 dígitos, donde los dos primeros dígitos
	// expresan el día, el tercero y el cuarto expresan el mes y los dos últimos expresan el año,
	// obtener el mes. En la entrada de datos debe decir Indicar una fecha como un entero de
	// 6 dígitos, la salida será: 
	// Fecha: DDMMAA (ej: 120614)
	// Mes: MM (ej: 06)
	
	Imprimir "Indicar una fecha como un entero de 6 dígitos: ";
	Leer num;
	
	Mientras num > 999999 o num < 100000 Hacer
		Imprimir "Ingresar entero de 6 dígitos: ";
		Leer num;
	FinMientras
	
	dia = trunc(num/10000);
	mes = trunc((num mod 10000)/100); 
	
	Mientras dia > 31 o dia < 1 Hacer
		num = num - dia*10000;
		Imprimir "Dia inválido. Ingrese un valor correcto: ";
		Leer dia;
		num = num + dia*10000;
	FinMientras
	
	Mientras mes > 12 o mes < 1 Hacer
		num = num - mes*100;
		Imprimir "Mes inválido. Ingrese un valor correcto: ";
		Leer mes;
		num = num + mes*100;
	FinMientras
	
	Imprimir "Fecha: ", num;
	Imprimir "Mes: ", mes;
	
FinAlgoritmo
