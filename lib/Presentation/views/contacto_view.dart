import 'package:flutter/material.dart';

class ContactoView extends StatelessWidget {
  const ContactoView({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/bg_itla.png'),
          fit: BoxFit.cover, 
        ),
      ),
      
      child:  Center(
        child: Container(
            
              width: 320, // Ancho del contenedor
              height: 550, // Alto del contenedor
              decoration: BoxDecoration(
                color: Colors.white, // Fondo blanco
                borderRadius: BorderRadius.circular(20.0), // Bordes redondeados
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Agrega una imagen
                  Image.asset('images/me.jpg', width: 250,), // Reemplaza con la ruta de tu imagen

                  const SizedBox(height: 10),


                  const Text(
                        'Anderson Javier Balbuena',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  ),


                  const SizedBox(height: 50),

                  const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.phone, color: Color.fromRGBO(0, 149, 246, 1), size: 24.0), // Icono que quieras usar
                        SizedBox(width: 8.0), // Espacio entre el icono y el texto
                        Text(
                          '829-747-1475',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 149, 246, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.email, color: Color.fromRGBO(0, 149, 246, 1), size: 24.0), // Icono que quieras usar
                        SizedBox(width: 8.0),  // Espacio entre el icono y el texto
                        Text(
                          'andersonjavier2909@gmail.com',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 149, 246, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),


                  const SizedBox(height: 10),

                  const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.public, color: Color.fromRGBO(0, 149, 246, 1), size: 24.0), // Icono que quieras usar
                        SizedBox(width: 8.0), // Espacio entre el icono y el texto
                        Text(
                          'andersonjavier.nerlify.app',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 149, 246, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),


                  const SizedBox(height: 10),

                  const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.forum, color: Color.fromRGBO(0, 149, 246, 1), size: 24.0), // Icono que quieras usar
                        SizedBox(width: 8.0), // Espacio entre el icono y el texto
                        Text(
                          'instagram: anderson_jav_29',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 149, 246, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),






                ],
              ),



            
              
            ),
      ),


    );
  }
}


















  // Container(
              
  //               width: 300, // Ancho del contenedor
  //               height: 200, // Alto del contenedor
  //               decoration: BoxDecoration(
  //                 color: Colors.white, // Fondo blanco
  //                 borderRadius: BorderRadius.circular(20.0), // Bordes redondeados
  //               ),
                
  //               child: const Column(
  //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                 children: [
  //                   Text('Genero:',
  //                     style: TextStyle(
  //                       color: Colors.black,
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.bold,
  //                     ),
  //                   ),
        
  //                   Icon(Icons.male, size: 60, color: Colors.blue,),
  //                   //Icon(Icons.female, size: 60, color: Colors.pink,),
        
                    
  //                 ],
  //               ),
  //             ),
      