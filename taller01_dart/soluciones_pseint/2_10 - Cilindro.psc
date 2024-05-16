Algoritmo estructuraRepetitivaRepetirCilindro
	// Declarar variables
	Definir volver Como Caracter;
	Definir radio, altura, area, perimetro, volumen Como Real;
	// Proceso1: Se repite el menú si se selecciona 's'
	Repetir
		Limpiar Pantalla;		
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Diseñe un algoritmo que encuentre el área y perímetro del material ";
		Escribir Sin Saltar "necesario para construir un cilindro con tapa también que volumen ";
		Escribir "ocupara, con sus respectivas unidades y restricciones";
		// Iniciar variables
		volver <- '';
		radio <- 0.0;
		altura <- 0.0;
		area <- 0.0;
		perimetro <- 0.0;
		volumen <- 0.0;
		// Proceso2: Se repiten las opciones hasta que el radio y la altura sean mayores a 0
		Repetir
			// Salida de Datos
			Escribir "";
			Escribir "Recuerde que el radio de la tapa y la altura del rectángulo no pueden ser menores o iguales a 0";
			Escribir "";
			// Entrada de Datos
			Escribir Sin Saltar "Digite el radio:";
			Leer radio;
			Escribir Sin Saltar "Digite la altura:";
			Leer altura;
		Hasta Que (radio > 0 & altura > 0);
		// Proceso3: Se halla la circunferencia
		perimetro <- 2 * radio * PI;
		// Proceso4: Se halla el área del círculo y se multiplica por 2
		area <- 2 * (PI * radio ^ 2);
		// Proceso5: Se suma el área de la circunferencia con el área del rectángulo
		area <- area + (perimetro * altura);
		// Proceso6: Se suma la circunferencia y el perímetro del rectángulo
		perimetro <- (4 * perimetro) + (2 * altura);
		// Proceso6: Se halla el volumen
		volumen <- (PI * radio ^ 2) * altura;
		// Salida de datos
		Escribir "";
		Escribir "La Figura es un:   Cilindro";
		Escribir "Su perímetro es:   ", perimetro, " metros";
		Escribir "Su área es:        ", area, " metros cuadrados";
		Escribir "Su volumen es:     ", volumen, " metros cúbicos";
		// Entrada de Datos: Volver al Menú
		Escribir "";		
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		leer volver;
	Hasta Que (volver <> 's')	
FinAlgoritmo
