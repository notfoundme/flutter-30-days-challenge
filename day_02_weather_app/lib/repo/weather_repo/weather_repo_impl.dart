import 'package:flutter_application_1/api/weatherApi/weather_api.dart';
import 'package:flutter_application_1/models/weather_model.dart';
import 'package:flutter_application_1/repo/weather_repo/weather_repo.dart';

class WeatherRepoImpl implements WeatherRepo{
  final WeatherApi weatherApi ;
   WeatherRepoImpl( this.weatherApi);

  @override
  Future<WeatherModel> getTodayWeather(String loaction) async {
     return  await weatherApi.getTodayWeather(loaction);
  }

}