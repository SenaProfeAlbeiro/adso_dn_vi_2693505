Algoritmo estructurasDescomponerNumero
	// Declarar variables
	Definir volver Como Caracter;
	Definir num, cant, resid, temp como Entero;
	// Proceso1: Se repite el men� si se selecciona 's'
	Repetir
		Limpiar Pantalla;
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Dise�e un programa que solicite un numero por teclado encuentre cuantos d�gitos ";
		Escribir "tiene y lo descomponga y muestre en pantalla.";		
		// Iniciar Variables
		num <- 0;
		temp <- 0;
		cant <- 0;
		resid <- 0;		
		// Entrada de Datos: Se solicita el n�mero
		Escribir Sin Saltar "Escribir un n�mero entero:";
		Leer num;
		// Proceso2: El n�mero se pasa a una variable temporal
		temp <- num;
		// Proceso3: Se descompone la variable temporal para encontrar la cantidad de posiciones del n�mero
		Mientras temp > 0 Hacer
			// Proceso4: Toma la parte entera del n�mero y lo almacena en la variable temporal
			temp <- trunc(temp / 10);
			// Proceso5: Cuenta la cantidad de repeticiones o d�gitos
			cant <- cant + 1;			
		FinMientras
		// Salida de Datos: Muestra en pantalla la cantidad de d�gitos que tiene el n�mero
		Escribir "El n�mero tiene ", cant, " d�gitos y se descompone as�";
		Escribir "";
		// Proceso6: El n�mero se pasa a la variable residuo para almacenarlo
		resid <- num;
		// Proceso7: Se repite el ciclo hasta que la cantidad sea igual a 0
		Repetir
			// Proceso8: Se calculan los miles, centenes, decenas
			temp <- 10^(cant-1);
			// Proceso9: Toma la parte entera del n�mero
			num <- trunc(num/temp);
			// Salida de Datos: Imprime el n�mero
			Escribir Sin Saltar num, " - ";
			// Proceso10: Se calcula el residuo como entero
			resid <- resid MOD temp;
			// Proceso11: Se pasa el residuo al n�mero
			num = resid;
			// Proceso12: Se disminuye la cantidad en uno para controlar el ciclo
			cant = cant - 1;
		Hasta Que (cant = 0)
		// Entrada de Datos: Volver al Men� Principal		
		Escribir "";		
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		Leer volver;
	Hasta Que (volver <> 's')
FinAlgoritmo