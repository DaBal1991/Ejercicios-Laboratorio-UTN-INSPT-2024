Algoritmo sin_titulo
	
//	El programa debe gestionar las facturas de tres tipos de clientes:
//	1. Com�n
//	2. Preferencial
//	3. Bonificada
//	Cada factura pertenece a un cliente y tiene un monto asociado. Dependiendo de la
//	categor�a del cliente, se aplicar�n diferentes c�lculos al monto de la factura.
//	Requisitos del Programa
//	1. Definir las variables necesarias para almacenar los montos de las facturas seg�n
//		su categor�a y el cliente.
//	2. Implementar un subAlgoritmo cargaVectores que permita ingresar los datos de
//		las facturas:
//		o Asignar un identificador de cliente aleatorio (entre 1 y 3).
//		o Solicitar al usuario ingresar la categor�a de la factura (1, 2 o 3). Validar
//		la entrada. (ingreso manual).
//		o Solicitar al usuario ingresar el monto de la factura.
//		o Si la categor�a es Bonificada, aplicar un descuento del 20% al monto
//			antes de almacenarlo.
//		o Si la categor�a es Preferencial, aplicar un 35% de descuento al monto
//			antes de almacenarlo.
//	3. Implementar un subAlgoritmo MuestraVectores que muestre en pantalla los
//		datos almacenados en los vectores, en un formato que incluya el cliente y los
//		montos en cada categor�a. Este subAlgoritmo debe recibir un vector a la vez para
//		mostrar la informaci�n, optimizando y reutilizando c�digo.
//	4. Presentar un informe al final que muestre todos los clientes con el total de su
//		monto.
//		Puntos Por Considerar
//		? El identificador del cliente se generar� de manera aleatoria mientras que la
//			categor�a deber� validarla, pues el ingreso ser� manual.
//		? Asegurarse de que los montos ingresados sean almacenados en el vector
//			correspondiente y que el descuento del 20% para las facturas bonificadas y del
//			35% para las preferenciales se apliquen correctamente
	
	Definir idCliente, N Como Entero;
	Definir categoriaComun, categoriaPreferencial, categoriaBonificada como Real;
	
	N = 3;
	
	Dimension idCliente[N], categoriaComun[N], categoriaPreferencial[N], categoriaBonificada[N];
	
	menu(idCliente, categoriaComun, categoriaPreferencial, categoriaBonificada, N);
	
	
FinAlgoritmo

Funcion menu(idCliente, categoriaComun, categoriaPreferencial, categoriaBonificada, N)
	
	Definir op Como Entero;
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		idCliente[i] = Aleatorio(1,3);
	FinPara
	
	Repetir
		op = eleccion(idCliente, categoriaComun, categoriaPreferencial, categoriaBonificada, N);
	Hasta Que op == 0; 
	
FinFuncion

Funcion op = eleccion(idCliente, categoriaComun, categoriaPreferencial, categoriaBonificada, N)
	
	Definir op Como Entero;
	
	Imprimir "1. Cargar Factura.";
	Imprimir "0. Salir.";
	
	Imprimir "Ingresar opci�n: ";
	Leer op;
	
	Segun op Hacer
		1:
			cargaVectores(idCliente, categoriaComun, categoriaPreferencial, categoriaBonificada, N);
		0:
			Imprimir "Saliendo...";
			Imprimir "Informe Final";
			muestraVectoresFinal(idCliente, categoriaComun, categoriaPreferencial, categoriaBonificada, N);
		De otro modo:
			Imprimir "Ingrese una opci�n v�lida: ";
			Leer op;
	FinSegun
	
FinFuncion

Funcion cargaVectores(idCliente, categoriaComun, categoriaPreferencial, categoriaBonificada, N)
	
	Definir pos, cat Como Entero;
	Definir monto como Real;
	pos = Aleatorio(0,2);
	
	muestraVectores(pos, idCliente, categoriaComun, categoriaPreferencial, categoriaBonificada);
	
	Imprimir "Ingresar categor�a: ";
	Leer cat;
	
	Mientras cat > 3 o cat < 1 Hacer
		Imprimir "Ingresar categor�a v�lida entre 1 y 3: ";
		Leer cat;
	FinMientras
		
	Imprimir "Ingrese el monto de la compra: ";
	Leer monto;
	
	devolverDescuento(monto, cat, categoriaComun, categoriaPreferencial, categoriaBonificada);
	pos = 0;
	
FinFuncion

Funcion devolverDescuento(importe, cat, categoriaComun, categoriaPreferencial, categoriaBonificada)
	
	Segun cat Hacer
		1:
			importe = importe*1;
			categoriaComun[cat-1] = categoriaComun[cat-1] + importe;
		2:
			Imprimir "Preferencial (35% de descuento)";
			importe = importe * 0.65;
			categoriaPreferencial[cat-1] = categoriaPreferencial[cat-1] + importe;
		3:
			Imprimir "Bonificada (20% de descuento)";
			importe = importe * 0.80;
			categoriaBonificada[cat-1] = categoriaBonificada[cat-1] + importe;
	FinSegun

FinFuncion

Funcion muestraVectores(pos, idCliente, categoriaComun, categoriaPreferencial, categoriaBonificada)
	
	Imprimir "Cliente: ", idCliente[pos];
	Imprimir "Categor�a Com�n: $", categoriaComun[pos];
	Imprimir "Categoria Preferencial: $", categoriaPreferencial[pos];
	Imprimir "Categoria Bonificada: $", categoriaBonificada[pos];
	
FinFuncion

Funcion muestraVectoresFinal(idCliente, categoriaComun, categoriaPreferencial, categoriaBonificada, N)
	
	Definir i Como Entero;
	
	Imprimir "Id Cliente | Com�n | Preferencial | Bonificada";
	Para i = 0 Hasta N-1 Hacer
		Imprimir idCliente[i], " | ", categoriaComun[i], " | ", categoriaPreferencial[i], " | ", categoriaBonificada[i]; 
	FinPara
	
	
FinFuncion
