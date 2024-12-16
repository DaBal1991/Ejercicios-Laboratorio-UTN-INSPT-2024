Algoritmo sin_titulo
	
//	Solicite los parámetros necesarios para resolver una ecuación de 2do grado por medio de la
//	ecuación cuadrática general. El algoritmo retornara las soluciones reales (x1 y x2). En caso que
//	la ecuación no tenga solución, debe justificar el motivo que no permite resolverla.
//	Probar con: A = 2, B = 5 y C = -3 ; A = 0, B = 2, C = -1 ; A = 1, B = 1, C = 1
	
	Definir A, B, C, x1, x2 Como Real;
	
	Imprimir "Ingresar A, B y C de la ecuación cuadrática";
	Leer A, B, C;
	
	Si (B*B) - 4*A*C < 0 Entonces
		Imprimir "No es posible calcular la solución dado que no existen soluciones en Reales para raíces negativas...";
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
