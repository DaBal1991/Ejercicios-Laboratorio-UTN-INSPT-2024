Algoritmo sin_titulo
	
//	Dado un valor entero de tres cifras, realizar un algoritmo que devuelva el un nuevo
//	valor formado con sus tres cifras ordenadas de menor a mayor. (Ejemplo: Sin ingresa el
//	numero 512, el programa debe devolver el numero 125). En la salida mostrar ambos
//	valores.
	
	Definir num, unidad, decena, centena, aux Como Entero;
	
	num = ingresarValorEntero();
	
	Mientras num < 100 o num > 999 Hacer
		num = ingresarValorEntero();
	FinMientras
	
	centena = trunc(num/100);
	decena = trunc((num mod 100)/10);
	unidad = (num mod 100) mod 10;
	
	Si unidad < centena Entonces
		aux = unidad;
		unidad = centena;
		centena = aux;
	FinSi
	
	Si unidad < decena Entonces
		aux = unidad;
		unidad = decena;
		decena = aux;
	FinSi
	
	Si decena < centena Entonces
		aux = decena;
		decena = centena;
		centena = aux;
	FinSi
	
	aux = (centena*100)+(decena*10)+unidad;
	
	Imprimir "Valor ingresado: ", num;
	Imprimir "Valor reordenado: ", aux;
	
FinAlgoritmo

SubAlgoritmo numEntero = ingresarValorEntero
	
	Definir numEntero como Entero;
	
	Imprimir "Ingresar un valor entero: ";
	Leer numEntero;
	
FinSubAlgoritmo
