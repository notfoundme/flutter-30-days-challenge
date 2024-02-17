import 'package:flutter_application_1/api/hourApi/hour_api.dart';
import 'package:flutter_application_1/models/hour_model.dart';
import 'package:flutter_application_1/repo/hour_repo/hour_repo.dart';

class HourRepoImpl implements HourRepo {
  HourApi hourApi;

  HourRepoImpl(this.hourApi);
  @override
  Future<List<HourModel>> getAllHourData(String location) async {
    return  await  hourApi.getAllHourData("location");
  }
}
