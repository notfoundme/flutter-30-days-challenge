import 'package:flutter_application_1/api/dayApi/day_api.dart';
import 'package:flutter_application_1/api/dayApi/day_api_impl.dart';
import 'package:flutter_application_1/models/day_data_model.dart';
import 'package:flutter_application_1/repo/day_repo/day_repo.dart';

class DayRepoImpl implements DayRepo {
  DayApi dayApi = DayApiImpl();
  @override
  Future<List<DayDataModel>> getAllDayData() async {
    return await dayApi.getAllDayData();
  }
  
}
