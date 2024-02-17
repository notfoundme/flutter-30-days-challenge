import 'package:flutter_application_1/models/day_data_model.dart';
import 'package:flutter_application_1/repo/day_repo/day_repo.dart';
import 'package:flutter_application_1/repo/day_repo/day_repo_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  DayRepo dayRepo = DayRepoImpl();
  test('day repo impl should give valid output for valid input ', () async {
    List<DayDataModel> result = await dayRepo.getAllDayData();
    expect(result[0].feelslike, 15.5);
  });
}
