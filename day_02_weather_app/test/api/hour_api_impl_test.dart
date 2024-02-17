import 'package:flutter_application_1/api/hourApi/hour_api.dart';
import 'package:flutter_application_1/api/hourApi/hour_api_impl.dart';
import 'package:flutter_application_1/models/hour_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Hour API Test",
    () {
      HourApi hourApi = HourApiImpl();
      test(
        'hour api impl  should give Valid response on valid Input',
        () async {
          List<HourModel> result = await hourApi.getAllHourData("Biratnagar");
          expect(result.elementAt(0).temp, 11.7);
        },
      );
    },
  );
}
