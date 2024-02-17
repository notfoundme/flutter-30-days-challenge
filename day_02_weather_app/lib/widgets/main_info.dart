
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/responsive_context.dart';
import 'package:flutter_application_1/screens/view_models/home_view_model.dart';
import 'package:provider/provider.dart';

class main_info extends StatelessWidget {
  const main_info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //provider use garna Consumer le wrap gareko
    // Consumer consumes viewModel and displays on ui.
    return Consumer<HomeViewModel>(
      builder: (context,vm,_) {
        return Column(
          children: [
            Text(
              vm.currentTemperature,
              style: TextStyle(
                  fontSize: context.width * 0.15,
                  fontWeight: FontWeight.bold,
                  color: textColor),
            ),
            
            Text(
              vm.currentConditions,
              style: TextStyle(
                  fontSize: context.width * 0.10,
                  fontWeight: FontWeight.w900,
                  color: textColor),
            ),
            
            
            Text(
              vm.todaysDate,
              style: const TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: textColor),
            ),
            
            SizedBox(
              height: 30,
            ),
          ],
        );
      }
    );
  }
}