
import 'package:flutter_application_1/models/day_data_model.dart';

abstract class DayApi{
  Future<List<DayDataModel>> getAllDayData();
} 