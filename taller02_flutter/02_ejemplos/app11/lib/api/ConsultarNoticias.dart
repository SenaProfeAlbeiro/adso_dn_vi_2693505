import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<Noticias>> ConsultarNoticias() async {
  var url = Uri.parse(
      "https://jsonplaceholder.typicode.com/posts"); //Uri.parse convierte String a URL

  final response = await http.get(url);

  return compute(pasaraListarNoticias, response.body);
}

////////////// Pasar ListarNoticias
List<Noticias> pasaraListarNoticias(String respuestaBody) {
  final pasar = json.decode(respuestaBody).cast<Map<String, dynamic>>();

  return pasar.map<Noticias>((json) => Noticias.fromJson(json)).toList();
}
////////////////

class Noticias {
  final userId;
  final id;
  final title;
  final body;

  Noticias({this.userId, this.id, this.title, this.body});

  factory Noticias.fromJson(Map<String, dynamic> json) {
    return Noticias(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
