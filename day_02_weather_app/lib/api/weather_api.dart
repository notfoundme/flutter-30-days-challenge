import 'package:day_02_weather_app/model/weather_model.dart';

abstract class WeatherApi{

  Future<WeatherModel> getTodayWeather(String loaction);
}

