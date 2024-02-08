import 'package:day_02_weather_app/constants/colors.dart';
import 'package:day_02_weather_app/constants/images.dart';
import 'package:day_02_weather_app/extensions/responsive_context.dart';
import 'package:day_02_weather_app/views/home/home_view_model.dart';
import 'package:day_02_weather_app/views/weather_detail/weather_detail_screen.dart';
import 'package:day_02_weather_app/widgets/custom_appbar.dart';
import 'package:day_02_weather_app/widgets/info_card.dart';
import 'package:day_02_weather_app/widgets/main_info.dart';
import 'package:day_02_weather_app/widgets/more_info.dart';
import 'package:flutter/material.dart';
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
              onTap: (){
                context.navigateTo(WeatherDetailScreen(),);
              },
              child: main_info(),),
            moreInfo(),
            Container(
              height: context.height*0.2,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount:8 ,
                itemBuilder: (context,index) {
                  return InfoCard.InfoCard(index: index, title: '22.00', value: '16', image: sunny,);
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

