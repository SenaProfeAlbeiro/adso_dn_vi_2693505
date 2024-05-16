Algoritmo estructuraRepetitivaMientrasAreaPerimetro
	// Declarar variables
	Definir volver como Caracter;
	Definir menu Como Entero;
	Definir ladoA, ladoB, ladoC, radio, area, perimetro Como Real;
	// Objetivo del Algoritmo
	Escribir Sin Saltar "Diseñe un algoritmo que muestre un menú para la selección (1. Triángulo, 2. Rectángulo y 3. Círculo); ";
	Escribir Sin Saltar "luego pida los datos necesarios para la solución y muestre en pantalla el nombre de la figura, su área ";
	Escribir Sin Saltar "en unidades cuadradas y su perímetro en unidades simples. área. Recuerde que no existen áreas o ";
	Escribir "perímetros menores o iguales a cero.";		
	// Iniciar variables
	volver <- '';
	menu <- 0;
	ladoA <- 0.0;
	ladoB <- 0.0;
	ladoC <- 0.0;
	radio <- 0.0;
	area <- 0.0;
	perimetro <- 0.0;		
	// Entrada de Datos: Muestra el Menú en pantalla
	Escribir "";
	Escribir "---------- MENU ----------";
	Escribir "1. Triángulo";		
	Escribir "2. Rectángulo";		
	Escribir "3. Círculo";
	Escribir Sin Saltar "Seleccione una opción del menú: ";
	Leer menu;
	// Proceso2: Si la opción menú existe, selecciona una figura.
	//           Si no existe, muestra en pantalla un mensaje de error.
	Segun menu Hacer
		1:
			// Entrada de Datos
			Escribir "";
			Escribir "-------------- Triángulo ------------------";
			Escribir "";
			// Entrada de Datos
			Escribir Sin Saltar "Digite la base:";
			Leer ladoA;
			// Proceso3: Mientras la base sea menor o igual a cero se solicita nuevamente
			Mientras (ladoA <= 0) Hacer
				// Salida de Datos
				Escribir "";
				Escribir "Recuerde que la base de un triángulo no puede ser menor o igual a 0";
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
				Escribir "Recuerde que la altura de un triángulo no puede ser menor o igual a 0";
				Escribir "";
				// Entrada de Datos					
				Escribir Sin Saltar "Digite nuevamente la altura:";
				Leer ladoB;
			FinMientras
			// Proceso5: Área de un Triángulo
			area <-  (ladoA * ladoB) / 2;
			// Proceso6: Perímetro del triángulo
			ladoC <- raiz(ladoA^2 + ladoB^2);
			perimetro = ladoA + ladoB + ladoC;
			// Salida de Datos
			Escribir "";
			Escribir "La Figura es un:   Triángulo";
			Escribir "Su área es:        ", area, " metros cuadrados";
			Escribir "Su perímetro es:   ", perimetro, " metros";
		2:
			// Entrada de Datos
			Escribir "";
			Escribir "-------------- Rectángulo ------------------";
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
				Escribir "Recuerde que los lados de un rectángulo no pueden ser menores o iguales a 0";
				Escribir "";					
				// Entrada de datos
				Escribir Sin Saltar "Digite nuevamente el lado A: ";
				Leer ladoA;
				Escribir Sin Saltar "Digite nuevamente el lado B: ";
				Leer ladoB;
			FinMientras
			// Proceso8: Área de un Rectángulo
			area <- ladoA * ladoB;
			// Proceso9: Perímetro del Rectángulo
			perimetro <- (2 * ladoA) + (2 * ladoB);
			// Salida de Datos
			Escribir "";
			Escribir "La Figura es un:   Rectángulo";
			Escribir "Su área es:        ", area, " metros cuadrados";
			Escribir "Su perímetro es:   ", perimetro, " metros";
		3:
			// Entrada de Datos
			Escribir "";
			Escribir "-------------- Círculo ------------------";
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
			// Proceso11: Área de un Círculo
			area <- PI * (radio ^ 2);
			// Proceso12: Circunferencia
			perimetro <- 2 * radio * PI;
			// Salida de Datos
			Escribir "";
			Escribir "La Figura es un:        Círculo";
			Escribir "Su área es:             ", area, " metros cuadrados";
			Escribir "Su circunferencia es:   ", perimetro, " metros";
		De Otro Modo:
			Escribir "La opción del menú no existe";
	FinSegun
FinAlgoritmo
