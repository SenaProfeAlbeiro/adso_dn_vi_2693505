Algoritmo variableDatosPersonales
	// Objetivo del Algoritmo
	Escribir Sin Saltar "Diseñe un algoritmo que solicite su nombre, sexo, edad, salario ";
	Escribir "(incluyendo centavos), si tiene o no vehículo de transporte y; lo muestre en pantalla.";
	Escribir "";	
	// Declarar variables
	Definir nombre Como Cadena;
	Definir sexo Como Caracter;
	Definir edad Como Entero;
	Definir salario Como Real;
	Definir transporte Como Logico;		
	// Iniciar variables
	nombre <- "";
	sexo <- '';
	edad <- 0;
	salario <- 0.0;
	transporte <- Falso;	
	// Entrada de Datos
	Escribir Sin Saltar "Digite su nombre: ";
	Leer nombre;
	Escribir Sin Saltar "Digite su sexo (H,M): ";
	Leer sexo;
	Escribir Sin Saltar "Digite su edad: ";
	Leer edad;
	Escribir Sin Saltar "Digite su salario (con centavos): ";
	Leer salario;
	Escribir Sin Saltar "¿Tiene vehículo? (1 = Si, 0 = No): ";
	Leer transporte;	
	// Salida de Datos
	Escribir "";
	Escribir "    Su nombre es : ", nombre;
	Escribir "        Usted es : ", sexo;
	Escribir "     Usted Tiene : ", edad, " años";
	Escribir "      Usted gana : ", salario, " pesos";
	Escribir "¿Tiene vehículo? : ", transporte;
	Escribir "";	
FinAlgoritmo
