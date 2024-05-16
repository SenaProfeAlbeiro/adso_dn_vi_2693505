Algoritmo arregloVectorTablaMultiplicar
	// Declarar variables
	Definir volver Como Caracter;	
	Definir i, num, tabla, res Como Entero;
	// Dimensionar arreglo
	Dimension tabla[11];
	// Proceso1: Se repite el menú si se selecciona 's'
	Repetir
		Limpiar Pantalla;		
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Diseñe un algoritmo que Muestre en pantalla la tabla de ";
		Escribir "multiplicar del número indicado por el usuario (del 1 al 10)";
		// Iniciar variables
		volver <- '';
		num <- 0;
		res <- 0;
		// Entrada de Datos: Digitar el número de la tabla de multiplicar a visualizar
		Escribir "";
		Escribir Sin Saltar "Digite la tabla de multiplicar que desea visualizar";
		Leer num;
		// Proceso2: Se repite del 1 al 10 para almacenar el cálculo de la tabla de multiplicar
		Escribir "";
		Para i <- 1 Hasta 10 Con Paso 1 Hacer
			// Proceso3: Calcula la tabla de multiplicar 
			tabla[i] <- i * num;
		FinPara
		// Salida de Datos: Muestra en pantalla el arreglo en una dimensión (vector) con su resultado
		Para i <- 1 Hasta 10 Con Paso 1 Hacer
			// Salida de Datos: Muestra en pantalla la tabla de multiplicar
			Escribir num, " X ", i, " = ", tabla[i];
		FinPara
		// Entrada de Datos: Se pregunta al usuario si quiere repetir el programa
		Escribir "";
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		leer volver;		
	Hasta Que (volver <> 's')
FinAlgoritmo