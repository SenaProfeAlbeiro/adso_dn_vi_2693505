Algoritmo estructuraCondicionalAnidadaColores
	// Objetivo del Algoritmo
	Escribir Sin Saltar "Diseñe un algoritmo que muestre un menú: Amarillo = 1, azul = 2, rojo = 3. "; 
	Escribir Sin Saltar "Luego solicite al usuario digitar dos de estos números para descifrar la combinación. Ejemplo: 1 y 3, ";
	Escribir Sin Saltar "el resultado mostrado en pantalla (su combinación es naranja). Recuerde que el usuario puede colocar ";
	Escribir "el mismo número dos veces y números fuera del rango.";
	// Declarar variables	
	Definir color1, color2 Como Entero;
	Definir resultado como Cadena;	
	// Iniciar variables	
	color1 <- 0;
	color2 <- 0;
	resultado <- "";	
	// Entrada Datos
	Escribir "";
	Escribir "----- MENU ----- ";
	Escribir "1. Amarillo";
	Escribir "2. Azul";
	Escribir "3. Rojo";
	Escribir "";
	Escribir Sin Saltar "Seleccione el primer número de color";
	Leer color1;
	Escribir Sin Saltar "Seleccione el segundo número de color";
	Leer color2;	
	// Proceso1: Se valida si los colores se encuentran en el menú (1, 2 o 3).
	//          Si no, muestra en pantalla un mensaje de error	
	Si ((color1<=3 Y color1>0) Y (color2<=3 Y color2>0)) Entonces
		// Proceso2: Se valida si el color seleccionado no es el mismo
		//          Si no, muestra un mensaje mostrando que el color es el mismo
		Si (color1 <> color2) Entonces
			// Proceso3: Se valida si el color es Verde
			Si (color1 = 1 Y color2 = 2) O (color2 = 1 Y color1 = 2) Entonces
				// Salida de Datos
				resultado = "Verde";
			FinSi
			// Proceso4: Se valida si el color es Naranja
			Si (color1 = 1 Y color2 = 3) O (color2 = 1 Y color1 = 3) Entonces
				// Salida de Datos
				resultado = "Naranja";
			FinSi
			// Proceso5: Se valida si el color es Violeta
			Si (color1 = 2 Y color2 = 3) O (color2 = 2 Y color1 = 3) Entonces
				// Salida de Datos
				resultado = "Violeta";
			FinSi			
		SiNo
			// Proceso6: Se valida si seleccionó solo Amarillo
			Si (color1 = 1) Entonces
				resultado = "Amarillo";			
			FinSi
			// Proceso7: Se valida si seleccionó solo Azul
			Si (color1 = 2) Entonces
				resultado = "Azul";			
			FinSi
			// Proceso8: Se valida si seleccionó solo Rojo
			Si (color1 = 3) Entonces
				resultado = "Rojo";			
			FinSi
			// Proceso9: Se concatena el resultado con una cadena de texto
			resultado = Concatenar(resultado, ". Seleccionó el mismo color.");
		FinSi
		// Salida de Datos
		Escribir "";
		Escribir "El color es: ", resultado;
	SiNo
		// Salida de Datos
		Escribir "";
		Escribir "En el Menú no existe el color";
	FinSi
	Escribir "";	
FinAlgoritmo
