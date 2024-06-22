import 'package:flutter/material.dart';

import '../../core/constant /const_text_style.dart';

class CustomButton extends StatelessWidget {
  String title;
  Function() onTap;
  CustomButton({super.key, required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: InkWell(
        onTap:onTap,
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(8)),
          child: Text(
            title,
            style: mediumStyle,
          ),
        ),
      ),
    );
  }
}
