Algoritmo estructuraRepetitivaParaTablasMultiplicar
	// Declarar variables
	Definir volver Como Caracter;
	Definir i, j, res Como Entero;
	// Proceso1: Se repite el menú si se selecciona 's'
	Repetir
		Limpiar Pantalla;
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Diseñe un algoritmo que imprima todas ";
		Escribir "las tabla de multiplicar (1-10).";
		// Iniciar Variables
		volver <- '';		
		res <- 0;		
		// Proceso2: Tabla de Multiplicar según la selección del usuario (1 - 10)
		Escribir "";
		Para i <- 1 Hasta 10 Con Paso 1 Hacer
			Para j <- 1 Hasta 10 Con Paso 1 Hacer
				// Salida de Datos: Muestra en pantalla la tabla de multiplicar
				res = i * j;
				Escribir i, " x ", j, " = ", res;
			FinPara
			Escribir "";
		FinPara
		// Entrada de Datos: Repetir el Algoritmo 
		Escribir "";
		Escribir Sin Saltar "Digite < s > para repetir. Para salir, cualquier tecla";
		Leer volver;
	Hasta Que (volver <> 's')
FinAlgoritmo