/////////////////////////////////////////
import 'package:flutter/material.dart';

/////////////////////////////////////////
void main(List<String> args) {
  runApp(const Principal());
}

/////////////////////////////////////////
class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SENA | CEET",
      home: HomePrincipal(),
    );
  }
}

/////////////////////////////////////////
class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text("Sitios Turísticos"),
      ),
      body: ListView.builder(
        itemCount: sitiosTuristicos.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: ListTile(
            leading: Icon(Icons.flag),
            title: Text(sitiosTuristicos[index]['nombre']),
            subtitle: Text(sitiosTuristicos[index]['pais']),
          ));
        },
      ),
    );
  }
}

////////////////////////////////////////
List<Map<String, dynamic>> sitiosTuristicos = [
  {
    'nombre': 'La Gran Muralla China',
    'pais': 'China',
    'descripcion':
        'La Gran Muralla China es una antigua fortificación china construida para proteger el imperio chino de las invasiones de los pueblos nómadas del norte.',
    'ubicacion': 'China',
    'fecha_lanzamiento': 'Siglo VII a.C.',
    'generacion': 'Antiguo'
  },
  {
    'nombre': 'Torre Eiffel',
    'pais': 'Francia',
    'descripcion':
        'La Torre Eiffel es una torre de hierro ubicada en el Campo de Marte, en París. Es uno de los símbolos más reconocidos de Francia y del mundo.',
    'ubicacion': 'París, Francia',
    'fecha_lanzamiento': '31 de marzo de 1889',
    'generacion': 'Moderno'
  },
  {
    'nombre': 'Estadio Maracaná',
    'pais': 'Brasil',
    'descripcion':
        'El Estadio Maracaná es uno de los estadios de fútbol más grandes del mundo y ha sido sede de importantes eventos deportivos, incluida la final de la Copa del Mundo de la FIFA.',
    'ubicacion': 'Río de Janeiro, Brasil',
    'fecha_lanzamiento': '2 de junio de 1950',
    'generacion': 'Contemporáneo'
  },
  {
    'nombre': 'Machu Picchu',
    'pais': 'Perú',
    'descripcion':
        'Machu Picchu es una antigua ciudad inca ubicada en los Andes peruanos. Es uno de los destinos turísticos más populares del mundo debido a su impresionante arquitectura y paisajes.',
    'ubicacion': 'Cuzco, Perú',
    'fecha_lanzamiento': 'Siglo XV',
    'generacion': 'Antiguo'
  },
  {
    'nombre': 'Coliseo Romano',
    'pais': 'Italia',
    'descripcion':
        'El Coliseo Romano es un antiguo anfiteatro ubicado en el centro de Roma. Es uno de los monumentos más famosos del mundo y un símbolo del Imperio Romano.',
    'ubicacion': 'Roma, Italia',
    'fecha_lanzamiento': '80 d.C.',
    'generacion': 'Antiguo'
  },
  {
    'nombre': 'Pirámides de Giza',
    'pais': 'Egipto',
    'descripcion':
        'Las Pirámides de Giza son una de las siete maravillas del mundo antiguo y uno de los sitios turísticos más famosos del planeta. Están ubicadas en las afueras de El Cairo, Egipto.',
    'ubicacion': 'El Cairo, Egipto',
    'fecha_lanzamiento': 'Siglo XXVI a.C.',
    'generacion': 'Antiguo'
  },
  {
    'nombre': 'Gran Cañón',
    'pais': 'Estados Unidos',
    'descripcion':
        'El Gran Cañón es un impresionante cañón tallado por el río Colorado en el estado de Arizona. Es uno de los destinos turísticos más visitados de los Estados Unidos.',
    'ubicacion': 'Arizona, Estados Unidos',
    'fecha_lanzamiento': 'Siglo XVIII',
    'generacion': 'Antiguo'
  },
  {
    'nombre': 'Gran Barrera de Coral',
    'pais': 'Australia',
    'descripcion':
        'La Gran Barrera de Coral es el sistema de arrecifes de coral más grande del mundo. Se encuentra frente a la costa de Queensland, Australia, y es uno de los destinos de buceo más populares del mundo.',
    'ubicacion': 'Queensland, Australia',
    'fecha_lanzamiento': 'Siglo XVII',
    'generacion': 'Antiguo'
  },
  {
    'nombre': 'Ciudad Prohibida',
    'pais': 'China',
    'descripcion':
        'La Ciudad Prohibida es un complejo de palacios imperiales ubicado en el centro de Pekín. Fue la residencia oficial de los emperadores chinos durante casi 500 años.',
    'ubicacion': 'Pekín, China',
    'fecha_lanzamiento': '1406',
    'generacion': 'Antiguo'
  },
  {
    'nombre': 'Parque Nacional Yellowstone',
    'pais': 'Estados Unidos',
    'descripcion':
        'El Parque Nacional Yellowstone es el primer parque nacional del mundo y es famoso por sus geiseres, géiseres de lodo, aguas termales y vida silvestre.',
    'ubicacion': 'Wyoming, Estados Unidos',
    'fecha_lanzamiento': '1 de marzo de 1872',
    'generacion': 'Moderno'
  },
  {
    'nombre': 'Isla de Pascua',
    'pais': 'Chile',
    'descripcion':
        'La Isla de Pascua es famosa por sus misteriosas estatuas de piedra llamadas moai, que fueron talladas por los antiguos habitantes de la isla. Es un destino turístico único en medio del Pacífico Sur.',
    'ubicacion': 'Chile',
    'fecha_lanzamiento': 'Siglo XIII',
    'generacion': 'Antiguo'
  },
  {
    'nombre': 'Monte Everest',
    'pais': 'Nepal/Tíbet',
    'descripcion':
        'El Monte Everest es la montaña más alta del mundo y representa uno de los mayores desafíos para los alpinistas. Es parte de la cordillera del Himalaya, en la frontera entre Nepal y el Tíbet.',
    'ubicacion': 'Himalaya',
    'fecha_lanzamiento': '29 de mayo de 1953',
    'generacion': 'Contemporáneo'
  },
  {
    'nombre': 'Alhambra',
    'pais': 'España',
    'descripcion':
        'La Alhambra es un complejo palaciego y fortaleza ubicado en Granada, España. Es un ejemplo excepcional de la arquitectura islámica y uno de los lugares más visitados de España.',
    'ubicacion': 'Granada, España',
    'fecha_lanzamiento': 'Siglo IX',
    'generacion': 'Antiguo'
  }
];
