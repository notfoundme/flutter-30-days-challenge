
import 'package:flutter_application_1/models/hour_model.dart';

abstract class HourApi{
  Future<List<HourModel>> getAllHourData(String location);
} 