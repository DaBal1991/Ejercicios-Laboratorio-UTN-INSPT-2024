Algoritmo sin_titulo
	
	Definir horaUno, minUno, segUno, horaDos, minDos, segDos, auxH, auxMin, auxSeg, sobrante Como Real;
	
	// Dados la hora, minutos y los segundos de dos instantes, la computadora muestra cuantos segundos contiene el intervalo que abarcan.
	
	Imprimir "Ingresar instante uno: ";
	Imprimir "Hora: ";
	Leer horaUno;
	
	Imprimir "Minutos: ";
	Leer minUno;
	
	Si(minUno >= 60) Entonces
		horaUno = horaUno + trunc(minUno/60);
		minUno = minUno mod 60;
	FinSi
	
	Imprimir "Segundos: ";
	Leer segUno;
	
	Si(segUno >= 60) Entonces
		minUno = minUno + trunc(segUno/60);
		segUno = segUno mod 60;
	FinSi
	
	Imprimir "Instante Uno: ", horaUno, " Hrs.,", minUno " Mins., ", segUno, " Segs.";  
	
	Imprimir "Ingresar instante dos: ";
	Imprimir "Hora: ";
	Leer horaDos;
	
	Imprimir "Minutos: ";
	Leer minDos;
	
	Si(minDos >= 60) Entonces
		horaDos = horaDos + trunc(minDos/60);
		minDos = minDos mod 60;
	FinSi
	
	Imprimir "Segundos: ";
	Leer segDos;
	
	Si(segDos >= 60) Entonces
		minDos = minDos + trunc(segDos/60);
		segDos = segDos mod 60;
	FinSi
	
	Imprimir "Instante Dos: ", horaDos, " Hrs., ", minDos, " Mins.,", segDos, " Segs.";
	
	auxH = horaDos - horaUno;
	
	Si(auxH < 0) Entonces
		auxH = auxH*(-1);
	FinSi
	
	auxMin = minDos - minUno;
	
	Si(auxMin < 0) Entonces
		auxMin = auxMin*(-1);
	FinSi
	
	auxSeg = segDos - segUno;
	
	Si(auxSeg < 0) Entonces
		auxSeg = auxSeg*(-1);
	FinSi
	
	auxH = auxH*3600;
	auxMin = auxMin*60;
	auxSeg = auxSeg + auxH + auxMin;
	
	Imprimir "Intervalo en Segundos: ", auxSeg, " Segs.";
	
FinAlgoritmo
