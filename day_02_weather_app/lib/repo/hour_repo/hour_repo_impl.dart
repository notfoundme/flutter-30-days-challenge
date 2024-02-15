import 'package:day_02_weather_app/api/hourApi/hourApi.dart';
import 'package:day_02_weather_app/api/hourApi/hour_api_impl.dart';
import 'package:day_02_weather_app/model/hour_model.dart';
import 'package:day_02_weather_app/repo/hour_repo/hour_repo.dart';

class HourRepoImpl implements HourRepo{
  HourApi hourApi = HourApiImpl();
  @override
  Future<List<HourModel>> getAllHourData(String location) {
  return hourApi.getAllHourData("location");
  }

}