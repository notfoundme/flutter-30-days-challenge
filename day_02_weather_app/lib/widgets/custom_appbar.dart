
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
      children: [
        //leading
        Padding(
          
          padding: const EdgeInsets.symmetric(horizontal:24.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: btnColor)),
            child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.menu,
                color: btnColor,
              ),
            ),
          ),
        ),
    
        //Center title
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.location_on,color: btnColor,),
            ),
            Text(
              "Biratnagar",
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: textColor),
            ),
          ],
        ),
    
        //trailing User
        Padding(
                       padding: const EdgeInsets.symmetric(horizontal:24.0),
    
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: btnColor)),
            child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.person,
                color: btnColor,
              ),
            ),
          ),
        ),
    
    
      ],
    );
  }
}
