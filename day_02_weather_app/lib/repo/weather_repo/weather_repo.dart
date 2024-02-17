import 'package:flutter_application_1/models/weather_model.dart';

abstract class WeatherRepo{
  Future<WeatherModel> getTodayWeather(String loaction);
}