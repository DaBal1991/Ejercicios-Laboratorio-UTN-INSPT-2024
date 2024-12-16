Algoritmo sin_titulo
	
//	En una tienda de descuento se efectúa una promoción en la cual se hace un descuento sobre
//	el valor de la compra total según el color de la bolita que el cliente saque al pagar en caja.
//	Si la bolita es de color blanco no se le hará descuento alguno, si es verde se le hará un 10%
//	de descuento, si es amarilla un 25%, si es azul un 50% y si es roja un 100%. Determinar la
//	cantidad final que el cliente deberá pagar por su compra se sabe que solo hay bolitas de los
//	colores mencionados.
	
	Definir valorCompra, precioFinal como Real;
	
	Imprimir "Ingresar valor de la compra: ";
	Leer valorCompra;
	
	precioFinal = determinarPrecioFinal(valorCompra);
	
	Si precioFinal <> -1 Entonces
		Imprimir "Precio Final: $", precioFinal;
	SiNo
		Imprimir "Error en la operación. Reintentar";
	FinSi
	
FinAlgoritmo

Funcion precioFinal = determinarPrecioFinal(valorCompra)
	
	Definir precioFinal Como Real;
	Definir color Como Caracter;
	
	Imprimir "A - Blanca";
	Imprimir "B - Verde";
	Imprimir "C - Amarillo";
	Imprimir "D - Azul";
	Imprimir "E - Roja";
	
	Imprimir "Ingresar color de la bolita: ";
	Leer color;
	
	Segun color hacer
		"A":
			precioFinal = valorCompra;
		"B":
			precioFinal = valorCompra*0.90;
		"C":
			precioFinal = valorCompra*0.75;
		"D":
			precioFinal = valorCompra*0.50;
		"E":
			precioFinal = valorCompra*0;
		De Otro Modo:
			precioFinal = -1;
	FinSegun
	
FinFuncion