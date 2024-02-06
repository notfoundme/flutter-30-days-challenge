import 'package:day_02_weather_app/api/weather_api.dart';
import 'package:day_02_weather_app/model/weather_model.dart';
import 'package:day_02_weather_app/repo/weather_repo.dart';

class WeatherRepoImpl implements WeatherRepo{
  final WeatherApi weatherApi ;
   WeatherRepoImpl( this.weatherApi);

  @override
  Future<WeatherModel> getTodayWeather(String loaction) async {
     return  await weatherApi.getTodayWeather(loaction);
  }

}