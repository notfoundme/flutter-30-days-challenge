import 'package:day_02_weather_app/api/weather_api.dart';
import 'package:day_02_weather_app/api/weather_api_impl.dart';
import 'package:day_02_weather_app/views/home_screen.dart';
import 'package:flutter/material.dart';

class BaseApp extends StatelessWidget {
  const BaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherApi weatherApi = WeatherApiImpl();
    weatherApi.getTodayWeather("Biratnagar");
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
