import 'package:day_02_weather_app/api/weather_api.dart';
import 'package:day_02_weather_app/api/weather_api_impl.dart';
import 'package:day_02_weather_app/model/weather_model.dart';
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
