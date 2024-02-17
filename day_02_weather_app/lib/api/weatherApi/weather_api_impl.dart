
import 'dart:convert';

import 'package:flutter_application_1/api/weatherApi/weather_api.dart';
import 'package:flutter_application_1/constants/api_endpoint.dart';
import 'package:flutter_application_1/models/weather_model.dart';
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
