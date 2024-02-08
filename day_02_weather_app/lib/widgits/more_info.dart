import 'package:day_02_weather_app/constants/colors.dart';
import 'package:day_02_weather_app/constants/images.dart';
import 'package:day_02_weather_app/extensions/responsive_context.dart';
import 'package:flutter/material.dart';

class moreInfo extends StatelessWidget {


  moreInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        //1st element
            singleElement("Real Feel", "18", sunny),
        //2nd element
            singleElement("Humidity", "7km", nightRain),
          ],
        ), Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        //3rd element
            singleElement("Real Feel", "18", rainbow),
        //4th element
            singleElement("Humidity", "7km", moon),
          ],
        ),
      ],
    );
  }

  Widget singleElement(String title, String value, String image) {
    return Builder(builder: (context) {
      return Row(
        children: [
          Container(
            color: Colors.transparent,
            height: context.width * 0.2,
            width: context.width * 0.2,
            child: Image.network(
              image,
              fit: BoxFit.cover,
              height: 100,
              width: 80,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
                Text(
                  value,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
              ],
            ),
          )
        ],
      );
    });
  }
}
