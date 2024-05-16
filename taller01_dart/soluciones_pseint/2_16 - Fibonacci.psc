Algoritmo estructuraRepetitivaParaFibonacci
	// Declarar variables
	Definir volver Como Caracter;
	Definir i, cant, acum, anterior, posterior como Entero;
	// Proceso1: Se repite el men� si se selecciona 's'
	Repetir
		Limpiar Pantalla;
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Dise�e un algoritmo que solicite la cantidad de n�meros ";
		Escribir "que se desea ver de la serie de Fibonacci (sucesi�n de Fibonacci).";
		// Iniciar variables
		anterior <- 0;
		posterior <- 1;
		acum <- 0;
		cant <- 0;
		// Entrada de Datos: Cantidad de N�meros de la serie Fibonacci
		Escribir "";
		Escribir Sin Saltar "Ingrese la cantidad de n�meros de la serie Fibonacci: ";
		Leer cant;		
		// Proceso2: Se repite hasta la cantidad escrita por el usuario
		Escribir "";
		Para i<-0 Hasta cant-1 Con Paso 1 Hacer
			// Salida de Datos
			Escribir Sin Saltar anterior, " ";
			// Proceso3: Cambiar los valores del n�mero posterior y anterior
			acum <- anterior + posterior;			
			posterior <- anterior;
			anterior <- acum;			
		FinPara
		// Entrada de Datos: Volver al Men�				
		Escribir "";
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		leer volver;		
	Hasta Que (volver <> 's')
FinAlgoritmo