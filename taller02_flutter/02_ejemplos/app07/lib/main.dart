//////////////////////////////////////////
import 'package:flutter/material.dart';

//////////////////////////////////////////
void main(List<String> args) {
  runApp(const Principal());
}

//////////////////////////////////////////
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

//////////////////////////////////////////
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
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: const Text("Sitios Turísticos"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: sitiosTuristicos.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(sitiosTuristicos[index]),
                leading: Icon(Icons.star),
              ),
            );
          },
        ),
      ),
    );
  }
}

//////////////////////////////////////////
List<String> sitiosTuristicos = [
  "La Gran Muralla China",
  "La Torre Eiffel, París, Francia",
  "La Estatua de la Libertad, Nueva York, Estados Unidos",
  "El Taj Mahal, Agra, India",
  "El Coliseo Romano, Roma, Italia",
  "Machu Picchu, Perú",
  "Las Pirámides de Giza, Egipto",
  "El Gran Cañón, Arizona, Estados Unidos",
  "La Gran Barrera de Coral, Australia",
  "La Ciudad Prohibida, Beijing, China",
  "El Parque Nacional de Yellowstone, Wyoming, Estados Unidos",
  "La Isla de Pascua, Chile",
  "El Monte Everest, Nepal/Tíbet",
  "La Alhambra, Granada, España",
  "El Parque Nacional de Banff, Alberta, Canadá",
  "La Isla de Santorini, Grecia",
  "El Parque Nacional de Yosemite, California, Estados Unidos",
  "Las Cataratas del Niágara, Canadá/Estados Unidos",
  "El Kremlin, Moscú, Rusia",
  "La Torre de Pisa, Italia",
  "El Parque Nacional de Serengeti, Tanzania",
  "La Gran Mezquita de Sheikh Zayed, Abu Dhabi, Emiratos Árabes Unidos",
  "La Isla Fraser, Queensland, Australia",
  "La Torre Inclinada de Pisa, Italia",
  "La Ópera de Sídney, Australia",
  "El Parque Nacional de Zion, Utah, Estados Unidos",
  "La Isla de Bali, Indonesia",
  "El Canal de Panamá",
  "La Ciudad de Petra, Jordania",
  "El Parque Nacional Kruger, Sudáfrica",
  "La Casa de la Ópera de Sídney, Australia",
  "La Estatua del Cristo Redentor, Río de Janeiro, Brasil",
  "El Puente Golden Gate, San Francisco, Estados Unidos",
  "La Ciudad de Praga, República Checa",
  "El Monte Kilimanjaro, Tanzania",
  "La Gran Muralla, China",
  "El Monte Rushmore, Dakota del Sur, Estados Unidos",
  "La Acrópolis de Atenas, Grecia",
  "El Parque Nacional de Yellowstone, Estados Unidos",
  "La Isla de Jeju, Corea del Sur",
  "El Parque Nacional del Gran Cañón, Arizona, Estados Unidos",
  "La Isla de Maui, Hawái, Estados Unidos",
  "El Parque Nacional del Gran Cañón, Estados Unidos",
  "El Templo de Borobudur, Java, Indonesia",
  "El Monte Fuji, Japón",
  "La Torre CN, Toronto, Canadá",
  "La Isla de Vancouver, Columbia Británica, Canadá",
  "El Museo del Louvre, París, Francia",
  "El Templo de Angkor Wat, Camboya",
  "La Ciudad de Kyoto, Japón",
  "El Palacio de Buckingham, Londres, Reino Unido",
  "El Gran Palacio, Bangkok, Tailandia",
  "El Parque Nacional Torres del Paine, Chile",
  "El Parque Nacional de los Lagos de Plitvice, Croacia",
  "La Estatua de la Libertad, Estados Unidos",
  "La Isla de Santorini, Grecia",
  "El Parque Nacional de Banff, Canadá",
  "El Gran Cañón del Colorado, Estados Unidos",
  "El Parque Nacional de Yellowstone, Estados Unidos",
  "La Ciudad de Praga, República Checa",
  "El Parque Nacional de Yosemite, Estados Unidos",
  "El Monte Everest, Nepal",
  "La Isla de Pascua, Chile",
  "La Gran Muralla China, China",
  "El Taj Mahal, India",
  "El Coliseo Romano, Italia",
  "La Pirámide de Giza, Egipto",
  "La Alhambra, España",
  "El Kremlin, Rusia",
  "La Torre de Pisa, Italia",
  "La Ópera de Sídney, Australia",
  "El Canal de Panamá",
  "La Ciudad de Petra, Jordania",
  "La Estatua del Cristo Redentor, Brasil",
  "El Puente Golden Gate, Estados Unidos",
  "El Monte Rushmore, Estados Unidos",
  "La Acrópolis de Atenas, Grecia",
  "La Isla de Jeju, Corea del Sur",
  "El Templo de Borobudur, Indonesia",
  "El Monte Fuji, Japón",
  "La Torre CN, Canadá",
  "El Museo del Louvre, Francia",
  "El Templo de Angkor Wat, Camboya",
  "El Palacio de Buckingham, Reino Unido",
  "El Gran Palacio, Tailandia",
  "El Parque Nacional Torres del Paine, Chile",
  "El Parque Nacional de los Lagos de Plitvice, Croacia",
  "La Estatua de la Libertad, Estados Unidos",
  "La Isla de Santorini, Grecia",
  "El Parque Nacional de Banff, Canadá",
  "El Gran Cañón del Colorado, Estados Unidos",
  "El Parque Nacional de Yellowstone, Estados Unidos",
  "La Ciudad de Praga, República Checa",
  "El Parque Nacional de Yosemite, Estados Unidos",
  "El Monte Everest, Nepal",
  "La Isla de Pascua, Chile",
  "La Gran Muralla China, China",
  "El Taj Mahal, India",
  "El Coliseo Romano, Italia",
  "La Pirámide de Giza, Egipto",
  "La Alhambra, España",
  "El Kremlin, Rusia",
  "La Torre de Pisa, Italia",
  "La Ópera de Sídney, Australia",
  "El Canal de Panamá",
  "La Ciudad de Petra, Jordania",
  "La Estatua del Cristo Redentor, Brasil",
  "El Puente Golden Gate, Estados Unidos",
  "El Monte Rushmore, Estados Unidos",
  "La Acrópolis de Atenas, Grecia",
  "La Isla de Jeju, Corea del Sur",
  "El Templo de Borobudur, Indonesia",
  "El Monte Fuji, Japón",
  "La Torre CN, Canadá",
  "El Museo del Louvre, Francia",
  "El Templo de Angkor Wat, Camboya",
  "El Palacio de Buckingham, Reino Unido",
  "El Gran Palacio, Tailand"
];
