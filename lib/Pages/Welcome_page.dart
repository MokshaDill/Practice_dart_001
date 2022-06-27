import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_practice01/misc/colors.dart';
import 'package:youtube_practice01/widgets/app_large_text.dart';
import 'package:youtube_practice01/widgets/responsive_button.dart';
import 'package:youtube_practice01/widgets/responsive_button.dart';

import '../misc/colors.dart';
import '../widgets/app_text.dart';
import '../widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
     "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];

  List text1 = [
    "Kilimanjaro ",
    "Cusco & Salkantay ",
    "Everest Base Camp "
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "img/"+images[index]
                  ),
                      fit: BoxFit.cover
                )
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      ///////////////
                      crossAxisAlignment: CrossAxisAlignment.start,    //Alignment
                      ////////////
                      children: [
                        AppLargeText(
                            text: text1[index],

                        ),

                        AppText(
                            text: "Hiking Tours",
                            size: 20,
                        ),

                        SizedBox(height: 30),

                        Container(
                          //color: Colors.blue,
                          width: 250,
                          height: 150,
                          child: AppText(
                            text: "Take a deep breath and escape to a trail where birds serenade, fresh air rejuvenates, and blue skies mesmerise.",
                            color: AppColors.textColor2,
                            size: 16,

                           ),
                        ),

                        SizedBox(height: 30,),

                       // (just a prank......)
                        AppLargeText(text: "reffrfr"),

                        resbutton(width: 120,)
                        AppColors(),

                      ],

                    ),
                    Column(
                      children: List.generate((3), (indexDots){
                        return Container(
                          margin: EdgeInsets.only(bottom:6),
                          width: 8,
                          height: index==indexDots?25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.mainColor,
                          ),
                        );


                      }
                      ),
                    )
                  ],
                ),
              ),
            );

      }),
    );
  }
}
