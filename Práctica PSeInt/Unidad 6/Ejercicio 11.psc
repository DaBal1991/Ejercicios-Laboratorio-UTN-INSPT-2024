Algoritmo sin_titulo
	
	
//	Queremos guardar la temperatura mínima y máxima de 7 días. realiza un programa que
//	de la siguiente información:
//	La temperatura media de cada día.
//	Todos los días de menor a mayor temperatura media por día.
//	Se lee una temperatura por teclado y se muestran los días cuya temperatura máxima coincide con
//	ella. Si no existe ningún día se muestra un mensaje de información.
	
	Definir nDia, i Como Entero;
	Definir tempMin, tempMax, tempMedia Como Real;
	Dimension nDia[7], tempMin[7], tempMax[7], tempMedia[7];
	
	Para i = 0 Hasta 6 Hacer
		Imprimir "Dia: ", i+1;
		nDia[i] = i+1;
		
		Imprimir "Ingresar Temperatura Mínima: ";
		Leer tempMin[i];
		
		Imprimir "Ingresar Temperatura Máxima: ";
		leer tempMax[i];
		
		tempMedia[i] = (tempMax[i]+tempMedia[i])/2;
		
	FinPara
	
	Imprimir "N° Dia";
	mostrarVector(nDia, 7);
	Imprimir "Temperaturas Mínimas: ";
	mostrarVector(tempMin, 7);
	Imprimir "Temperaturas Máximas: ";
	mostrarVector(tempMax, 7);
	Imprimir "Temperatura media: ";
	mostrarVector(tempMedia, 7);
	buscarTemp(tempMax, 7);
	ordenarVector(tempMedia, nDia, 7);
	Imprimir "N° Dia (Ordenados)";
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
	