Algoritmo sin_titulo
	
//	Se ingresa una fecha con el formato día, mes, año (dos dígitos c/u), realizar un programa que
//	devuelva la fecha ingresada con un nuevo formato. Por ejemplo si se ingresa 31 07 17, el programa
//	debe devolver 31 de julio de 2017.
	
	Definir mes, ano, bisiesto Como Entero;
	Definir fecha como Caracter;
	
	Imprimir "Ingrese el año en formato AA: ";
	Leer ano;
	ano = comprobarDigitos(ano);
	bisiesto = esBisiesto(ano+2000);
	Imprimir bisiesto;
	
	Imprimir "Ingrese el mes en formato MM: ";
	leer mes;
	mes = comprobarDigitosMes(mes);
	
	transformarFecha(mes, ano, bisiesto);
	
FinAlgoritmo

Funcion ano = comprobarDigitos(ano)
	
	Mientras ano > 99 o ano < 0
		Imprimir "Error. Ingrese el año en formato AA...";
		Leer ano;
	FinMientras
	
FinFuncion

Funcion bisiesto = esBisiesto(ano)
	
	Definir bisiesto como Entero;
	
	Si (ano mod 4 == 0) o ((ano mod 400 == 0) y (ano mod 100 <> 0)) Entonces
		bisiesto = 1;
	SiNo
		bisiesto = 0;
	FinSi
	
FinFuncion

Funcion mes = comprobarDigitosMes(mes)
	
	Mientras mes > 12 o mes < 1 Hacer
		Imprimir "Error. Ingrese el mes en formato MM...";
		Leer mes;
	FinMientras
	
FinFuncion

Funcion transformarFecha(mes,ano, bisiesto)
	
	Definir mesNombre Como Caracter;
	Definir dia como Entero;
	
	Segun mes hacer
		1:
			mesNombre = "Enero";
			dia = dias31();
		2:
			mesNombre = "Febrero";
			dia = casoFebrero(bisiesto);
		3:
			mesNombre = "Marzo";
			dia = dias31();
		4:
			mesNombre = "Abril";
			dias = dias30();
		5:
			mesNombre = "Mayo";
			dia = dias31();
		6:
			mesNombre = "Junio";
			dias = dias30();
		7:
			mesNombre = "Julio";
			dia = dias31();
		8:
			mesNombre = "Agosto";
			dia = dias31();
		9:
			mesNombre = "Septiembre";
			dias = dias30();
		10:
			mesNombre = "Octubre";
			dia = dias31();
		11:
			mesNombre = "Noviembre";
			dias = dias30();
		12:
			mesNombre = "Diciembre";
			dia = dias31();
	FinSegun
	
	Imprimir dia, " de ", mesNombre, " de ", ano+2000;
FinFuncion

Funcion dia = dias31
	
	Definir dia Como Entero;
	
	Imprimir "Ingresar dia en formato DD: ";
	Leer dia;
	
	Mientras dia > 31 o dia < 1 Hacer
		Imprimir "Error. Ingrese un número valido para los días (DD):";
		Leer dia;
	FinMientras
	
FinFuncion

Funcion dia = dias30
	
	Definir dia Como Entero;
	
	Imprimir "Ingresar dia en formato DD: ";
	Leer dia;
	
	Mientras dia > 30 o dia < 1 Hacer
		Imprimir "Error. Ingrese un número valido para los días (DD):";
		Leer dia;
	FinMientras
	
FinFuncion

funcion dia = casoFebrero(bisiesto)
	
	Definir dia Como Entero;
	
	Imprimir "Ingresar dia en formato DD: ";
	Leer dia;
	
	Si bisiesto == 1 Entonces
		Mientras dia > 29 o dia < 1 Hacer
			Imprimir "Error. Ingrese un número valido para los días (DD):";
			Leer dia;
		FinMientras
	SiNo
		Mientras dia > 28 o dia < 1 Hacer
			Imprimir "Error. Ingrese un número valido para los días (DD):";
			Leer dia;
		FinMientras
	FinSi
	
FinFuncion