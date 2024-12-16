Algoritmo sin_titulo
	
//	En Trilobite SA el sueldo de una persona se calcula de la siguiente forma:
//	Sueldo Neto = Remuneraciones - Descuentos
//	Sabiendo que:
//	Remuneraciones = Sueldo B�sico + Antig�edad + Presentismo
//	Descuentos = Jubilaci�n + Obra social
//	La antig�edad se calcula de acuerdo a la siguiente tabla:
//	C�digo | Antig�edad| %
//	1 | Menos de un a�o | 0
//	2 | Desde 1 a 3 a�os|10
//	3 | Desde 3 a 5 a�os|15
//	4 | 5 a�os o mas    |20
//	El Presentismo, si corresponde, es el 10% del sueldo b�sico.
//	La jubilaci�n es el 13% de la Remuneraciones.
//	La Obra Social es el 3% de las Remuneraciones.
//	Dise�ar un algoritmo que solicite el sueldo b�sico, si corresponde o no el presentismo (V o F) y el
//	c�digo de antig�edad e informe el total de remuneraciones, el total de descuentos y el sueldo neto
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
			Imprimir "Opci�n no valida...";
	FinSegun
	
FinFuncion

Funcion antig = calculoAntig(sueldoBasico)
	
	Definir antig como Real;
	Definir codigo como entero;
	
	Imprimir "Ingrese c�digo de antiguedad: ";
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
			Imprimir "C�digo incorrecto...";
	FinSegun
	
FinFuncion

Funcion descuentos = calculoDescuentos(remuneraciones)
	
	Definir jubilacion, obraSoc, descuentos como Real;
	
	obraSoc = remuneraciones * 0.03;
	jubilacion = remuneraciones * 0.13;
	
	descuentos = obraSoc + jubilacion;
	
FinFuncion