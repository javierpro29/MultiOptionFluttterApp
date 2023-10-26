// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class EdadView extends StatefulWidget {
//   const EdadView({super.key});

//   @override
//   State<EdadView> createState() => _EdadViewState();
// }




// class _EdadViewState extends State<EdadView> {

//   final _textController = TextEditingController();

  
//   Future<String> fetchData(String name) async {
//     final url = Uri.parse('https://api.genderize.io/?name=$name');

//     try {
//       final response = await http.get(url);

//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         return data['age'];

//       } else {
    
//         throw Exception('Error en la solicitud: ${response.statusCode}');
//       }
//     } catch (e) {
//       //print('Error: $e');
//       return ''; 
//     }
//   }


  
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//      child: Container(
//       padding: const EdgeInsets.all(20.0),

//       child: SingleChildScrollView(
//         child: Column(
//           children: [
            
//             const SizedBox(height: 30,),
      
//             const Text('Determinar Edad', style: TextStyle(fontSize: 30), ),
      
//             const SizedBox(height: 30,),
      
//             TextField(
//               controller: _textController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(), labelText: 'Enter su Nombre:'),
              
//             ),
           
//            const SizedBox(height: 10,),
      
//             ElevatedButton.icon(
//               onPressed: () async {
              

//               }, 
//               icon: const Icon(Icons.refresh),
//               label: const Text('Determinar'),
//               style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.purple)),  
//             ),

//             const SizedBox(height: 10,),

            

//           ]),
//         ),
//       ), 
//     );
//   }
// }















import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EdadView extends StatefulWidget {
  const EdadView({super.key});

  @override
  _EdadViewState createState() => _EdadViewState();
}

class _EdadViewState extends State<EdadView> {
  final TextEditingController _nameController = TextEditingController();
  String _ageCategory = '';
  int _age = 0;

  Future<void> _detectAge() async {
    final name = _nameController.text;
    final apiUrl = Uri.parse('https://api.agify.io/?name=$name');
   

    final response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      final estimatedAge = data['age'] as int;

      setState(() {
        _age = estimatedAge;

        if (_age <= 20) {
          _ageCategory = 'Joven';
        } else if (_age <= 60) {
          _ageCategory = 'Adulto/a';
        } else {
          _ageCategory = 'Anciano/a';
        }
      });
    } else {
      setState(() {
        _ageCategory = 'Error';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

          padding: const EdgeInsets.all(20.0),

          child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Determinar Edad', style: TextStyle(fontSize: 30), ),
            
            const SizedBox(height: 30,),

            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: 'Entre su Nombre:'),),

            const SizedBox(height: 10,),

            ElevatedButton.icon(
              onPressed: _detectAge,
              icon: const Icon(Icons.refresh),
            label: const Text('Determinar'),
              
            ),




            const SizedBox(height: 30,),

            const SizedBox(height: 20),

            
            if (_ageCategory == 'Joven')
                Image.asset('images/joven.png') 

            else if (_ageCategory == 'Adulto/a')
              Image.asset('images/adulto.png')
            
            else if (_ageCategory == 'Anciano/a')
              Image.asset('images/anciano.png'),

          

            const SizedBox(height: 20),

            Text('Edad estimada: $_age años', style: const TextStyle(fontSize: 20),),

            Text('Categoría de edad: $_ageCategory',style: const TextStyle(fontSize: 20),),

          ],
          ),
        ),
        ),
      ),
    );
  }
}
