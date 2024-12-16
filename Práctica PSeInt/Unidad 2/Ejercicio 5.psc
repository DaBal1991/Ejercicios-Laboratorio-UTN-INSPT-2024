Algoritmo sin_titulo
	
	Definir num, ano, mes, dia como Entero;
	
	// Dada una fecha expresada con un entero de 6 d�gitos, donde los dos primeros d�gitos
	// expresan el d�a, el tercero y el cuarto expresan el mes y los dos �ltimos expresan el a�o,
	// obtener el mes. En la entrada de datos debe decir Indicar una fecha como un entero de
	// 6 d�gitos, la salida ser�: 
	// Fecha: DDMMAA (ej: 120614)
	// Mes: MM (ej: 06)
	
	Imprimir "Indicar una fecha como un entero de 6 d�gitos: ";
	Leer num;
	
	Mientras num > 999999 o num < 100000 Hacer
		Imprimir "Ingresar entero de 6 d�gitos: ";
		Leer num;
	FinMientras
	
	dia = trunc(num/10000);
	mes = trunc((num mod 10000)/100); 
	
	Mientras dia > 31 o dia < 1 Hacer
		num = num - dia*10000;
		Imprimir "Dia inv�lido. Ingrese un valor correcto: ";
		Leer dia;
		num = num + dia*10000;
	FinMientras
	
	Mientras mes > 12 o mes < 1 Hacer
		num = num - mes*100;
		Imprimir "Mes inv�lido. Ingrese un valor correcto: ";
		Leer mes;
		num = num + mes*100;
	FinMientras
	
	Imprimir "Fecha: ", num;
	Imprimir "Mes: ", mes;
	
FinAlgoritmo
