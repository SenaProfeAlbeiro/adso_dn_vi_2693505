Algoritmo estructuraRepetitivaRepetirTipoTriangulo
	// Declarar variables
	Definir volver como Caracter;
	Definir angA, angB, angC, ladoA, ladoB, ladoC, sumaAng como Real;
	Definir menu Como Entero;
	// Proceso1: Se repite el menú si se selecciona 's'
	Repetir
		Limpiar Pantalla;		
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Diseñe un algoritmo que encuentre el tipo de triángulo que se tiene, mostrando un menú que pida si se ";
		Escribir Sin Saltar "ingresaran ángulos o lados y se dé la opción para escoger uno de los dos. Si se selecciona por ángulos ";
		Escribir Sin Saltar "la suma de los 3 ángulos debe ser 180° y si se selecciona por lados, la suma de los dos lados más ";
		Escribir Sin Saltar "cortos debe ser mayor a la longitud del lado más largo, para que sean un triángulo. Y mostrar en ";
		Escribir Sin Saltar "pantalla su triángulo es: equilátero, isósceles o escaleno; rectángulo, acutángulo u obtusángulo). ";
		Escribir "Recuerde que no existen lados ni ángulos menores o iguales a cero.";
		// Iniciar variables		
		volver <- 's';
		menu <- 0;
		angA <- 0.0;
		angB <- 0.0;
		angC <- 0.0;
		ladoA <- 0.0;
		ladoB <- 0.0;
		ladoC <- 0.0;
		// Entrada de Datos: Muestra el Menú en pantalla
		Escribir "";
		Escribir "---------- MENU ----------";
		Escribir "1. Ángulos";		
		Escribir "2. Lados";
		Escribir Sin Saltar "Seleccione una opción del menú: ";
		Leer menu;
		// Proceso2: Si la opción menú existe, va hasta el tipo de triángulo.
		//           Si no existe, muestra en pantalla un mensaje de error.
		Segun menu Hacer
			1:
				// Entrada de Datos
				Escribir "";
				Escribir "-------------- Triángulo x Ángulos ------------------";
				// Proceso3: Se repiten las opciones hasta que la los ángulos sean mayores a 0
				Repetir
					// Salida de Datos
					Escribir "";
					Escribir "Recuerde que los ángulos deben ser mayores a 0";
					Escribir "";
					// Entrada de Datos
					Escribir Sin Saltar "Digite el ángulo A: ";
					Leer angA;
					Escribir Sin Saltar "Digite el ángulo B: ";
					Leer angB;
				Hasta Que (angA > 0 Y angB > 0)
				// Proceso4: Se asigna el ángulo C
				angC <- 180 - (angA + angB);
				// Proceso5: Se valida si el ángulo c es mayor a 0.
				//           Si no, Muestra un mensaje de error.			
				Si (angC > 0) Entonces	
					// Proceso6: Triángulo Rectángulo
					Si (angA == 90 O angB == 90 O angC == 90) Entonces
						Escribir "Es un triángulo: RECTÁNGULO";
					FinSi
					// Proceso7: Triángulo Obtusángulo
					Si (angA > 90 O angB > 90 O angC > 90) Entonces
						Escribir "Es un triángulo: OBTUSÁNGULO";
					FinSi
					// Proceso8: Triángulo Acutángulo
					Si (angA < 90 Y angB < 90 Y angC < 90) Entonces
						Escribir "Es un triángulo: ACUTÁNGULO";
					FinSi					
				SiNo
					Escribir "Ángulos Incorrectos";
				FinSi			
			2:
				// Entrada de Datos
				Escribir "";
				Escribir "-------------- Triángulo x Lados ------------------";
				// Proceso9: Se repiten las opciones hasta que la los lados sean mayores a 0
				Repetir
					// Salida de Datos
					Escribir "";
					Escribir "Recuerde que los lados deben ser mayores a 0";
					// Entrada de Datos
					Escribir Sin Saltar "Digite el lado A: ";
					Leer ladoA;
					Escribir Sin Saltar "Digite el lado B: ";
					Leer ladoB;
					Escribir Sin Saltar "Digite el lado C: ";
					Leer ladoC;
				Hasta Que (ladoA > 0 Y ladoB > 0 Y ladoC > 0)
				// Proceso10: Se valida si la suma de los lados más cortos es mayor al lado más largo
				//            Si no, muestra un mensaje de error
				Si (ladoA < ladoB + ladoC Y ladoB < ladoA + ladoC Y ladoC < ladoA + ladoB) Entonces
					// Proceso11: Si dos lados son iguales, puede ser Isósceles o Equilatero
					//            Si no, es Escaleno
					Si (ladoA = ladoB O ladoB = ladoC O ladoC = ladoA) Entonces
						// Proceso12: Si los tres lados son iguales es Equilatero
						//            si no, es Isósceles.
						Si (ladoA = ladoB Y ladoB = ladoC) Entonces						
							Escribir "Es un triángulo: EQUILATERO";
						SiNo
							Escribir "Es un triángulo: ISÓSCELES";
						FinSi
					SiNo
						Escribir "Es un triángulo: ESCALENO";
					FinSi					
				SiNo
					Escribir "Lados Incorrectos";
				FinSi
			De Otro Modo:
				Escribir "La opción del menú no existe";
		FinSegun
		// Entrada de Datos: Volver al Menú
		Escribir "";		
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		leer volver;
	Hasta Que (volver <> 's');
FinAlgoritmo
