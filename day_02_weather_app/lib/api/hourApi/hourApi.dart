import 'package:day_02_weather_app/model/hour_model.dart';

abstract class HourApi{
  Future<List<HourModel>> getAllHourData(String location);
} 