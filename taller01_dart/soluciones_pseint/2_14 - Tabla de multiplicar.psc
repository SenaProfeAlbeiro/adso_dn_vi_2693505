Algoritmo estructuraRepetitivaParaTablaMultiplicar
	// Declarar variables
	Definir volver Como Caracter;	
	Definir i, tabla, res Como Entero;
	// Proceso1: Se repite el men� si se selecciona 's'
	Repetir
		Limpiar Pantalla;		
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Dise�e un algoritmo que Muestre en pantalla la tabla de ";
		Escribir "multiplicar del n�mero indicado por el usuario (del 1 al 10)";
		// Iniciar variables
		volver <- '';
		tabla <- 0;
		res <- 0;
		// Entrada de Datos: Digitar el n�mero de la tabla de multiplicar a visualizar
		Escribir "";
		Escribir Sin Saltar "Digite la tabla de multiplicar que desea visualizar";
		Leer tabla;
		// Proceso2: Se repite del 1 al 10
		Escribir "";
		Para i <- 1 Hasta 10 Con Paso 1 Hacer
			// Proceso3: Calcula la tabla de multiplicar 
			res <- i * tabla;
			// Salida de Datos: Muestra en pantalla la tabla de multiplicar
			Escribir tabla, " X ", i, " = ", res;
		FinPara		
		// Entrada de Datos: Volver al Men�			
		Escribir "";
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		leer volver;		
	Hasta Que (volver <> 's')
FinAlgoritmo