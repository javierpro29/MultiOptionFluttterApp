import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: unused_import
import 'dart:convert';



class WordpressView extends StatelessWidget {
  const WordpressView({super.key});

  
  // Future<void> _launchURL() async{
  //   if(await canLaunchUrl(Uri.parse('https://www.sonymusic.com/sonymusic/smg-gives-back-with-second-annual-season-of-giving-campaign/'))){
  //     await launchUrl(Uri.parse('https://www.sonymusic.com/sonymusic/smg-gives-back-with-second-annual-season-of-giving-campaign/'));
  //   }else{
  //     print('No se pudo abrir el enlace');
  //   }
  // }

  Future<void> _launchURL() async {
    //final url = university.webPage;

    // if (await canLaunchUrl(Uri.parse(url))) {
    //   await launch(url);
    // } else {
    //   throw 'No se pudo abrir la URL:';
    // }
  }



  @override
  Widget build(BuildContext context) {

    return Container(

      decoration: const BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage('images/bg_itla.png'),
        //   fit: BoxFit.cover, 
        // ),
        color: Color.fromRGBO(255, 255, 255, 1)
      ),
      
      child:  SingleChildScrollView(
        child: Column(
          children: [
            
            Center(
              child: Image.asset('images/sony_music.png', width: 170,), 
            ),
      
            SizedBox(height: 60,),
      
            const Center(
              child: Column(
                children: [
                  Text(
                      'News',
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ), 
                  ),
      
                  Card(
                    margin: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        ListTile(
                          title: 
                          Text("Sony Music Group Continues To Give Back With Its Second Annual ‘Season of Giving’ Campaign", style: TextStyle(fontSize: 18),),
                          
                          //subtitle: Text('Company To Contribute Nearly 500,000 USD Collectively Across All Corporate Regions Artists and Songwriters Partner with Select Organizations to Support Local Communities '),
      
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 10.0), // Ajusta el valor según el espacio deseado
                            child: Text(
                              'Company To Contribute Nearly 500,000 USD Collectively Across All Corporate Regions Artists and Songwriters Partner with Select Organizations to Support Local Communities',
                            ),
                          ),
      
      
                        ),
                        
      
                        SizedBox(height: 10,),
      
                        Text('Ir a la noticia original...', style: TextStyle(fontSize: 18, color: Color.fromRGBO(0, 149, 246, 1)),),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
      
      
      
      
                  Card(
                    margin: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        ListTile(
                          title: 
                          Text("How To Fail with Elizabeth Day Joins Sony Music Entertainment’s Podcast Network", style: TextStyle(fontSize: 18),),
                          
                          //subtitle: Text('Company To Contribute Nearly 500,000 USD Collectively Across All Corporate Regions Artists and Songwriters Partner with Select Organizations to Support Local Communities '),
      
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 10.0), // Ajusta el valor según el espacio deseado
                            child: Text(
                              'The landmark partnership brings new chapter for top UK independent female podcaster',
                            ),
                          ),
      
      
                        ),
                        
      
                        SizedBox(height: 10,),
      
                        Text('Ir a la noticia original...', style: TextStyle(fontSize: 18, color: Color.fromRGBO(0, 149, 246, 1)),),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
      
      
      
                  Card(
                    margin: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        ListTile(
                          title: 
                          Text("New Season of Hit Podcast Series Crooked City: Dixon, IL Explores Gripping Story Behind the Rise & Fall of ‘The Horse Queen’", style: TextStyle(fontSize: 18),),
                          
                          //subtitle: Text('Company To Contribute Nearly 500,000 USD Collectively Across All Corporate Regions Artists and Songwriters Partner with Select Organizations to Support Local Communities '),
      
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 10.0), // Ajusta el valor según el espacio deseado
                            child: Text(
                              'From Sony Music Entertainment and Truth Media Comes the Incredible Story of Big Scandal & Big Money in a Small Town  Subscribe to The Binge to Listen To The Full Season Today',
                            ),
                          ),
      
      
                        ),
                        
      
                        SizedBox(height: 10,),
      
                        Text('Ir a la noticia original...', style: TextStyle(fontSize: 18, color: Color.fromRGBO(0, 149, 246, 1)),),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
      
      
      
      
      
                ],
              ),
            )         
      
            
            
      
      
      
        ]),
      ),
    );
  }
}