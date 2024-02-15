
import 'package:day_02_weather_app/api/weatherApi/weather_api_impl.dart';
import 'package:day_02_weather_app/model/weather_model.dart';
import 'package:day_02_weather_app/repo/weather_repo/weather_repo.dart';
import 'package:day_02_weather_app/repo/weather_repo/weather_repo_impl.dart';
import 'package:flutter/material.dart';

/// [HomeViewModel]
/// This contains view data for  [HomeScreen]
/// contains [currentTemperature], [currentConditions], [todaysDate]
/// [realFeels], [wind], [humidity],[pressure],
///

class HomeViewModel with ChangeNotifier {
  final WeatherRepo _repository = WeatherRepoImpl(WeatherApiImpl());
  String _currentTemperature = "--";
  String get currentTemperature => _currentTemperature;
  String _currentConditions = "--";
  String get currentConditions => _currentConditions;
  String _todaysDate = "--";
  String get todaysDate => _todaysDate;
  String _realFeels = "--";
  String get realFeels => _realFeels;
  String _wind = "--";
  String get wind => _wind;
  String _humidity = "--";
  String get humidity => _humidity;
  String _pressure = "--";
  String get pressure => _pressure;

// If user doesnt give any location default is Biratnagar
  Future<void> fetchUIData({String location = "Biratnagar"}) async {
    WeatherModel garima = await _repository.getTodayWeather(location);
    _currentTemperature = garima.temp.toString();
    _currentConditions = garima.conditions.toString();
    _todaysDate = "2021-02-02";
    _realFeels = garima.feelslike.toString();
    _pressure = garima.pressure.toString();
    _humidity = garima.humidity.toString();
    _wind = garima.windspeed.toString();
    notifyListeners();
  }
}

