import 'package:day_02_weather_app/api/weather_api_impl.dart';
import 'package:day_02_weather_app/model/weather_model.dart';
import 'package:day_02_weather_app/repo/weather_repo.dart';
import 'package:day_02_weather_app/repo/weather_repo_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Weather API Test",
    () {
      WeatherRepo weatherRepo = WeatherRepoImpl(WeatherApiImpl());
      test(
        'weather repo impl  should give Valid response on valid Input',
        () async {
          WeatherModel result = await weatherRepo.getTodayWeather("Biratnagar");
          expect(result.source, "fcst");
        },
      );
    },
  );
}
