import 'package:flutter/material.dart';

import '../../core/constant /const_color.dart';
import '../../core/constant /const_text_style.dart';

class CustomContainer extends StatelessWidget {
  String title;
  Color bgColor;
    CustomContainer({super.key,required this.title,required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        decoration:   BoxDecoration(
          color:bgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        width: 200,
        height: 100,
        child:Text(title,style: mediumStyle,),
      ),
    );
  }
}
