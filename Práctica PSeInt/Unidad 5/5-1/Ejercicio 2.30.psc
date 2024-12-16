Algoritmo sin_titulo
	
	// Se lee un n�mero no determinado de veces una terna formada por legajo (int), edad (entero)
	// y sueldo (real). El fin del lote se indica con un legajo = -1. Se desea emitir:
	// - el legajo del m�s joven
	// - el sueldo promedio de quienes tengan entre 20 y 30 a�os
	// - el legajo del �ltimo de la lista
	
	Definir legajo, edad, jovenEdad, jovenLegajo, contador, acum, legajoFin Como Entero;
	Definir sueldo, jovenSueldo como Real;
	
	Repetir 
		legajoFin = legajo;
		
		Imprimir "Ingresar legajo: ";
		Leer legajo;
		
		Si legajo <> -1 Entonces
			Imprimir "Ingresar edad: ";
			Leer edad;
			
			Si jovenEdad < edad Entonces
				jovenEdad = edad;
				jovenLegajo = legajo;
			FinSi
			
			Imprimir "Ingresar sueldo: ";
			Leer sueldo;
			
			Si edad > 20 y edad < 30 Entonces
				contador = contador + 1;
				acum = acum + sueldo;
			FinSi
		FinSi
		
	Hasta Que legajo = -1; 
	
	Imprimir "Legajo del mas joven: ", jovenLegajo;
	Si contador > 0 Entonces
		Imprimir "Sueldo promedio de aquellos entre 20 y 30 a�os: $", acum/contador;
	FinSi
	Imprimir "�ltimo legajo: ", legajoFin;
	
	
FinAlgoritmo
