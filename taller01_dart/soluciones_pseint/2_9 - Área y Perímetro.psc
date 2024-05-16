Algoritmo estructuraRepetitivaMientrasAreaPerimetro
	// Declarar variables
	Definir volver como Caracter;
	Definir menu Como Entero;
	Definir ladoA, ladoB, ladoC, radio, area, perimetro Como Real;
	// Objetivo del Algoritmo
	Escribir Sin Saltar "Dise�e un algoritmo que muestre un men� para la selecci�n (1. Tri�ngulo, 2. Rect�ngulo y 3. C�rculo); ";
	Escribir Sin Saltar "luego pida los datos necesarios para la soluci�n y muestre en pantalla el nombre de la figura, su �rea ";
	Escribir Sin Saltar "en unidades cuadradas y su per�metro en unidades simples. �rea. Recuerde que no existen �reas o ";
	Escribir "per�metros menores o iguales a cero.";		
	// Iniciar variables
	volver <- '';
	menu <- 0;
	ladoA <- 0.0;
	ladoB <- 0.0;
	ladoC <- 0.0;
	radio <- 0.0;
	area <- 0.0;
	perimetro <- 0.0;		
	// Entrada de Datos: Muestra el Men� en pantalla
	Escribir "";
	Escribir "---------- MENU ----------";
	Escribir "1. Tri�ngulo";		
	Escribir "2. Rect�ngulo";		
	Escribir "3. C�rculo";
	Escribir Sin Saltar "Seleccione una opci�n del men�: ";
	Leer menu;
	// Proceso2: Si la opci�n men� existe, selecciona una figura.
	//           Si no existe, muestra en pantalla un mensaje de error.
	Segun menu Hacer
		1:
			// Entrada de Datos
			Escribir "";
			Escribir "-------------- Tri�ngulo ------------------";
			Escribir "";
			// Entrada de Datos
			Escribir Sin Saltar "Digite la base:";
			Leer ladoA;
			// Proceso3: Mientras la base sea menor o igual a cero se solicita nuevamente
			Mientras (ladoA <= 0) Hacer
				// Salida de Datos
				Escribir "";
				Escribir "Recuerde que la base de un tri�ngulo no puede ser menor o igual a 0";
				Escribir "";
				// Entrada de Datos
				Escribir Sin Saltar "Digite nuevamente la base:";
				Leer ladoA;
			FinMientras
			// Entrada de Datos
			Escribir "";
			Escribir Sin Saltar "Digite la altura:";
			Leer ladoB;
			// Proceso4: Mientras la altura sea menor o igual a cero se solicita nuevamente
			Mientras (ladoB <= 0) Hacer
				// Salida de Datos
				Escribir "";
				Escribir "Recuerde que la altura de un tri�ngulo no puede ser menor o igual a 0";
				Escribir "";
				// Entrada de Datos					
				Escribir Sin Saltar "Digite nuevamente la altura:";
				Leer ladoB;
			FinMientras
			// Proceso5: �rea de un Tri�ngulo
			area <-  (ladoA * ladoB) / 2;
			// Proceso6: Per�metro del tri�ngulo
			ladoC <- raiz(ladoA^2 + ladoB^2);
			perimetro = ladoA + ladoB + ladoC;
			// Salida de Datos
			Escribir "";
			Escribir "La Figura es un:   Tri�ngulo";
			Escribir "Su �rea es:        ", area, " metros cuadrados";
			Escribir "Su per�metro es:   ", perimetro, " metros";
		2:
			// Entrada de Datos
			Escribir "";
			Escribir "-------------- Rect�ngulo ------------------";
			Escribir "";
			// Entrada de Datos
			Escribir Sin Saltar "Digite el lado A:";
			Leer ladoA;
			Escribir Sin Saltar "Digite el lado B:";
			Leer ladoB;
			// Proceso7: Mientras los lados sean menores o iguales a cero se solicita nuevamente
			Mientras (ladoA <= 0 O ladoB <= 0) Hacer
				// Salida de Datos
				Escribir "";
				Escribir "Recuerde que los lados de un rect�ngulo no pueden ser menores o iguales a 0";
				Escribir "";					
				// Entrada de datos
				Escribir Sin Saltar "Digite nuevamente el lado A: ";
				Leer ladoA;
				Escribir Sin Saltar "Digite nuevamente el lado B: ";
				Leer ladoB;
			FinMientras
			// Proceso8: �rea de un Rect�ngulo
			area <- ladoA * ladoB;
			// Proceso9: Per�metro del Rect�ngulo
			perimetro <- (2 * ladoA) + (2 * ladoB);
			// Salida de Datos
			Escribir "";
			Escribir "La Figura es un:   Rect�ngulo";
			Escribir "Su �rea es:        ", area, " metros cuadrados";
			Escribir "Su per�metro es:   ", perimetro, " metros";
		3:
			// Entrada de Datos
			Escribir "";
			Escribir "-------------- C�rculo ------------------";
			Escribir "";
			Escribir Sin Saltar "Digite el radio: ";
			Leer radio;	
			// Proceso10: Mientras la altura sea menor o igual a cero se solicita nuevamente
			Mientras (radio <= 0) Hacer
				// Salida de Datos
				Escribir "";
				Escribir "Recuerde que el radio no puede ser menor o igual a 0";
				Escribir "";
				// Entrada de Datos					
				Escribir Sin Saltar "Digite nuevamente el radio:";
				Leer radio;
			FinMientras
			// Proceso11: �rea de un C�rculo
			area <- PI * (radio ^ 2);
			// Proceso12: Circunferencia
			perimetro <- 2 * radio * PI;
			// Salida de Datos
			Escribir "";
			Escribir "La Figura es un:        C�rculo";
			Escribir "Su �rea es:             ", area, " metros cuadrados";
			Escribir "Su circunferencia es:   ", perimetro, " metros";
		De Otro Modo:
			Escribir "La opci�n del men� no existe";
	FinSegun
FinAlgoritmo
