import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/images.dart';
import 'package:flutter_application_1/constants/responsive_context.dart';
import 'package:flutter_application_1/screens/view_models/home_view_model.dart';
import 'package:flutter_application_1/screens/view_models/hourly_card_view_model.dart';
import 'package:flutter_application_1/screens/weather_detail/weather_detail_screen.dart';
import 'package:flutter_application_1/widgets/custom_appbar.dart';
import 'package:flutter_application_1/widgets/hour_info_card.dart';
import 'package:flutter_application_1/widgets/main_info.dart';
import 'package:flutter_application_1/widgets/more_info.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //viewModel ko instance banako
    final vm = Provider.of<HomeViewModel>(context);
    vm.fetchUIData();
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const customAppBar(),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.transparent,
              height: context.height * 0.35,
              width: context.width * 0.8,
              child: Image.network(
                nightStatRain,
                fit: BoxFit.cover,
                height: 100,
                width: 80,
              ),
            ),
            GestureDetector(
              onTap: () {
                context.navigateTo(
                  WeatherDetailScreen(),
                );
              },
              child: main_info(),
            ),
            moreInfo(),
            Container(
              height: context.height * 0.2,
              child: listOfHourItems(context),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget listOfHourItems(BuildContext context) {
    final vm = Provider.of<HourlyCardViewModel>(context);
    vm.fetchHourData();
    return Consumer<HourlyCardViewModel>(builder: (context, vm, _) {
      return ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: vm.hourdatas.length,
          itemBuilder: (context, index) {
            String hours = vm.hourdatas.elementAt(index).datetime;
            hours = hours.substring(0, 5);
            return HourInfoCard(
              index: index,
              title: hours,
              value: vm.hourdatas[index].temp.toString(),
              image: sunny,
            );
          });
    });
  }
}
