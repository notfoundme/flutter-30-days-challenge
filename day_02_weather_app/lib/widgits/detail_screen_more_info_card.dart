import 'package:day_02_weather_app/constants/colors.dart';
import 'package:day_02_weather_app/constants/images.dart';
import 'package:day_02_weather_app/extensions/responsive_context.dart';
import 'package:flutter/material.dart';

class detailScreenMoreInfo extends StatelessWidget {
  detailScreenMoreInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
          border: Border.all(color: btnColor),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "31 March, Wednesday",
                style: TextStyle(
                    fontSize: context.width * 0.06,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
              Text(
                "18°/16°",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: context.width * 0.04,
                    color: textColor),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //1st element
              singleElement("Real Feel", "18", sunny),
              //2nd element
              singleElement("Humidity", "7km", nightRain),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //3rd element
              singleElement("Wind", "18", wind),
              //4th element
              singleElement("Pressure", "7km", moon),
            ],
          ),
        ],
      ),
    );
  }

  Widget singleElement(String title, String value, String image) {
    return Builder(builder: (context) {
      return Row(
        children: [
          Container(
            color: Colors.transparent,
            height: context.width * 0.15,
            width: context.width * 0.15,
            child: Image.network(
              image,
              fit: BoxFit.cover,
              height: 80,
              width: 60,
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
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: textColor),
                ),
                Text(
                  value,
                  style: const TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.bold,
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
