import 'package:flutter/cupertino.dart';
import 'package:youtube_practice01/misc/colors.dart';

class resbutton extends StatelessWidget {
  bool? isResponssive;
  double? width;


  resbutton({Key? key, this.width, this.isResponssive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image.asset("img/button-one.png"),
        ],
      ),
    );
  }
}
