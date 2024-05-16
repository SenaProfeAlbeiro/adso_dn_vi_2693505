Algoritmo estructuraRepetitivaRepetirParques
	// Declarar variables
	Definir volver como Caracter;	
	Definir cont, dado1, dado2 Como Entero;
	// Proceso1: Se repite el men� si se selecciona 's'
	Repetir
		Limpiar Pantalla;
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Dise�e un algoritmo que muestre dos n�meros aleatorios del 1 al 6 (como los dados), ";
		Escribir Sin Saltar "de sacar dos n�meros pares (1,1 o 2,2 o 3,3 o 4,4 o 5,5 o 6,6) saldr� un mensaje en ";
		Escribir Sin Saltar "pantalla que dice lanzar de nuevo, de lazar en dos ocasiones m�s y de nuevo sean pares, ";
		Escribir Sin Saltar "saldr� un mensaje en pantalla �Saca una ficha!, de no sacar pares saldr� en pantalla ";
		Escribir "un mensaje �Lanza de nuevo! (como en el juego parques).";
		// Iniciar variables y/o arreglos
		volver <- '';		
		cont <- 0;
		dado1 <- 0;
		dado2 <- 0;		
		// Proceso2: Se repite mientras el contador no sea 3
		Repetir
			// Salida de Datos: Se muestra en pantalla el n�mero del lanzamiento
			Escribir "";
			Escribir "Lanzamiento ", cont + 1, ". Presione ENTER";
			// Entrada de Datos: Enter
			Esperar Tecla;
			Escribir "";
			// Proceso3: Se inician las variables dado1 y dado2 con n�meros de 1 a 6 aleatorios
			dado1 <- azar(6) + 1;
			dado2 <- azar(6) + 1;
			// Proceso4: Si los n�meros de los dados son iguales, lanza de nuevo.
			//           Si no, muestra el valor de cada dado.
			Si (dado1 = dado2) Entonces
				// Proceso5: El contador se incrementa en 1
				cont = cont + 1;
				// Salida de datos
				Escribir "Ha sacado par de ", dado1;
				Si (cont = 3) Entonces
					// Salida de datos
					Escribir "";
					Escribir "�Saca una Ficha!";
					cont = 3;
				FinSi
			SiNo
				// Salida de datos
				Escribir "Ha sacado ", dado1, " y ", dado2, ". �Lanza de Nuevo!";				
				cont = 3;
			FinSi
		Hasta Que (cont = 3)
		// Entrada de Datos: Volver al Men�
		Escribir "";		
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		leer volver;
	Hasta Que (volver <> 's')
FinAlgoritmo
