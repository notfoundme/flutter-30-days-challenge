import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

extension ResponsiveContext on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

navigateTo(Widget screen){
  Navigator.push(this, PageTransition(

    type: PageTransitionType.scale,
    duration:  const Duration(seconds: 2),
    alignment: Alignment.bottomCenter,
    child: screen
  ));
}





}