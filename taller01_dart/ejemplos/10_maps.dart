void main() {

  // Mapa: Con la palabra reservada 'Map'
  Map comidas = {    
    'favorita'  : 'hamburguesas',
    'agradables': 'sushi',
    'tolerable' : 'postre'
  };
  print(comidas);
  
  // Mapa: Con var, llaves y "clave" : "valor"
  var datos = {
    "name" : "Albeiro Ramos",
    "regional" : "Distrito Capital",
    "age" : 41,
    "officer" : false,
    "height" : 1.72
  }; 
  print(datos);

  // Mapa: Con 'var', 'Map()', corchetes[clave] = "valor"
  var comidas02 = Map();
  comidas02['favorita'] = 'hamburguesas';
  comidas02['agradables'] = 'sushi';
  comidas02['tolerable'] = 'postre';
  print(comidas02);
}