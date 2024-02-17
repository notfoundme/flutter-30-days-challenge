import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/hourApi/hour_api_impl.dart';
import 'package:flutter_application_1/models/hour_model.dart';
import 'package:flutter_application_1/repo/hour_repo/hour_repo.dart';
import 'package:flutter_application_1/repo/hour_repo/hour_repo_impl.dart';

class HourlyCardViewModel with ChangeNotifier {
  final HourRepo _repository = HourRepoImpl(HourApiImpl());

  List<HourModel> _hourdatas = [];
  List<HourModel> get hourdatas => _hourdatas;

  Future<void> fetchHourData() async {
    List<HourModel> temp = await _repository.getAllHourData("Biratnagar");
    _hourdatas.clear();
    _hourdatas.addAll(temp);
    notifyListeners();
  }
}
