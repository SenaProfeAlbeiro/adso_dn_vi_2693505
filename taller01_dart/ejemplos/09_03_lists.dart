void main() {
  List ejemplo01=[23,5432,56,647382,732];
  List ejemplo02=[23,"Albeiro",true,647382,3.1416,"Ramos"];
  List ejemplo03=[true,112111,ejemplo01];
  print(ejemplo01);
  print(ejemplo02);
  print(ejemplo03);
  List<String> ejemplo04=["Hola", "Mundo", "1983"];
  print(ejemplo04);
  List<int> ejemplo05=[123,456,789];
  print(ejemplo05);

  // De Mayor a Menor ó de Menor a Mayor con Strings
  List<String> nombre = ['a','b','g'];
  // Mayor a menor
  nombre.sort(
    (a, b) => a.compareTo(b),
  );
  print(nombre);
  // Menor a mayor
  nombre.sort(
    (a, b) => b.compareTo(a),    
  );
  print(nombre);
}