Algoritmo sin_titulo	
	
	//	Cálculo del vuelto: Implementa un programa que, dados el importe de una compra y
	//	el valor de un único billete suficiente para el pago, muestre la composición del vuelto
	//	utilizando billetes de 10000, 2000, 1000, 100, 50, 20 y 10.
	
	Definir importe, vuelto, pago Como Real;
	Definir contador10000, contador2000, contador1000, contador100, contador50, contador20, contador10 Como Entero;
	
	Imprimir "Ingresar el pago: ";
	Leer pago;
	
	Imprimir "Ingresar importe: ";
	Leer importe;
	
	vuelto = pago - importe;
	
	Imprimir "Vuelto a entregar: ", vuelto;
	Si vuelto > 0 Entonces
		Mientras vuelto >= 10000 Hacer
			vuelto = vuelto - 10000;
			contador10000 = contador10000 + 1;
		FinMientras
		
		Mientras vuelto >= 2000 Hacer
			vuelto = vuelto - 2000;
			contador2000 = contador2000 + 1;
		FinMientras
		
		Mientras vuelto >= 1000 Hacer
			vuelto = vuelto - 1000;
			contador1000 = contador1000 + 1;
		FinMientras
		
		Mientras vuelto >= 100 Hacer
			vuelto = vuelto - 100;
			contador100 = contador100 + 1;
		FinMientras
		
		Mientras vuelto >= 50 Hacer
			vuelto = vuelto - 50;
			contador50 = contador50 + 1;
		FinMientras
		
		Mientras vuelto >= 20 Hacer
			vuelto = vuelto - 20;
			contador20 = contador20 + 1;
		FinMientras
		
		Mientras vuelto >= 10 Hacer
			vuelto = vuelto - 10;
			contador10 = contador10 + 1;
		FinMientras
		
		Si vuelto <= 10 Entonces
			Imprimir "Vuelto se compone de: ";
			Imprimir contador10000, " billetes de $10000";
			Imprimir contador2000, " billetes de $2000";
			Imprimir contador1000, " billetes de $1000";
			Imprimir contador100, " billetes de $100";
			Imprimir contador50, " billetes de $50";
			Imprimir contador20, " billetes de $20";
			Imprimir contador10, " billetes de $10";
		FinSi
	SiNo
		Imprimir "Falta pagar: $", vuelto*(-1);
	FinSi
	
	
	
FinAlgoritmo
