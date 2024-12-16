Algoritmo sin_titulo
	
	// Dados el importe de una compra y el valor de un único billete o moneda suficiente para el
	// pago, la computadora muestra la composición del vuelto que requiera menos billetes y monedas.
	// Considerar billetes de 100,50,20,10,5 y 2, y monedas de 1, 0.5, 0.25, 0.10.
	
	Definir importe, pago como Real;
	Definir bandera Como Entero;
	
	Imprimir "Ingresar importe de la compra: ";
	Leer importe;
	
	Mientras importe > 100 o importe < 0 Hacer
		Imprimir "Ingrese un valor entre 0 y 100: ";
		Leer importe;
	FinMientras
	
	Imprimir "Ingrese el monto de pago: ";
	Leer pago;
	
	Mientras pago > 100 o pago < 0 Hacer
		Imprimir "Ingrese un valor entre 0 y 100: ";
		Leer pago;
	FinMientras
	
	Si importe <= 1 y importe > 0 Entonces
		bandera = 1;
	SiNo
		bandera = 2;
	FinSi
	
	tipoVuelto(bandera, importe, pago);
	
FinAlgoritmo

Funcion tipoVuelto(bandera, importe, pago)
	
	Segun bandera hacer
		1:
			vueltoMoneda(importe, pago);
		2:
			vueltoBillete(importe, pago);
	FinSegun
	
FinFuncion

Funcion vueltoBillete(importe, pago)
	
	Definir vuelto como Real;
	Definir contador50, contador20, contador10, contador5, contador2 Como Real;
	
	Si importe < pago Entonces
		vuelto = importe - pago;
		
		Imprimir "Vuelto: $", vuelto;
		
		Mientras vuelto < 0 Hacer
			
			Si vuelto <= -50 Entonces
				Mientras vuelto <= -50 Hacer
					vuelto = vuelto + 50;
					contador50 = contador50 + 1;
				FinMientras
			FinSi
			
			Si vuelto <= -20 Entonces
				Mientras vuelto <= -20 Hacer
					vuelto = vuelto + 20;
					contador20 = contador20 + 1;
				FinMientras
			FinSi
			
			Si vuelto <= -10 Entonces
				Mientras vuelto <= -10 Hacer
					vuelto = vuelto + 10;
					contador10 = contador10 + 1;
				FinMientras
			FinSi
			
			Si vuelto <= -5 Entonces
				Mientras vuelto <= -5 Hacer
					vuelto = vuelto + 5;
					contador5 = contador5 + 1;
				FinMientras
			FinSi
			
			Si vuelto <= -2 Entonces
				Mientras vuelto <= -2 Hacer
					vuelto = vuelto + 2;
					contador2 = contador2 + 1;
				FinMientras
			FinSi
			
		FinMientras
	FinSi
	
	Imprimir "Cantidad de billetes de vuelto: ";
	Imprimir "Billetes de $50: ", contador50;
	Imprimir "Billetes de $20: ", contador20;
	Imprimir "Billetes de $10: ", contador10;
	Imprimir "Billetes de $5: ", contador5;
	Imprimir "Billetes de $2: ", contador2;
	
FinFuncion

Funcion vueltoMoneda(importe, pago)
	
	Definir vuelto como Real;
	Definir contador50, contador25, contador10 Como Real;
	
	Si importe < pago Entonces
		vuelto = importe - pago;
		
		Imprimir "Vuelto: $", vuelto;
		
		Mientras vuelto < 0 Hacer
			
			Si vuelto <= -0.5 Entonces
				Mientras vuelto <= -0.5 Hacer
					vuelto = vuelto + 0.5;
					contador50 = contador50 + 1;
				FinMientras
			FinSi
			
			Si vuelto <= -0.25 Entonces
				Mientras vuelto <= -0.25 Hacer
					vuelto = vuelto + 0.25;
					contador25 = contador25 + 1;
				FinMientras
			FinSi
			
			Si vuelto <= -0.1 Entonces
				Mientras vuelto <= -0.1 Hacer
					vuelto = vuelto + 0.1;
					contador10 = contador10 + 1;
				FinMientras
			FinSi
			
		FinMientras
	FinSi
	
	Imprimir "Cantidad de billetes de vuelto: ";
	Imprimir "Billetes de $0.5: ", contador50;
	Imprimir "Billetes de $0.25: ", contador25;
	Imprimir "Billetes de $0.10: ", contador10;
	
FinFuncion
	