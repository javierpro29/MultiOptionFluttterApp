import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WeatherView extends StatefulWidget {
  @override
  _WeatherViewState createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  String apiKey = '20fdfb76008f0d97399a7057b61972e9';
  String city = 'Distrito Nacional'; // Ciudad de la República Dominicana
  Map<String, dynamic>? weatherData;

  @override
  void initState() {
    super.initState();
    _fetchWeatherData();
  }

  Future<void> _fetchWeatherData() async {
    final apiUrl =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        weatherData = data;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: weatherData != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Clima en Republica Dominicana',
                    style: TextStyle(fontSize: 24),
                  ),

                  const SizedBox(height: 50,),

                  const Text(
                    'Santo Domingo',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    '${(weatherData!['weather'][0]['description'])}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Temperatura: ${(weatherData!['main']['temp'] - 273.15).toInt()}°C',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    
                    'Humedad: ${weatherData!['main']['humidity']}%',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Fecha: ${DateFormat.yMd().format(DateTime.now())}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WeatherView(),
  ));
}
