Algoritmo sin_titulo
	
	// Un obrero necesita calcular su salario semanal, el cual se obtiene de la siguiente
	// manera: Si trabaja 40 horas o menos se le paga un salario de $16 por hora, si trabaja
	// más de 40 horas se le paga un salario de $16 por cada una de las primeras 40 horas y un
	// salario de $20 por cada hora extra.
	
	Definir horasTrabajadas, salario, horasExtra como Real;
	
	horasTrabajadas = ingresarValorReal();
	
	Si horasTrabajadas <= 40 Entonces
		salario = horasTrabajadas*16;
		Imprimir "Salario semanal: $", salario;
	SiNo
		horasExtra = (horasTrabajadas - 40)*20;
		salario = 40*16 + horasExtra;
		Imprimir "Salario semanal: $", salario;
	FinSi
	
FinAlgoritmo

SubAlgoritmo numReal = ingresarValorReal
	
	Definir numReal como Real;
	
	Imprimir "Ingresar un valor real: ";
	Leer numReal;
	
FinSubAlgoritmo
