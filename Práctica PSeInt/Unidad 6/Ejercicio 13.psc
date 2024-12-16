Algoritmo sin_titulo
	
//	Crear un programa que lea los precios de 5 artículos y las cantidades vendidas por una
//	empresa en sus 4 sucursales. Informar:
//	Las cantidades totales de cada articulo.
//	La cantidad de artículos en la sucursal 2.
//	La cantidad del articulo 3 en la sucursal 1.
//	La recaudación total de cada sucursal.
//	La recaudación total de la empresa.
//	La sucursal de mayor recaudación.
	
	Definir sucursalUno, SucursalDos, SucursalTres, SucursalCuatro Como Entero;
	Definir articuloPrecio Como Real;
	Dimension articuloPrecio[5], sucursalUno[5], sucursalDos[5], sucursalTres[5], sucursalCuatro[5];
	
	cargarPrecios(articuloPrecio, 5);
	
	Imprimir "Precios";
	mostrarVector(articuloprecio, 5);
	
	Imprimir "--- Cargando Cantidades ---";
	cargarCantidades(sucursalUno, 5);
	cargarCantidades(sucursalDos, 5);
	cargarCantidades(sucursalTres, 5);
	cargarCantidades(sucursalCuatro, 5);
	
	mostrarVector(sucursalUno, 5);
	cantidadTotalPorArt(sucursalUno, sucursalDos, sucursalTres, sucursalCuatro);
	calcularRecaudacion(articuloPrecio, sucursalUno, sucursalDos, sucursalTres, sucursalCuatro);
	
	
FinAlgoritmo

Funcion mostrarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir vec[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
FinFuncion

Funcion cargarPrecios(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		vec[i] = Aleatorio(30,50);
	FinPara
	
FinFuncion

Funcion cargarCantidades(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		vec[i] = Aleatorio(50, 100);
	FinPara
	
FinFuncion

Funcion cantidadTotalPorArt(vecUno,vecDos,vecTres,vecCuatro)
	
	Definir totalUno, totalDos, totalTres, totalCuatro Como Real;
	Definir cantidadSucDos Como Entero;
	
	totalUno = vecUno[0] + vecDos[0] + vecTres[0] + vecCuatro[0];
	totalDos = vecUno[1] + vecDos[1] + vecTres[1] + vecCuatro[1];
	totalTres = vecUno[2] + vecDos[2] + vecTres[2] + vecCuatro[2];
	totalCuatro = vecUno[3] + vecDos[3] + vecTres[3] + vecCuatro[3];
	
	Imprimir "Total de artículos";
	Imprimir "Artículo Uno: ", totalUno;
	Imprimir "Articulo Dos: ", totalDos;
	Imprimir "Artículo Tres: ", totalTres;
	Imprimir "Artículo Cuatro: ", totalCuatro;
	Imprimir "----------------------";
	Imprimir "Total Artículos en Sucursal Dos:", vecDos[0]+vecDos[1]+vecDos[2]+vecDos[3];
	Imprimir "Total Artículo 3 en Sucursal Uno: ", vecUno[2];
	
FinFuncion

Funcion calcularRecaudacion(vecPrecio, vecUno, vecDos, vecTres, vecCuatro)
	
	Definir totalUno, totalDos, totalTres, totalCuatro Como Real;
	Definir i Como Entero;
	
	Para i = 0 Hasta 4 Hacer
		totalUno = totalUno + vecUno[i]*vecPrecio[i];
		totalDos = totalDos + vecDos[i]*vecPrecio[i];
		totalTres = totalTres + vecTres[i]*vecPrecio[i];
		totalCuatro = totalCuatro + vecCuatro[i]*vecPrecio[i];
	FinPara
	
	Imprimir "Recaudación Total por Sucursal";
	Imprimir "Sucursal Uno: $", totalUno;
	Imprimir "Sucursal Dos: $", totalDos;
	Imprimir "Sucursal Tres: $", totalTres;
	Imprimir "Sucursal Cuatro: $", totalCuatro;
	Imprimir "Recaudación de la Empresa: $", totalUno+totalDos+totalTres+totalCuatro;
	Si totalUno > totalDos y totalUno > totalTres y totalUno > totalCuatro Entonces
		Imprimir "Sucursal Uno, es la que vendio mas...";
	SiNo
		Si totalDos > totalUno y totalDos > totalTres y totalDos > totalCuatro Entonces
			Imprimir "Sucursal Dos, es la que vendio mas...";
		SiNo
			Si totalTres > totalUno y totalTres > totalDos y totalTres > totalCuatro Entonces
				Imprimir "Sucursal Tres, es la que vendio mas...";
			SiNo
				Si totalCuatro > totalUno y totalCuatro > totalDos y totalCuatro > totalTres Entonces
					Imprimir "Sucursal Cuatro, es la que vendio mas...";
				FinSi
			FinSi
		FinSi
	FinSi
	
FinFuncion
