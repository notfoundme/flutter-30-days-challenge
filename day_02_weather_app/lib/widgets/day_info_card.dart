import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/responsive_context.dart';

class DayInfoCard extends StatelessWidget {
  final String title;
  final String value;
  final String image;

  final int index;
  DayInfoCard(
      {super.key,
      required this.index,
      required this.title,
      required this.value,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: index == 0 ? btnColor : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: btnColor)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: textColor),
            ),
            Container(
              color: Colors.transparent,
              height: context.width * 0.18,
              width: context.width * 0.15,
              child: Image.network(
                image,
                fit: BoxFit.cover,
                height: 80,
                width: 60,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
