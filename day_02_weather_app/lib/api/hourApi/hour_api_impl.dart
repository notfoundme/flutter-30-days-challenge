import 'dart:convert';

import 'package:day_02_weather_app/api/hourApi/hourApi.dart';
import 'package:day_02_weather_app/constants/api_endpoint.dart';
import 'package:day_02_weather_app/model/hour_model.dart';
import 'package:http/http.dart' as http;

class HourApiImpl implements HourApi {
  @override
  Future<List<HourModel>> getAllHourData(String location) async {
    try {
      http.Response response = await http.get(
        Uri.parse(ApiEndPoint().getApiUrl("Biratnagar")),
      );

      if (response.statusCode == 200) {

        List<dynamic> daysData = (await json.decode(response.body))["days"];

        // Check if the "days" array is not empty
        if (daysData.isNotEmpty) {
          List<dynamic> hourlyData = daysData[0]["hours"];

          return hourlyData.map((item) {
            return HourModel.fromJson(item);
          }).toList();
        } else {
          throw Exception("No hourly data available in the response.");
        }
      } else {
        throw Exception(
            "Failed to load data, status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error in HourApiImpl: $e");
      throw Exception("Error from Weather Api: $e");
    }
  }
}
