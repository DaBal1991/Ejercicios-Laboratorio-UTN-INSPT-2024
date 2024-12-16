Algoritmo sin_titulo
	
//	Solicite al usuario el valor de la hora actual, en horas, minutos y segundos; así como, si es antes
//	meridiano (am) o después meridiano (pm). Luego, mostrarle la hora que sería después de
//	transcurrir 10 segundos exactamente. Observe algunos ejemplos de horas ingresadas y su
//	correspondiente valor luego de transcurrir los 10 segundos. Hora ingresada Hora (luego de 10
//	segundos) 4 am.: 8 min.: 25 seg. 4 am.: 8 min.: 35 seg. 5 pm.: 45 min.: 57 seg. 5 pm.: 46 min.: 7
//	seg. 11 pm.: 59 min.: 52 seg. 12 am.: 0 min.: 2 seg. 7 am.: 59 min.: 54 seg. 8 am..: 0 min.: 4 seg. 11.
	
	Definir horas, mins, segs Como Entero;
	Definir meridiano Como Caracter;
	
	Imprimir "Ante o Post meridiano? AM o PM: ";
	Leer meridiano;
	
	Mientras meridiano <> "am" y meridiano <> "AM" y meridiano <> "PM" y meridiano <> "pm" Hacer
		Imprimir "Ingrese PM o AM: ";
		Leer meridiano;
	FinMientras
	
	Imprimir "Ingrese las horas: ";
	Leer horas;
	
	Mientras horas > 12 o horas < 1 Hacer
		Imprimir "Ingrese la hora entre 1 y 12: ";
		Leer horas;
	FinMientras
	
	Imprimir "Ingrese los minutos: ";
	Leer mins;
	
	Mientras mins > 60 o mins < 0 hacer
		Imprimir "Ingrese los minutos entre 0 y 60: ";
		Leer mins;
	FinMientras
	
	Imprimir "Ingrese los segundos: ";
	Leer segs;
	
	Mientras segs > 60 o segs < 0 Hacer
		Imprimir "Ingrese los segundos entre 0 y 60: ";
		Leer segs;
	FinMientras
	
	Imprimir horas, ":", mins, ":", segs, " ", meridiano;
	Imprimir "Se suman 10 segundos a la hora dada...";
	
	segs = segs + 10;
	
	Si segs >= 60 Entonces
		segs = segs - 60;
		mins = mins + 1;
		
		Si mins >= 60 Entonces
			mins = mins - 60;
			horas = horas + 1;
			
			Si horas > 12 Entonces
				horas = 1;
				
				Si meridiano == "AM" o meridiano == "am" Entonces
					meridiano = "PM";
				SiNo
					meridiano = "AM";
				FinSi
			FinSi
		FinSi
	FinSi
	
	Imprimir "Hora + 10 segs: ", horas, ":", mins, ":", segs, " ", meridiano;
	
FinAlgoritmo
