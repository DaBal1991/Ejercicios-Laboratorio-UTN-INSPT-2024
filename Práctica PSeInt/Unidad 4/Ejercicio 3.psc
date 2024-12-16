Algoritmo sin_titulo
	
//	En Trilobite SA el sueldo de una persona se calcula de la siguiente forma:
//	Sueldo Neto = Remuneraciones - Descuentos
//	Sabiendo que:
//	Remuneraciones = Sueldo Básico + Antigüedad + Presentismo
//	Descuentos = Jubilación + Obra social
//	La antigüedad se calcula de acuerdo a la siguiente tabla:
//	Código | Antigüedad| %
//	1 | Menos de un año | 0
//	2 | Desde 1 a 3 años|10
//	3 | Desde 3 a 5 años|15
//	4 | 5 años o mas    |20
//	El Presentismo, si corresponde, es el 10% del sueldo básico.
//	La jubilación es el 13% de la Remuneraciones.
//	La Obra Social es el 3% de las Remuneraciones.
//	Diseñar un algoritmo que solicite el sueldo básico, si corresponde o no el presentismo (V o F) y el
//	código de antigüedad e informe el total de remuneraciones, el total de descuentos y el sueldo neto
//	del empleado.
	
	Definir remuneraciones, descuentos Como Real;
	Definir sueldoBasico, sueldoNeto como Real;
	
	Imprimir "Ingrese el sueldo basico: ";
	Leer sueldoBasico;
	
	remuneraciones = calculoRemuneracion(sueldoBasico);
	descuentos = calculoDescuentos(remuneraciones);
	
	Imprimir "Sueldo Neto = $", remuneraciones - descuentos;
	
FinAlgoritmo

Funcion remuneraciones = calculoRemuneracion(sueldoBasico)
	
	Definir presentismo Como Caracter;
	Definir calculo, antig, remuneraciones como Real;
	
	Imprimir "Ingrese V o F segun si corresponde el presentismo: ";
	Leer presentismo;
	
	Segun presentismo Hacer
		"V":
			calculo = sueldoBasico + (sueldoBasico*0.10);
			antig = calculoAntig(sueldoBasico);
			remuneraciones = calculo + antig;
		"F":
			calculo = sueldoBasico;
			antig = calculoAntig(sueldoBasico);
			remuneraciones = calculo + antig;
		De Otro Modo:
			Imprimir "Opción no valida...";
	FinSegun
	
FinFuncion

Funcion antig = calculoAntig(sueldoBasico)
	
	Definir antig como Real;
	Definir codigo como entero;
	
	Imprimir "Ingrese código de antiguedad: ";
	Leer codigo;
	
	Segun codigo hacer
		1:
			antig = 0;
		2:
			antig = sueldoBasico*0.10;
		3:
			antig = sueldoBasico*0.15;
		4:
			antig = sueldoBasico*0.20;
		De Otro Modo:
			Imprimir "Código incorrecto...";
	FinSegun
	
FinFuncion

Funcion descuentos = calculoDescuentos(remuneraciones)
	
	Definir jubilacion, obraSoc, descuentos como Real;
	
	obraSoc = remuneraciones * 0.03;
	jubilacion = remuneraciones * 0.13;
	
	descuentos = obraSoc + jubilacion;
	
FinFuncion