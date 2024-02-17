import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/day_data_model.dart';
import 'package:flutter_application_1/repo/day_repo/day_repo.dart';
import 'package:flutter_application_1/repo/day_repo/day_repo_impl.dart';

class DayMonthViewModel with ChangeNotifier {
  final DayRepo _repository = DayRepoImpl();

  List<DayDataModel> _dayData = [];
  List<DayDataModel> get dayData => _dayData;

  Future<void> fetchDayData() async {
    List<DayDataModel> temp = await _repository.getAllDayData();
    _dayData.clear();
    _dayData.addAll(temp);
    notifyListeners();
  }
}
