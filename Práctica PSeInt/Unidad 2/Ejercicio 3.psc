Algoritmo sin_titulo
	
	Definir precioLista, descuento, precioFinal Como Real;
	
	descuento = 0.82;
	
	// Un negocio de prendas de vestir decide hacer una liquidación de fin de temporada, le aplica a la mercadería un descuento del 18% sobre el precio marcado.
	// Escribir un programa para que dado un precio de una prenda obtenga el precio con descuento.
	// En la entrada de datos un mensaje debe decir: Indicar precio de lista.
	// la salida será:
	// 		Precio de Lista: $XXX,XX
	// 		Descuento: 18% sobre el precio de lista
	// 		Precio con Descuento: $XXX,XX
	
	Imprimir "Indicar precio de lista: ";
	Leer precioLista;
	
	precioFinal = precioLista*descuento;
	
	Imprimir "Precio de Lista: $", precioLista;
	Imprimir "Descuento: 18% sobre el precio de lista";
	Imprimir "Precio con Descuento: $", precioFinal;
	
FinAlgoritmo
