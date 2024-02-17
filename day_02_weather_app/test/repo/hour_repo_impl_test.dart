import 'package:flutter_application_1/api/hourApi/hour_api.dart';
import 'package:flutter_application_1/api/hourApi/hour_api_impl.dart';
import 'package:flutter_application_1/models/hour_model.dart';
import 'package:flutter_application_1/repo/hour_repo/hour_repo.dart';
import 'package:flutter_application_1/repo/hour_repo/hour_repo_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  HourApi hourApi = HourApiImpl();
  HourRepo hourRepo = HourRepoImpl(hourApi);
  test('hour repo impl should give valid output for valid input', () async {
    List<HourModel> result = await hourRepo.getAllHourData("Biratnagar");
    expect(result[0].feelslike, 11.7);
  });
}
