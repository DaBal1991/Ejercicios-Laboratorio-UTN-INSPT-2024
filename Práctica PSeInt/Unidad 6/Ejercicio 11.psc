Algoritmo sin_titulo
	
	
//	Queremos guardar la temperatura m�nima y m�xima de 7 d�as. realiza un programa que
//	de la siguiente informaci�n:
//	La temperatura media de cada d�a.
//	Todos los d�as de menor a mayor temperatura media por d�a.
//	Se lee una temperatura por teclado y se muestran los d�as cuya temperatura m�xima coincide con
//	ella. Si no existe ning�n d�a se muestra un mensaje de informaci�n.
	
	Definir nDia, i Como Entero;
	Definir tempMin, tempMax, tempMedia Como Real;
	Dimension nDia[7], tempMin[7], tempMax[7], tempMedia[7];
	
	Para i = 0 Hasta 6 Hacer
		Imprimir "Dia: ", i+1;
		nDia[i] = i+1;
		
		Imprimir "Ingresar Temperatura M�nima: ";
		Leer tempMin[i];
		
		Imprimir "Ingresar Temperatura M�xima: ";
		leer tempMax[i];
		
		tempMedia[i] = (tempMax[i]+tempMedia[i])/2;
		
	FinPara
	
	Imprimir "N� Dia";
	mostrarVector(nDia, 7);
	Imprimir "Temperaturas M�nimas: ";
	mostrarVector(tempMin, 7);
	Imprimir "Temperaturas M�ximas: ";
	mostrarVector(tempMax, 7);
	Imprimir "Temperatura media: ";
	mostrarVector(tempMedia, 7);
	buscarTemp(tempMax, 7);
	ordenarVector(tempMedia, nDia, 7);
	Imprimir "N� Dia (Ordenados)";
	mostrarVector(nDia, 7);
	Imprimir "Temperatura media (ordenada): ";
	mostrarVector(tempMedia, 7);

FinAlgoritmo

Funcion mostrarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir vec[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
FinFuncion

Funcion buscarTemp(vec, N)
	
	Definir i, pos Como Entero;
	Definir busqueda como Real;
	
	Imprimir "Ingresar temperatura: ";
	
	Para i = 0 Hasta N-1 Hacer
		Si vec[i] == busqueda Entonces
			pos = i;
			Imprimir "Temperatura encontrada en el dia: ", pos+1;
		SiNo
			pos = -1;
		FinSi
	FinPara
	
	Si pos == -1 Entonces
		Imprimir "Temperatura no encontrada.";
	FinSi
	
FinFuncion

Funcion ordenarVector(vec, vecDos, N)
	
	Definir i, j Como Entero;
	Definir aux como Real;
	
	Para i = 0 Hasta N-1 Hacer
		Para j = 0 Hasta N-2 Hacer
			Si vec[j] < vec[j+1] Entonces
				aux = vec[j];
				vec[j] = vec[j+1];
				vec[j+1] = aux;
				
				aux = vecDos[j];
				vecDos[j] = vecDos[j+1];
				vecDos[j+1] = aux;
			FinSi
		FinPara
	FinPara
	
FinFuncion
	