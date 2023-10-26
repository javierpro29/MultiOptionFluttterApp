import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
//import 'package:url_launcher/url_launcher.dart';

class UniversityListView extends StatefulWidget {
  @override
  _UniversityListViewState createState() => _UniversityListViewState();
}

class _UniversityListViewState extends State<UniversityListView> {
  final TextEditingController _countryController = TextEditingController();
  List<University> _universities = [];

  Future<void> _fetchUniversities() async {
    final countryName = _countryController.text;
    final apiUrl = Uri.parse('http://universities.hipolabs.com/search?country=$countryName');

    final response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;
      final universities = data.map((e) => University.fromJson(e)).toList();

      setState(() {
        _universities = universities;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _countryController,
              decoration: InputDecoration(labelText: 'Nombre del País en Inglés'),
            ),
          ),
          ElevatedButton(
            onPressed: _fetchUniversities,
            child: Text('Obtener Universidades'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _universities.length,
              itemBuilder: (context, index) {
                return UniversityCard(university: _universities[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class University {
  final String name;
  final String domain;
  final String webPage;

  University({
    required this.name,
    required this.domain,
    required this.webPage,
  });

  factory University.fromJson(Map<String, dynamic> json) {
    return University(
      name: json['name'],
      domain: json['domains'][0],
      webPage: json['web_pages'][0],
    );
  }
}

class UniversityCard extends StatelessWidget {
  final University university;

  UniversityCard({required this.university});

  Future<void> _launchURL() async {
    // final url = university.webPage;

    // if (await canLaunchUrl(Uri.parse(url))) {
    //   await launch(url);
    // } else {
    //   throw 'No se pudo abrir la URL:';
    // }
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          ListTile(
            title: Text(university.name),
            subtitle: Text('Dominio: ${university.domain}'),
          ),
          ButtonBar(
            children: [
             TextButton(
                onPressed: _launchURL,// Abre la página web de la universidad
                child: Text('Ir a la Página Web'),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: UniversityListView(),
  ));
}

