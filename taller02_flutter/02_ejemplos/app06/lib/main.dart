//////////////////////////////////////////
import 'package:flutter/material.dart';

//////////////////////////////////////////
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
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: const Text("SENA | CEET"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.cyan,
            child: Center(child: Text(index.toString())),
          );
        },
      ),
    );
  }
}
