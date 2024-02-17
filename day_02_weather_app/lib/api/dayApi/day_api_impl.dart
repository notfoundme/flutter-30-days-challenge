import 'dart:convert';

import 'package:flutter_application_1/api/dayApi/day_api.dart';
import 'package:flutter_application_1/constants/api_endpoint.dart';
import 'package:flutter_application_1/models/day_data_model.dart';
import 'package:http/http.dart' as http;

class DayApiImpl implements DayApi {
  @override
  Future<List<DayDataModel>> getAllDayData() async {
    try {
      http.Response response = await http.get(
        Uri.parse(ApiEndPoint().getApiUrl("Biratnagar")),
      );

      if (response.statusCode == 200) {
        List<dynamic> daysData = (await json.decode(response.body))["days"];

        return daysData.map((item) {
          return DayDataModel.fromJson(item);
        }).toList();
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
