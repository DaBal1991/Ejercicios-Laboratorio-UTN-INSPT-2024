Algoritmo sin_titulo
	
	// En un almacén se hace un 20% de descuento a los clientes cuya compra supere los
	// $10000, se ingresa el importe y se debe informar cual será la cantidad que pagara por su
	// compra.
	
	Definir compra, descuento como Real;
	
	descuento = 0.80;
	
	compra = ingresarValorReal();
	
	Si compra > 10000 Entonces
		compra = compra * descuento;
		Imprimir "Precio final: $", compra;
	SiNo
		Imprimir "Precio final: $", compra;
	FinSi
	
	
FinAlgoritmo

SubAlgoritmo numReal = ingresarValorReal
	
	Definir numReal como Real;
	
	Imprimir "Ingresar un valor real: ";
	Leer numReal;
	
FinSubAlgoritmo