Algoritmo sin_titulo
	
//	Operaciones con una serie de números: Desarrolla un programa que lea una serie
//	de números (N números) de uno en uno. El programa debe realizar las siguientes
//operaciones:
//	a) Calcular la cantidad de números positivos.
//	b) Mostrar el valor del primer y último número leído.
//	c) Calcular la sumatoria de todos los números.
//	d) Calcular la productoria de todos los números.
	
	Definir num, primerValor, ultimoValor, sumatoria, productoria Como Real;
	Definir N, contadorPositivo, i Como Entero;
	
	productoria = 1;
	
	Imprimir "Ingresar cantidad de valores a leer: ";
	Leer N;
	
	Para i = 0 hasta N-1 Hacer
		
		Imprimir "Ingresar valor: ";
		Leer num;
		
		sumatoria = sumatoria + num;
		productoria = productoria * num;
		
		Si num < 0 Entonces
			contadorPositivo = contadorPositivo + 1;
		FinSi
		
		Si i == 0 Entonces
			primerValor = num;
		SiNo
			Si i == N-1 Entonces
				ultimoValor = num;
			FinSi
		FinSi
	FinPara
	
	Imprimir "Cantidad de valores positivos: ", contadorPositivo;
	Imprimir "Sumatoria: ", sumatoria;
	Imprimir "Productoria: ", productoria;
	Imprimir "Primer valor ingresado: ", primerValor;
	Imprimir "Ultimo valor ingresado: ", ultimoValor;
	
	
FinAlgoritmo
