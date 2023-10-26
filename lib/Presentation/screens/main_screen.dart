import 'package:flutter/material.dart';
import 'package:flutter_navigationbar/Presentation/views/home_view.dart';
import 'package:flutter_navigationbar/Presentation/views/genero_view.dart';
import 'package:flutter_navigationbar/Presentation/views/edad_view.dart';
import 'package:flutter_navigationbar/Presentation/views/universidad_view.dart';
import 'package:flutter_navigationbar/Presentation/views/clima_view.dart';
import 'package:flutter_navigationbar/Presentation/views/woldpress_view.dart';
import 'package:flutter_navigationbar/Presentation/views/contacto_view.dart';

class MainScreen extends StatefulWidget{

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}




class _MainScreenState extends State<MainScreen> {

  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    final screens = [
      const HomeView(),
      const GeneroView(), 
      const EdadView(), 
      UniversityListView(),
      WeatherView(),
      const WordpressView(),
      const ContactoView()  
      ];

    return Scaffold(

      appBar: AppBar(
        title: const Text("Tarea 6"),
      ),


      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: selectedIndex,

        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 0,

        selectedItemColor: Colors.white, // Color de icono seleccionado
        unselectedItemColor: Colors.white, // Color de icono no seleccionado        

        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            activeIcon: const Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: colors.primary,
          ),

          BottomNavigationBarItem(
            icon: const Icon(Icons.female),
            activeIcon: const Icon(Icons.female_outlined),
            label: 'Genero',
            backgroundColor: colors.primary,
          ),


          BottomNavigationBarItem(
            icon: const Icon(Icons.accessibility_new),
            activeIcon: const Icon(Icons.accessibility_new_outlined),
            label: 'Edad',
            backgroundColor: colors.primary,
          ),


          BottomNavigationBarItem(
            icon: const Icon(Icons.school),
            activeIcon: const Icon(Icons.school_outlined),
            label: 'Universities',
            backgroundColor: colors.primary,
          ),

          BottomNavigationBarItem(
            icon: const Icon(Icons.sunny_snowing),
            activeIcon: const Icon(Icons.sunny_snowing),
            label: 'Clima',
            backgroundColor: colors.primary,
          ),


          BottomNavigationBarItem(
            icon: const Icon(Icons.newspaper),
            activeIcon: const Icon(Icons.newspaper_outlined),
            label: 'Woldpress',
            backgroundColor: colors.primary,
          ),


          BottomNavigationBarItem(
            icon: const Icon(Icons.contact_phone),
            activeIcon: const Icon(Icons.contact_phone_outlined),
            label: 'Contact',
            backgroundColor: colors.primary,
          ),

        ],
      )
    );
  }
}