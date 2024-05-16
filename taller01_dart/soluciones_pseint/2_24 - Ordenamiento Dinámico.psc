Proceso arregloVectorOrdenamientoDinamico
	// Declarar variables
	Definir volver como Caracter;
	Definir vector, i Como Entero;
	// Dimensionar arreglos
	Dimension vector[10];
	// Proceso1: Se repite el menú si se selecciona 's'
	Repetir
		Limpiar Pantalla;
		// Objetivo del Algoritmo
		Escribir Sin Saltar "";
		Escribir "";
		// Proceso2: Se escriben valores al azar en un vector de dimensión 10
		Para i <- 0 Hasta 9 Con Paso 1 Hacer
			vector[i] = azar(100);
		FinPara
		//Proceso3: Se recorre nuevamente el vector para mostrar los resultados
		Escribir "";
		Para i <- 0 Hasta 9 Con Paso 1 Hacer
			//Se imprime en pantalla el índice, posición y valor
			Escribir "Índice: ", i, ". Posición: ", i + 1, ". Valor: ", vector[i];
		FinPara
		// Entrada de Datos: Volver al Menú Principal	
		Escribir "";		
		Escribir Sin Saltar "Para repetir digite <s>, para salir cualquier tecla:";
		leer volver;
	Hasta Que (volver <> 's');
FinProceso
