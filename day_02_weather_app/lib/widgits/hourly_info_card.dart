import 'package:flutter/material.dart';
import 'package:day_02_weather_app/extensions/responsive_context.dart';
import 'package:day_02_weather_app/constants/colors.dart';
import 'package:day_02_weather_app/constants/images.dart';

//This is a single CarouselCard that takes the category Model as input
class HourlyInfoCard extends StatelessWidget {
  final int index;
  const HourlyInfoCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 8),
      child: Container(
        
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
        color: index == 0?btnColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: btnColor)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "22:00",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textColor),
            ),
            Container(
              color: Colors.transparent,
              height: context.width * 0.18,
              width: context.width * 0.15,
              child: Image.network(
                sunny,
                fit: BoxFit.cover,
                height: 80,
                width: 60,
              ),
            ),
            const Text(
              "16°",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: textColor),
            ),
      
          ],
        ),
        
      ),
    );
  }
}
