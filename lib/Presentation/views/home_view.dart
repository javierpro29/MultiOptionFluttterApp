import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
        child: Image.asset('images/home_center_image.png'),
      ),


    );
  }
}