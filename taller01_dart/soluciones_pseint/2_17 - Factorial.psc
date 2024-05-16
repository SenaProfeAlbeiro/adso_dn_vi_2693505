Proceso estructuraRepetitivaParaFactorial
	// Declarar variables
	Definir volver Como Caracter;
	Definir i, cant, factorial como Entero;
	// Proceso1: Se repite el men� si se selecciona 's'
	Repetir
		Limpiar Pantalla;
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Encuentre el factorial de un n�mero del 0 al 12, ";
		Escribir "si lo supera, el factorial es infinito.";
		// Iniciar Variables
		factorial <- 1;
		cant <- 0;
		// Entrada de Datos: Solicitar el n�mero factorial
		Escribir "";
		Escribir Sin Saltar "Ingrese el n�mero factorial: ";
		Leer cant;
		// Proceso2: la cantidad es menor o igual a 12, entonces imprimir el factorial
		//          Si no, el factorial es infinito
		Si (cant <= 12) Entonces
			// Proceso3: Se repite hasta el n�mero indicado por el usuario
			Para i <- 1 Hasta cant Con Paso 1 Hacer
				// Proceso 3: Se calcula el n�mero factorial
				factorial <- factorial * i;
			FinPara
			// Salida de Datos: Muestra en pantalla el factorial
			Escribir "";
			Escribir "El factorial de ", cant, " es: ", factorial;
		SiNo
			Escribir "";
			Escribir "El factorial es infinito";
		FinSi
		// Entrada de Datos: Volver al Men�
		Escribir "";		
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		Leer volver;
	Hasta Que (volver <> 's')
FinProceso