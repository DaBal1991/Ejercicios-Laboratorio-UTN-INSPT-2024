Algoritmo sin_titulo
	
//	Registro de ventas en una farmacia: Desarrolla un programa que permita a una
//	farmacia ingresar los importes de sus ventas durante el día. Junto a cada importe, se
//	deberá ingresar una 'C' si la venta fue realizada con descuento por obra social, o una
//	'S' si la venta fue sin descuento. Al final del día, se ingresará una venta negativa. El
//	programa deberá mostrar el monto total de las ventas del día y el porcentaje de
//	clientes que compraron con descuento y sin descuento.
	
	Definir tipoVenta Como Caracter;
	Definir importe, acum como Real;
	Definir contadorVentas, contadorDescuento, contadorSin Como Entero;
	
	Repetir
		Imprimir "Ingresar importe: ";
		Leer importe;
		
		Si importe > 0 Entonces
			Imprimir "S - Sin descuento. ";
			Imprimir "C - Descuento de obra social.";
			
			Imprimir "Ingresar tipo venta: ";
			Leer tipoVenta;
			
			Mientras tipoVenta <> "C" y tipoVenta <> "S" Hacer
				Imprimir "Ingrese un tipo válido (C o S):";
				Leer tipoVenta;
			FinMientras
			
			Segun tipoVenta Hacer
				"S":
					contadorVentas = contadorVentas + 1;
					acum = acum + importe;
					contadorSin = contadorSin + 1;
				"C":
					contadorVentas = contadorVentas + 1;
					acum = acum + importe;
					contadorDescuento = contadorDescuento + 1;
			FinSegun
		FinSi
	Hasta Que importe < 0; 
	
	Imprimir "Monto total de ventas: $", acum;
	Imprimir "Porcentaje con descuento: ", (contadorDescuento*100)/contadorVentas, "%";
	Imprimir "Porcentaje sin descuento: ", (contadorSin*100)/contadorVentas, "%";
	
	
FinAlgoritmo
