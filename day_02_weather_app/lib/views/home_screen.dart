import 'package:day_02_weather_app/constants/colors.dart';
import 'package:day_02_weather_app/constants/images.dart';
import 'package:day_02_weather_app/extensions/responsive_context.dart';
import 'package:day_02_weather_app/widgits/custom_appbar.dart';
import 'package:day_02_weather_app/widgits/hourly_info_card.dart';
import 'package:day_02_weather_app/widgits/main_info.dart';
import 'package:day_02_weather_app/widgits/more_info.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      // ignore: unnecessary_const
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
              height: context.height * 0.4,
              width: context.width * 0.8,
              child: Image.network(
                nightStatRain,
                fit: BoxFit.cover,
                height: 100,
                width: 80,
              ),
            ),
        
            const main_info(),
            moreInfo(),
            Container(
              height: context.height*0.2,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount:8 ,
                itemBuilder: (context,index) {
                  return HourlyInfoCard(index: index,);
                }
              ),
            ),
          const SizedBox(height: 20,)






      
          ],
        ),
      ),
    );
  }
}




        //      Container(
        //     child: CarouselSlider(
        //   options: CarouselOptions(
        //     //gives the height of the highlighted image
        //     aspectRatio: 1.5,
        //     //gives width to the highlighted image
        //     viewportFraction: 0.15,
        //     enlargeCenterPage: true,
        //     enableInfiniteScroll: true,
        //     //CenterPageEnlargeStrategy is used to reduce the space between the cards
        //     enlargeStrategy: CenterPageEnlargeStrategy.height,
        //   ),
        //   //harek categoryModel lai tyo carousel card ma pass gardeko
        //   items:[
        //     HeroCarouselCard(),
        //     HeroCarouselCard(),
        //     HeroCarouselCard(),
        //     HeroCarouselCard(),
        //     HeroCarouselCard(),
        //     HeroCarouselCard(),
        //     HeroCarouselCard(),
        //   ]
        // )),

