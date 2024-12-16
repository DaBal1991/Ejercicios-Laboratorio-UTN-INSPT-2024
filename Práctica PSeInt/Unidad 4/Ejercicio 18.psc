Algoritmo sin_titulo
	
	// Elabore un conversor de medidas de longitud. El usuario podrá elegir entre las siguientes
	// unidades de medida: a) Metros b) Pies c) Centimetros d) Pulgadas
	
	Definir num, metros, pies, centimetros, pulgadas como Reales;
	Definir unidad, unidadFinal Como Caracter;
	
	Imprimir "A. Metros.";
	Imprimir "B. Pies.";
	Imprimir "C. Centimetros.";
	Imprimir "D. Pulgadas.";
	
	Imprimir "Ingresar unidad inicial: ";
	Leer unidad;
	
	Mientras unidad <> "A" y unidad <> "B" y unidad <> "C" y unidad <> "D" Hacer
		Imprimir "Ingrese una opción válida: ";
		Leer unidad;
	FinMientras
	
	Imprimir "Ingresar un valor a convertir: ";
	Leer num;
	
	Imprimir "Ingresar unidad deseada: ";
	Leer unidadFinal;
	
	Mientras unidadFinal <> "A" y unidadFinal <> "B" y unidadFinal <> "C" y unidadFinal <> "D" Hacer
		Imprimir "Ingrese una opción válida: ";
		Leer unidad;
	FinMientras
	
	Segun unidad hacer
		"A":
			Segun unidadFinal Hacer
				"A":
					Imprimir num, " Metros";
				"B":
					Imprimir num*3.281, " Pies";
				"C":
					Imprimir num*100, " Centimetros";
				"D":
					Imprimir num*39.37," Pulgadas";
			FinSegun
		"B":
			Segun unidadFinal hacer
				"A":
					Imprimir num/3.281, " Metros";
				"B":
					Imprimir num, "Pies";
				"C":
					Imprimir num*30.48, " Centimetros";
				"D":
					Imprimir num*12, "Pulgadas";
			FinSegun
		"C":
			Segun unidadFinal hacer
				"A":
					Imprimir num/100, " Metros";
				"B":
					Imprimir num*30.48, "Pies";
				"C":
					Imprimir num, " Centimetros";
				"D":
					Imprimir num*2.54, "Pulgadas";
			FinSegun
		"D":
			Segun unidadFinal hacer
				"A":
					Imprimir num/39.37, " Metros";
				"B":
					Imprimir num/12, "Pies";
				"C":
					Imprimir num*2.54, " Centimetros";
				"D":
					Imprimir num, "Pulgadas";
			FinSegun
	FinSegun
	
	
FinAlgoritmo
