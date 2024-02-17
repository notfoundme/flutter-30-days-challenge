
import 'package:flutter_application_1/api/weatherApi/weather_api.dart';
import 'package:flutter_application_1/api/weatherApi/weather_api_impl.dart';
import 'package:flutter_application_1/models/weather_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Weather API Test",
    () {
      WeatherApi weatherApi = WeatherApiImpl();
      test(
        'weather api impl  should give Valid response on valid Input',
        () async {
          WeatherModel result = await weatherApi.getTodayWeather("Biratnagar");
          expect(result.source, "fcst");
        },
      );
    },
  );
}