Algoritmo sin_titulo
	
	//  Se ingresa una lista de pares ordenados (número de socio, edad). El último es ('*', 0). La
	// computadora debe indicar cuántas personas tienen más de 18 años y menos de 65, el número de
	// socio del mayor y del menor.
	
	Definir edad, contador, mayorEdad, menorEdad, numeroSocio Como Entero;
	
	menorEdad = 999;
	
	Repetir
		
		Imprimir "Ingresar N° Socio: ";
		Leer numeroSocio;
		
		Imprimir "Ingresar edad: ";
		Leer edad;
		
		Si edad <> 0 Entonces
			Si edad > 18 y edad < 65 Entonces
				contador = contador + 1;
			FinSi
			
			Si edad < menorEdad y edad <> 0 Entonces
				menorEdad = numeroSocio;
			FinSi
			
			Si edad > mayorEdad y edad <> 0 Entonces
				mayorEdad = numeroSocio;
			FinSi
		FinSi
		
	Hasta Que edad == 0; 
	
	Imprimir "Cantidad de socios entre 18 y 65 años: ",  contador;
	Imprimir "Socio menor: ", menorEdad;
	Imprimir "Socio mayor: ", mayorEdad;
	
FinAlgoritmo
