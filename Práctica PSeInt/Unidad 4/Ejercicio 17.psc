Algoritmo sin_titulo
	
//	Solicite los par�metros necesarios para resolver una ecuaci�n de 2do grado por medio de la
//	ecuaci�n cuadr�tica general. El algoritmo retornara las soluciones reales (x1 y x2). En caso que
//	la ecuaci�n no tenga soluci�n, debe justificar el motivo que no permite resolverla.
//	Probar con: A = 2, B = 5 y C = -3 ; A = 0, B = 2, C = -1 ; A = 1, B = 1, C = 1
	
	Definir A, B, C, x1, x2 Como Real;
	
	Imprimir "Ingresar A, B y C de la ecuaci�n cuadr�tica";
	Leer A, B, C;
	
	Si (B*B) - 4*A*C < 0 Entonces
		Imprimir "No es posible calcular la soluci�n dado que no existen soluciones en Reales para ra�ces negativas...";
	SiNo
		Si 2*A == 0 Entonces
			Imprimir "No es posible dividir por cero...";
		SiNo
			x1 = (-B + raiz((B*B) - 4*A*C))/(2*A);
			x2 = (-B - raiz((B*B) - 4*A*C))/(2*A);
			Imprimir "x1 = ", x1;
			Imprimir "x2 = ", x2;
		FinSi
	FinSi
	
FinAlgoritmo
