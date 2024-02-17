
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/images.dart';
import 'package:flutter_application_1/constants/responsive_context.dart';
import 'package:flutter_application_1/models/day_data_model.dart';

class detailScreenMoreInfo extends StatelessWidget {
    final DayDataModel dayDataModel;
  const detailScreenMoreInfo({
    super.key, required this.dayDataModel,
  });

  @override
  Widget build(BuildContext context) {


    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
          border: Border.all(color: btnColor),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                dayDataModel.datetime,
                style: TextStyle(
                    fontSize: context.width * 0.06,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
              Text(
                dayDataModel.feelslike.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: context.width * 0.04,
                    color: textColor),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //1st element
              singleElement("Real Feel", dayDataModel.feelslike.toString(), sunny),
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
            padding: const EdgeInsets.all(8.0),
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
