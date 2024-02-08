import 'package:day_02_weather_app/constants/colors.dart';
import 'package:day_02_weather_app/extensions/responsive_context.dart';
import 'package:flutter/material.dart';

class main_info extends StatelessWidget {
  const main_info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "16°",
          style: TextStyle(
              fontSize: context.width * 0.15,
              fontWeight: FontWeight.bold,
              color: textColor),
        ),
        
        Text(
          "Cloudy",
          style: TextStyle(
              fontSize: context.width * 0.10,
              fontWeight: FontWeight.w900,
              color: textColor),
        ),
        
        
        Text(
          "Wednesday ,31 march",
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: textColor),
        ),
        
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}