import 'package:flutter_application_1/constants/api_endpoint.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'api endpoint must be valid when valid loaction is provided',
    () async {
      ApiEndPoint apiEndPoint = ApiEndPoint();
      String result = apiEndPoint.getApiUrl("Biratnagar");

      expect(
        result,
        "https://raw.githubusercontent.com/imp-sike/mockfake/main/weather.json",
      );
    },
  );
}
