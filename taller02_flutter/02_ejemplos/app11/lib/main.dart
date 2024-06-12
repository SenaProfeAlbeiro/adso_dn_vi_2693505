////////////////////////////////////////////////////

import 'package:app11/api/ConsultarNoticias.dart';
import 'package:flutter/material.dart';

////////////////////////////////////////////////////
void main(List<String> args) {
  runApp(Principal());
}

////////////////////////////////////////////////////
class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SENA | CEET",
      home: HomePrincipal(),
    );
  }
}

////////////////////////////////////////////////////
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
        title: Text("Barra Navegación"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.10),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.newspaper),
                title: Text("Noticias"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  ConsultarNoticias().then((resp) {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("Navegación"),
                            backgroundColor: Colors.amber,
                            foregroundColor: Colors.black54,
                          ),
                          body: ListView.builder(
                            itemCount: resp.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: ListTile(
                                  title: Text(resp[index].title),
                                  subtitle: Text(resp[index].body),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  });
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.newspaper),
                title: Text("Noticias"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  ConsultarNoticias().then((resp) {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("Navegación"),
                            backgroundColor: Colors.amber,
                            foregroundColor: Colors.black54,
                          ),
                          body: ListView.builder(
                            itemCount: resp.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: ListTile(
                                  title: Text(resp[index].title),
                                  subtitle: Text(resp[index].body),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  });
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.newspaper),
                title: Text("Noticias"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  ConsultarNoticias().then((resp) {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("Navegación"),
                            backgroundColor: Colors.amber,
                            foregroundColor: Colors.black54,
                          ),
                          body: ListView.builder(
                            itemCount: resp.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: ListTile(
                                  title: Text(resp[index].title),
                                  subtitle: Text(resp[index].body),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  });
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.newspaper),
                title: Text("Noticias"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  ConsultarNoticias().then((resp) {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("Navegación"),
                            backgroundColor: Colors.amber,
                            foregroundColor: Colors.black54,
                          ),
                          body: ListView.builder(
                            itemCount: resp.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: ListTile(
                                  title: Text(resp[index].title),
                                  subtitle: Text(resp[index].body),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
