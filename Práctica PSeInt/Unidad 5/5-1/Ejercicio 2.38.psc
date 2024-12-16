Algoritmo sin_titulo
	
	// Se lee un n�mero no determinado de veces un legajo, una edad (entero) y un grupo de 4
	// n�meros reales correspondientes a sueldos. El fin de datos se indica con legajo -1, y no se lee
	// edad ni sueldos en ese caso. Se desea emitir el mayor sueldo promedio cobrado por personas de
	// entre 20 y 30 a�os inclusive, y el legajo de quien lo haya cobrado. Si hay varias personas en esa
	// situaci�n, emitir los datos de la �ltima que verifique la condici�n.
	
	Definir legajo, edad, legajoMejorSueldo, i Como Entero;
	Definir sueldo, acum, promedioSueldo, mayorPromedio Como Real;
	
	Repetir
		Imprimir "Ingresar legajo: ";
		Leer legajo;
		
		Si legajo <> -1 Entonces
			Imprimir "Ingresar edad: ";
			Leer edad;
			
			Para i = 0 hasta 3 Hacer
				Imprimir "Ingresar sueldo: ";
				Leer sueldo;
				
				acum = acum + sueldo;
				promedioSueldo = acum/4;
				
				Si edad >= 20 y edad <= 30 Entonces
					Si promedioSueldo >= mayorPromedio Entonces
						mayorPromedio = promedioSueldo;
						legajoMejorSueldo = legajo;
					FinSi
				FinSi
			FinPara
			
			acum = 0;
			promedioSueldo = 0;
			
		FinSi
		
	Hasta Que legajo == -1; 
	
	Imprimir "Mayor promedio de sueldo de personas entre 20 y 30: ", mayorPromedio;
	Imprimir "Legajo de mayor promedio: ", legajoMejorSueldo;
	
FinAlgoritmo
