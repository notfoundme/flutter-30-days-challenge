import 'dart:convert';

import 'package:day_02_weather_app/api/weather_api.dart';
import 'package:day_02_weather_app/constants/api_endpoint.dart';
import 'package:day_02_weather_app/model/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherApiImpl implements WeatherApi {
  @override
  Future<WeatherModel> getTodayWeather(String loaction) async {
    //fetch data

    try {
      http.Response response =
          await http.get(Uri.parse(ApiEndPoint().getApiUrl(loaction),),);
      Map<String, dynamic> currentConditions =
          (await json.decode(response.body))["currentConditions"];

      //parse result
      //This is already single Map so no loop is used
      return WeatherModel.fromJson(currentConditions);
    } catch (e) {
      throw Exception("Error from Weather Api");
    }
  }
}
