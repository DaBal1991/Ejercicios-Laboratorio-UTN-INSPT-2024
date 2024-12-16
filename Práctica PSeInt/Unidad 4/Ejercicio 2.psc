Algoritmo sin_titulo
	
//	Una empresa que transporta encomiendas, calcula el costo de cada una de ellas en base al tipo y
//	destino de la misma. Partiendo de un básico de $300, los recargos que se aplican son los siguientes:
//
//	Según el Tipo:
//	S (Simple) 0%
//	X (Expreso) 20%
//	E (Especial) 40%
//
//	Segúm el Destino:
//	L (Local) 5%
//	N (Exterior) 20%
//
//	Diseñar un algoritmo que solicite el tipo y destino de la encomienda y devuelva el costo.
	
	Definir basico, precioFinal como Real;
	Definir tipo, destino Como Caracter;
	
	Imprimir "Ingrese el tipo: ";
	Leer tipo;
	
	Imprimir "Ingrese el destino: ";
	Leer destino;
	
	basico = 300;
	
	precioFinal = calcularPrecioEncomienda(basico, tipo, destino);
	
	Imprimir "Costo de encomienda = $", precioFinal;
	
FinAlgoritmo

Funcion precioFinal = calcularPrecioEncomienda(basico, tipo, destino)
	
	Definir precioIntermedio, precioFinal como Real;
	
	Segun tipo hacer
		"S":
			Imprimir "Simple: 0%";
			precioIntermedio = basico;
			precioFinal = calcularTipo(precioIntermedio, destino);
		"X":
			Imprimir "Expreso: 20%";
			precioIntermedio = basico + (basico*0.20);
			precioFinal = calcularTipo(precioIntermedio, destino);
		"E": 
			Imprimir "Especial: 40%";
			precioIntermedio = basico + (basico*0.40);
			precioFinal = calcularTipo(precioIntermedio, destino);
		De Otro Modo:
			Imprimir "Opción errónea...";
	FinSegun
	
FinFuncion

Funcion precioFinal = calcularTipo(precioIntermedio, destino)
	
	Definir precioFinal como Real;
	
	Segun destino hacer
		"L":
			Imprimir "Local: 5%";
			precioFinal = precioIntermedio + (precioIntermedio*0.05);
		"N":
			Imprimir "Exterior: 20%";
			precioFinal = precioIntermedio + (precioIntermedio*0.20);
		De Otro Modo:
			Imprimir "Opcion errónea...";
	FinSegun
	
FinFuncion