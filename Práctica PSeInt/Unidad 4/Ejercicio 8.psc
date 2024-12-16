Algoritmo sin_titulo
	
//	En un supermercado se hace una promoción, mediante la cual el cliente obtiene un
//	descuento dependiendo de un número que se escoge al azar. Si el número escogido es
//	menor que 74 el descuento es del 15% sobre el total de la compra, si es mayor o igual a 74
//	el descuento es del 20%. Obtener cuánto dinero se le descuenta.
	
	Definir num Como Entero;
	Definir precio como Real;
	
	Imprimir "Ingresar valor de compra: ";
	Leer precio;
	
	num = Aleatorio(1,100);
	
	Si num < 74 Entonces
		precio = precio *0.85;
	SiNo
		precio = precio*0.80;
	FinSi
	
	Imprimir "Número Aleatorio: ", num;
	Imprimir "Precio Final: $", precio;
	
FinAlgoritmo
