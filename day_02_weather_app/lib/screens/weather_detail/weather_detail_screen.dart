import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/images.dart';
import 'package:flutter_application_1/constants/responsive_context.dart';
import 'package:flutter_application_1/screens/view_models/day_month_vm.dart';
import 'package:flutter_application_1/widgets/day_info_card.dart';
import 'package:flutter_application_1/widgets/detail_screen_appbar.dart';
import 'package:flutter_application_1/widgets/detail_screen_more_info.dart';
import 'package:provider/provider.dart';

class WeatherDetailScreen extends StatelessWidget {
  const WeatherDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<DayMonthViewModel>(context);
    vm.fetchDayData();

    return Scaffold(
      backgroundColor: bgColor,
      // ignore: unnecessary_const
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const DetailScreenAppBar(),
            const SizedBox(
              height: 20,
            ),
            dayMonthCard(context),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: context.height * 0.2,
              child: dayCardListview(context),
            ),
            Consumer<DayMonthViewModel>(builder: (context, vm2, _) {
              return ListView.builder(
                  //unbounded height problem +
                  // It stops its stopping behaviour
                  physics: NeverScrollableScrollPhysics(),
                  //wrapped in parent's scrolling behaviour.
                  shrinkWrap: true,
                  itemCount: vm2.dayData.length,
                  itemBuilder: (context, index) {
                    //passing single data item to detailScreenMoreInfo card.
                    return detailScreenMoreInfo(
                      dayDataModel: vm2.dayData[index],
                    );
                  });
            })
          ],
        ),
      ),
    );
  }

  Widget dayCardListview(BuildContext context) {
    return Consumer<DayMonthViewModel>(builder: (context, vm, _) {
      return ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: vm.dayData.length,
          itemBuilder: (context, index) {
            return DayInfoCard(
              index: index,
              title: vm.dayData[index].datetime,
              value: vm.dayData[index].temp.toString(),
              image: nightStatRain,
            );
          });
    });
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
