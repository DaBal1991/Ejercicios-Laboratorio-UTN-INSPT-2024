Algoritmo sin_titulo
	
	// En un circuito eléctrico hay tres interruptores, los cuales pueden estar en estado cerrado(1)
	// o abierto(0).
	// Para que un equipo funcione, se requiere que al menos dos estén cerrados. Si los datos son
	// el estado de los interruptores, determine si el equipo funcionará.
	
	Definir bandera, estadoUno, estadoDos, estadoTres como Entero;
	
	Imprimir "Interruptor 1";
	estadoUno = ingresarEstado(1);
	
	Imprimir "Interruptor 2: ";
	estadoDos = ingresarEstado(2);
	
	Imprimir "Interruptor 3: ";
	estadoTres = ingresarEstado(3);
	
	Si (estadoUno = 0 y estadoDos = 0) o (estadoUno = 0 y estadoTres = 0) o (estadoTres = 0 y estadoDos = 0) Entonces
		bandera = 1;
	SiNo
		bandera = 0;
	FinSi
	
	Si bandera = 1 Entonces
		Imprimir "Encendido.";
	SiNo
		Imprimir "Apagado.";
	FinSi
	
	
FinAlgoritmo

Funcion estado = ingresarEstado(num)
	
	Definir estado Como Entero;
	
	Imprimir "Ingresar estado del interruptor ", num , " (1 - Abierto o 0 - Cerrado): ";
	Leer estado;
	
	Mientras estado > 1 o estado < 0 Hacer
		Imprimir "Ingrese un estado correcto: ";
		Leer estado;
	FinMientras
	
FinFuncion
	