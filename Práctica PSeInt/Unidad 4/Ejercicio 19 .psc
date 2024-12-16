Algoritmo sin_titulo
	
	// Realizar un programa que convierta un numero natural en número romano.
	
	Definir natural como Entero;
	
	Imprimir "Ingresar número natural: ";
	Leer natural;
	
	Mientras natural > 3999 y natural < 1 Hacer
		Imprimir "Ingrese un valor entre 1 y 3999: ";
		Leer natural;
	FinMientras
	
	convertirNaturalEnRomano(natural);

	
FinAlgoritmo

Funcion convertirNaturalEnRomano(natural)
	
	Definir millar, centena, decena, unidad como Entero;
	Definir bandera como Entero;
	Definir caracterRomano Como Caracter;
	Definir numeroRomano como Cadena;
	
	Si natural <= 3999 y natural >= 1000 Entonces
		bandera = 1;
		millar = trunc(natural/1000);
		centena = trunc((natural mod 1000)/100);
		decena = trunc(((natural mod 1000) mod 100)/10);
		unidad = ((natural mod 1000) mod 100) mod 10;
	SiNo
		Si natural <= 999 y natural >= 100 Entonces
			bandera = 2;
			centena = trunc((natural mod 1000)/100);
			decena = trunc(((natural mod 1000) mod 100)/10);
			unidad = ((natural mod 1000) mod 100) mod 10;
		SiNo
			bandera = 3;
			Si natural <= 99 y natural >= 10 Entonces
				decena = trunc(((natural mod 1000) mod 100)/10);
				unidad = ((natural mod 1000) mod 100) mod 10;
			Sino
				bandera = 4;
				unidad = ((natural mod 1000) mod 100) mod 10;
			FinSi
		FinSi
	FinSi
	
	// Imprimir millar, " ", centena, " ", decena, " ", unidad;
	// I = 1
	// V = 5 
	// X = 10  
	// L = 50 
	// C = 100 
	// D = 500 
	// M = 1000.
	
	Segun bandera hacer
		1:
			numeroRomano = millarRomano(millar, centena, decena, unidad);
			Imprimir numeroRomano;
		2: 
			numeroRomano = centenaRomana(centena, decena, unidad);
			Imprimir numeroRomano;
		3:
			numeroRomano = decenaRomana(decena, unidad);
			Imprimir numeroRomano;
		4:
			numeroRomano = unidadRomana(unidad);
			Imprimir numeroRomano;
	FinSegun

FinFuncion

Funcion numeroRomano = millarRomano(millar, centena, decena, unidad)
	
	Definir numeroRomano como Cadena;
	Definir caracterRomano Como Caracter;
	
	Mientras millar <> 0 Hacer
		caracterRomano = "M";
		millar = millar - 1;
		numeroRomano = numeroRomano + caracterRomano;
	FinMientras
	
	Si centena <= 3 Entonces
		Mientras centena <> 0 Hacer
			caracterRomano = "C";
			centena = centena - 1;
			numeroRomano = numeroRomano + caracterRomano;
		FinMientras
	SiNo
		Segun centena hacer
			9:
				caracterRomano = "CM";
				numeroRomano = numeroRomano + caracterRomano;
			8:
				caracterRomano = "DCCC";
				numeroRomano = numeroRomano + caracterRomano;
			7:
				caracterRomano = "DCC";
				numeroRomano = numeroRomano + caracterRomano;
			6:
				caracterRomano = "DC";
				numeroRomano = numeroRomano + caracterRomano;
			5:
				caracterRomano = "D";
				numeroRomano = numeroRomano + caracterRomano;
			4:
				caracterRomano = "CD";
				numeroRomano = numeroRomano + caracterRomano;
		FinSegun
	FinSi
	
	Si decena <= 3 Entonces
		Mientras decena <> 0 Hacer
			caracterRomano = "X";
			decena = decena - 1;
			numeroRomano = numeroRomano + caracterRomano;
		FinMientras
	SiNo
		Segun decena hacer
			9:
				caracterRomano = "XC";
				numeroRomano = numeroRomano + caracterRomano;
			8:
				caracterRomano = "LXXX";
				numeroRomano = numeroRomano + caracterRomano;
			7:
				caracterRomano = "LXX";
				numeroRomano = numeroRomano + caracterRomano;
			6:
				caracterRomano = "LX";
				numeroRomano = numeroRomano + caracterRomano;
			5:
				caracterRomano = "L";
				numeroRomano = numeroRomano + caracterRomano;
			4:
				caracterRomano = "XL";
				numeroRomano = numeroRomano + caracterRomano;
		FinSegun
	FinSi
	
	Si unidad <= 3 Entonces
		Mientras unidad <> 0 Hacer
			caracterRomano = "I";
			unidad = unidad - 1;
			numeroRomano = numeroRomano + caracterRomano;
		FinMientras
	SiNo
		Segun unidad hacer
			9:
				caracterRomano = "IX";
				numeroRomano = numeroRomano + caracterRomano;
			8:
				caracterRomano = "VIII";
				numeroRomano = numeroRomano + caracterRomano;
			7:
				caracterRomano = "VII";
				numeroRomano = numeroRomano + caracterRomano;
			6:
				caracterRomano = "VI";
				numeroRomano = numeroRomano + caracterRomano;
			5:
				caracterRomano = "V";
				numeroRomano = numeroRomano + caracterRomano;
			4:
				caracterRomano = "IV";
				numeroRomano = numeroRomano + caracterRomano;
		FinSegun
	FinSi
	
FinFuncion

Funcion numeroRomano = centenaRomana(centena, decena, unidad)
	
	Definir numeroRomano como Cadena;
	Definir caracterRomano Como Caracter;
	
	Si centena <= 3 Entonces
		Mientras centena <> 0 Hacer
			caracterRomano = "C";
			centena = centena - 1;
			numeroRomano = numeroRomano + caracterRomano;
		FinMientras
	SiNo
		Segun centena hacer
			9:
				caracterRomano = "CM";
				numeroRomano = numeroRomano + caracterRomano;
			8:
				caracterRomano = "DCCC";
				numeroRomano = numeroRomano + caracterRomano;
			7:
				caracterRomano = "DCC";
				numeroRomano = numeroRomano + caracterRomano;
			6:
				caracterRomano = "DC";
				numeroRomano = numeroRomano + caracterRomano;
			5:
				caracterRomano = "D";
				numeroRomano = numeroRomano + caracterRomano;
			4:
				caracterRomano = "CD";
				numeroRomano = numeroRomano + caracterRomano;
		FinSegun
	FinSi
	
	Si decena <= 3 Entonces
		Mientras decena <> 0 Hacer
			caracterRomano = "X";
			decena = decena - 1;
			numeroRomano = numeroRomano + caracterRomano;
		FinMientras
	SiNo
		Segun decena hacer
			9:
				caracterRomano = "XC";
				numeroRomano = numeroRomano + caracterRomano;
			8:
				caracterRomano = "LXXX";
				numeroRomano = numeroRomano + caracterRomano;
			7:
				caracterRomano = "LXX";
				numeroRomano = numeroRomano + caracterRomano;
			6:
				caracterRomano = "LX";
				numeroRomano = numeroRomano + caracterRomano;
			5:
				caracterRomano = "L";
				numeroRomano = numeroRomano + caracterRomano;
			4:
				caracterRomano = "XL";
				numeroRomano = numeroRomano + caracterRomano;
		FinSegun
	FinSi
	
	Si unidad <= 3 Entonces
		Mientras unidad <> 0 Hacer
			caracterRomano = "I";
			unidad = unidad - 1;
			numeroRomano = numeroRomano + caracterRomano;
		FinMientras
	SiNo
		Segun unidad hacer
			9:
				caracterRomano = "IX";
				numeroRomano = numeroRomano + caracterRomano;
			8:
				caracterRomano = "VIII";
				numeroRomano = numeroRomano + caracterRomano;
			7:
				caracterRomano = "VII";
				numeroRomano = numeroRomano + caracterRomano;
			6:
				caracterRomano = "VI";
				numeroRomano = numeroRomano + caracterRomano;
			5:
				caracterRomano = "V";
				numeroRomano = numeroRomano + caracterRomano;
			4:
				caracterRomano = "IV";
				numeroRomano = numeroRomano + caracterRomano;
		FinSegun
	FinSi
	
FinFuncion

Funcion numeroRomano = decenaRomana(decena, unidad)
	
	Definir numeroRomano como Cadena;
	Definir caracterRomano Como Caracter;
	
	Si decena <= 3 Entonces
		Mientras decena <> 0 Hacer
			caracterRomano = "X";
			decena = decena - 1;
			numeroRomano = numeroRomano + caracterRomano;
		FinMientras
	SiNo
		Segun decena hacer
			9:
				caracterRomano = "XC";
				numeroRomano = numeroRomano + caracterRomano;
			8:
				caracterRomano = "LXXX";
				numeroRomano = numeroRomano + caracterRomano;
			7:
				caracterRomano = "LXX";
				numeroRomano = numeroRomano + caracterRomano;
			6:
				caracterRomano = "LX";
				numeroRomano = numeroRomano + caracterRomano;
			5:
				caracterRomano = "L";
				numeroRomano = numeroRomano + caracterRomano;
			4:
				caracterRomano = "XL";
				numeroRomano = numeroRomano + caracterRomano;
		FinSegun
	FinSi
	
	Si unidad <= 3 Entonces
		Mientras unidad <> 0 Hacer
			caracterRomano = "I";
			unidad = unidad - 1;
			numeroRomano = numeroRomano + caracterRomano;
		FinMientras
	SiNo
		Segun unidad hacer
			9:
				caracterRomano = "IX";
				numeroRomano = numeroRomano + caracterRomano;
			8:
				caracterRomano = "VIII";
				numeroRomano = numeroRomano + caracterRomano;
			7:
				caracterRomano = "VII";
				numeroRomano = numeroRomano + caracterRomano;
			6:
				caracterRomano = "VI";
				numeroRomano = numeroRomano + caracterRomano;
			5:
				caracterRomano = "V";
				numeroRomano = numeroRomano + caracterRomano;
			4:
				caracterRomano = "IV";
				numeroRomano = numeroRomano + caracterRomano;
		FinSegun
	FinSi
	
FinFuncion

Funcion numeroRomano = unidadRomana(unidad)
	
	Definir numeroRomano como Cadena;
	Definir caracterRomano Como Caracter;
	
	Si unidad <= 3 Entonces
		Mientras unidad <> 0 Hacer
			caracterRomano = "I";
			unidad = unidad - 1;
			numeroRomano = numeroRomano + caracterRomano;
		FinMientras
	SiNo
		Segun unidad hacer
			9:
				caracterRomano = "IX";
				numeroRomano = numeroRomano + caracterRomano;
			8:
				caracterRomano = "VIII";
				numeroRomano = numeroRomano + caracterRomano;
			7:
				caracterRomano = "VII";
				numeroRomano = numeroRomano + caracterRomano;
			6:
				caracterRomano = "VI";
				numeroRomano = numeroRomano + caracterRomano;
			5:
				caracterRomano = "V";
				numeroRomano = numeroRomano + caracterRomano;
			4:
				caracterRomano = "IV";
				numeroRomano = numeroRomano + caracterRomano;
		FinSegun
	FinSi
	
FinFuncion
