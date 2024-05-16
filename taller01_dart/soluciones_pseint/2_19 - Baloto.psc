Proceso estructurasBaloto
	// Declarar variables
	Definir volver Como Caracter;
	Definir i, num1, num2, num3, num4, num5, num6, aux como Entero;
	// Proceso1: Se repite el menú si se selecciona 's'
	Repetir
		Limpiar Pantalla;
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Diseñe un programa que por teclado solicite una acción y que muestre 6 números ";
		Escribir "aleatorios del 1 al 45 sin repetirse y organizados de menor a mayor (baloto).";
		// Iniciar Variables
		aux <- 0;
		num1 <- 0;
		num2 <- 0;
		num3 <- 0;
		num4 <- 0;
		num5 <- 0;
		num6 <- 0;
		// Entrada de Datos: Se inicia el Baloto con cualquier tecla
		Escribir "";
		Escribir "Presione una tecla para hallar los números del baloto: ";
		esperar tecla;		
		// Proceso2: Valor al azar del num1
		num1 <- azar(45) + 1;
		// Proceso3: Se repite hasta que el num1 y num2 sean diferentes
		Repetir
			// Proceso4: Valor al azar del num2
			num2 <- azar(45) + 1;			
		Hasta Que (num1 <> num2)
		// Proceso5: Se repite hasta que el num1, num2 y num3 sean diferentes
		Repetir
			// Proceso6: Valor al azar del num3
			num3 <- azar(45) + 1;			
		Hasta Que (num3 <> num1 Y num3 <> num2)
		// Proceso7: Se repite hasta que el num1, num2, num3 y num4 sean diferentes
		Repetir
			// Proceso8: Valor al azar del num4
			num4 <- azar(45) + 1;			
		Hasta Que (num4 <> num1 Y num4 <> num2 Y num4 <> num3)
		// Proceso9: Se repite hasta que el num1, num2, num3, num4 y num5 sean diferentes
		Repetir
			// Proceso10: Valor al azar del num5
			num5 <- azar(45) + 1;			
		Hasta Que (num5 <> num1 Y num5 <> num2 Y num5 <> num3 Y num5 <> num4)
		// Proceso11: Se repite hasta que el num1, num2, num3, num4, num5 y num6 sean diferentes
		Repetir
			// Proceso12: Valor al azar del num6
			num6 <- azar(45) + 1;			
		Hasta Que num6 <> num1 & num6 <> num2 & num6 <> num3 & num6 <> num4 & num6 <> num5
		// Proceso13: Se repite n-1 veces la cantidad de números
		Para i <- 0 Hasta 4 Con Paso 1 Hacer
			// Proceso14: Si num1 es mayor o igual a num2, se cambian de posición
			Si num1 >= num2 Entonces
				aux <- num1;
				num1 <- num2;
				num2 <- aux;
			FinSi
			// Proceso15: Si num2 es mayor o igual a num3, se cambian de posición
			Si num2 >= num3 Entonces
				aux <- num2;
				num2 <- num3;
				num3 <- aux;
			FinSi
			// Proceso16: Si num3 es mayor o igual a num4, se cambian de posición
			Si num3 >= num4 Entonces
				aux <- num3;
				num3 <- num4;
				num4 <- aux;
			FinSi
			// Proceso17: Si num4 es mayor o igual a num5 se cambian de posición
			Si num4 >= num5 Entonces
				aux <- num4;
				num4 <- num5;
				num5 <- aux;
			FinSi
			// Proceso18: Si num5 es mayor o igual a num6, se cambian de posición
			Si num5 >= num6 Entonces
				aux <- num5;
				num5 <- num6;
				num6 <- aux;
			FinSi
		FinPara
		// Salida de Datos: Muestra en pantalla los números ordenados
		Escribir "";
		Escribir num1;
		Escribir num2;
		Escribir num3;
		Escribir num4;
		Escribir num5;
		Escribir num6;
		// Entrada de Datos: Volver al Menú Principal
		Escribir "";		
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		Leer volver;
	Hasta Que (volver <> 's')
FinProceso