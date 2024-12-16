Algoritmo sin_titulo
	
	// Durante el día, una farmacia ingresa los importes de sus ventas. Junto a cada importe, se
	// ingresa una 'C', si la venta fue realizada con descuento por obra social, o una 'S', si la venta fue
	// sin descuento. Al final del día, se ingresa una venta negativa. La computadora muestra el monto
	// total de las ventas del día y el porcentaje de clientes que compraron con descuento.
	
	Definir ventas, recaudacion, ventasTotales, ventasDescuento, acum Como Real;
	Definir tipoVenta Como Caracter;
	
	Repetir
		
		Imprimir "Ingresar importe de la venta: ";
		Leer ventas;
		
		Si ventas > 0 Entonces
			Imprimir "Tipo de venta: ";
			Leer tipoVenta;
			
			Mientras tipoVenta <> "C" y tipoVenta <> "S" Hacer
				Imprimir "Ingrese un tipo válido de venta: ";
				Leer tipoVenta;
			FinMientras
			
			Segun tipoVenta Hacer
				"C":
					acum = acum + ventas;
					ventasTotales = ventasTotales + 1;
				"S":
					acum = acum + ventas;
					ventasTotales = ventasTotales + 1;
					ventasDescuento = ventasDescuento + 1;
			FinSegun
			
		FinSi
		
	Hasta Que ventas < 0;
	
	Imprimir "Recaudación Total: $", acum;
	Imprimir "Porcentaje Ventas con Descuento: ", (ventasDescuento*100)/ventasTotales , "%";
	
FinAlgoritmo
