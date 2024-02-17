import 'package:flutter_application_1/api/dayApi/day_api.dart';
import 'package:flutter_application_1/api/dayApi/day_api_impl.dart';
import 'package:flutter_application_1/models/day_data_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Day API Test",
    () {
      DayApi dayApi = DayApiImpl();
      test(
        'day api impl  should give Valid response on valid Input',
        () async {
          List<DayDataModel> result = await dayApi.getAllDayData();
          expect(result.elementAt(0).temp, 15.5);
        },
      );
    },
  );
}
