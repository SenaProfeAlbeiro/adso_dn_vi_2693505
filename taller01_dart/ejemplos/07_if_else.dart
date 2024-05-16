import 'dart:io';

void main() {

  var edad;
  // Imprime linea por consola.
  stdout.writeln('¿Cual es tu edad?');
  // Solcitiar información
  // La misma es asignada a una variable    
  edad = stdin.readLineSync();
  edad = int.parse(edad);
  // Realizo condición, para sabe si es mayor de edad
  // la misma de retornar TRUE o FALSE
  // debe notar que >= hace incluyente al número 18
  if (edad>=18) {
    stdout.writeln('Eres mayor de edad.');
  } else {
    stdout.writeln('Eres menor de edad.');
  }

}