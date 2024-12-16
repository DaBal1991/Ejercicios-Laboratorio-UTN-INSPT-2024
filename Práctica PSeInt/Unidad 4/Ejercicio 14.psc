Algoritmo sin_titulo
	
//	Permita calcular el total a pagar por la compra de N camisas. Si se compran entre 1 a 4 camisas
//	se aplica un descuento del 12.5%, si se compra una cantidad comprendida entre 5 y 8 camisas se
//	aplica un descuento del 20% y si se compran cantidades mayores, se aplica un descuento del
//	31.5% sobre el total de la compra. Debe imprimirse en pantalla la compra final sin descuento,
//	monto del descuento y la compra con descuento.
	
	Definir camisas como Entero;
	Definir precioFinal, precioSinDesc, montoDesc, precioPorUnidad Como Real;
	
	Imprimir "Ingrese la cantidad de camisas: ";
	Leer camisas;
	
	Imprimir "Ingresar precio por unidad: ";
	Leer precioPorUnidad;
	
	Si camisas >= 1 y camisas <= 4 Entonces
		montoDesc = 12.5;
		precioSinDesc = precioPorUnidad * camisas;
		precioFinal = precioSinDesc * (100-montoDesc)/100;
	SiNo
		Si camisas >= 5 y camisas <= 8 Entonces
			montoDesc = 20;
			precioSinDesc = precioPorUnidad * camisas;
			precioFinal = precioSinDesc * (100 - montoDesc)/100;
		SiNo
			montoDesc = 31.5;
			precioSinDesc = precioPorUnidad * camisas;
			precioFinal = precioSinDesc * (100 - montoDesc)/100;
		FinSi
	FinSi
	
	Imprimir "Precio Sin Descuento = $", precioSinDesc;
	iMPRIMIR "Descuento = $", (montoDesc/100)*precioSinDesc;
	Imprimir "Precio Final = $", precioFinal;
	
FinAlgoritmo
