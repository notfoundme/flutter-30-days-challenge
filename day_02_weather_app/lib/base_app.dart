import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/weatherApi/weather_api.dart';
import 'package:flutter_application_1/api/weatherApi/weather_api_impl.dart';
import 'package:flutter_application_1/screens/home_screen/home_screen.dart';
import 'package:flutter_application_1/screens/view_models/day_month_vm.dart';
import 'package:flutter_application_1/screens/view_models/home_view_model.dart';
import 'package:flutter_application_1/screens/view_models/hourly_card_view_model.dart';
import 'package:provider/provider.dart';

class BaseApp extends StatelessWidget {
  const BaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherApi weatherApi = WeatherApiImpl();
    weatherApi.getTodayWeather("Biratnagar");
    
    return ChangeNotifierProvider(
      create: (context) => DayMonthViewModel(),
      child: ChangeNotifierProvider(
        create: (context) => HourlyCardViewModel(),
        child: ChangeNotifierProvider(
          create: (context) => HomeViewModel(),
          child: MaterialApp(
            home: HomeScreen(),
          ),
        ),
      ),
    );
  }
}
