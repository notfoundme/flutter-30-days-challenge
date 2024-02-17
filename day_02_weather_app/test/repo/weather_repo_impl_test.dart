
import 'package:flutter_application_1/api/weatherApi/weather_api_impl.dart';
import 'package:flutter_application_1/models/weather_model.dart';
import 'package:flutter_application_1/repo/weather_repo/weather_repo.dart';
import 'package:flutter_application_1/repo/weather_repo/weather_repo_impl.dart';
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
