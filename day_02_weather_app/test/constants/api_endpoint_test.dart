import 'package:day_02_weather_app/constants/api_endpoint.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'api endpoint must be valid when valid loaction is provided',
    () async {
      ApiEndPoint apiEndPoint = ApiEndPoint();
      String result = apiEndPoint.getApiUrl("Biratnagar");

      expect(
        result,
        "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/Biratnagar?unitGroup=metric&key=7JWQMV9WC5JJBUQF22L83ERCB&contentType=json",
      );
    },
  );
}
