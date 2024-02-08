import 'package:day_02_weather_app/constants/colors.dart';
import 'package:day_02_weather_app/constants/images.dart';
import 'package:day_02_weather_app/extensions/responsive_context.dart';
import 'package:day_02_weather_app/widgits/custom_appbar.dart';
import 'package:day_02_weather_app/widgits/detail_screen_appbar.dart';
import 'package:day_02_weather_app/widgits/detail_screen_more_info_card.dart';
import 'package:day_02_weather_app/widgits/info_card.dart';
import 'package:day_02_weather_app/widgits/more_info.dart';
import 'package:flutter/material.dart';

class WeatherDetailScreen extends StatelessWidget {
  const WeatherDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      // ignore: unnecessary_const
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            DetailScreenAppBar(),
            SizedBox(
              height: 20,
            ),
            dayMonthCard(context),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: context.height * 0.2,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return InfoCard.InfoCard(
                      index: index,
                      title: 'Wed',
                      value: '16°',
                      image: nightStatRain,
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            detailScreenMoreInfo(),
            SizedBox(
              height: 20,
            ),
            detailScreenMoreInfo(),
            SizedBox(
              height: 20,
            ),
            detailScreenMoreInfo(),
            SizedBox(
              height: 20,
            ),
            detailScreenMoreInfo(),
            SizedBox(
              height: 20,
            ),
            detailScreenMoreInfo(),
          ],
        ),
      ),
    );
  }

  Container dayMonthCard(BuildContext context) {
    return Container(
      width: context.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: btnColor)),
      child: Row(
        children: [
          Container(
            width: context.width * 0.45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: btnColor),
            child: Text(
              "Day",
              style: TextStyle(
                  fontSize: context.width * 0.09,
                  fontWeight: FontWeight.w600,
                  color: textColor),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: context.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "Month",
              style: TextStyle(
                  fontSize: context.width * 0.09,
                  fontWeight: FontWeight.w600,
                  color: textColor),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
