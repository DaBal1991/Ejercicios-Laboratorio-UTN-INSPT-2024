Algoritmo sin_titulo
	
//	Realizar un programa que defina un vector llamado vecNum de 10 enteros, a continuación,
//	lo inicialice con valores aleatorios (del 1 al 10) y posteriormente muestre en pantalla cada
//	elemento del vector junto con su cuadrado y su cubo.
	
	Definir i, vecNum Como Entero;
	Dimension vecNum[10];
	
	Para i = 0 Hasta 9 Hacer
		vecNum[i] = Aleatorio(1,10);
	FinPara
	
	Para i = 0 Hasta 9 Hacer
		Imprimir "Valor: ", vecNum[i], " | Cuadrado: ", vecNum[i]*vecNum[i], " | Cubo: ", vecNum[i]*vecNum[i]*vecNum[i];
	FinPara
	
FinAlgoritmo
