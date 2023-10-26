import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GeneroView extends StatefulWidget {
  const GeneroView({super.key});

  @override
  State<GeneroView> createState() => _GeneroViewState();
}


class _GeneroViewState extends State<GeneroView> {

  final _textController = TextEditingController();

  
  Future<String> fetchData(String name) async {
    final url = Uri.parse('https://api.genderize.io/?name=$name');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['gender'];

      } else {
    
        throw Exception('Error en la solicitud: ${response.statusCode}');
      }
    } catch (e) {
      //print('Error: $e');
      return ''; 
    }
  }



  
  @override
  Widget build(BuildContext context) {
    return Center(
     child: Container(
      padding: const EdgeInsets.all(20.0),

      child: SingleChildScrollView(
        child: Column(
          children: [
            
            const SizedBox(height: 30,),
      
            const Text('Determinar Genero', style: TextStyle(fontSize: 30), ),
      
            const SizedBox(height: 30,),
      
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: 'Entre su Nombre:'),
              
            ),
           
           const SizedBox(height: 10,),
      
            ElevatedButton.icon(
              onPressed: () async {
                final gender = await fetchData(_textController.text);

                  if (gender == 'male') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('El género es masculino', style: TextStyle(fontSize: 30, color: Colors.white), ),
                        backgroundColor: Colors.blue,
                      ),
                    );
                    
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('El género es femenino', style: TextStyle(fontSize: 30, color: Colors.white), ),
                        backgroundColor: Colors.pink,
                      )
                    );
                      
                  }

              }, 
            icon: const Icon(Icons.refresh),
            label: const Text('Determinar'),
          ),
      
      
            const SizedBox(height: 30,),
      
          ]),
        ),
      ),  
    );
  }
}