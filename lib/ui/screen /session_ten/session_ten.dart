import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:undp_session_two/core/constant%20/const_text_style.dart';
import 'package:undp_session_two/ui/screen%20/session_ten/session_ten_sec_screen.dart';

import '../../components/custom_button.dart';

class SessionTen extends StatefulWidget {
  const SessionTen({super.key});

  @override
  State<SessionTen> createState() => _SessionTenState();
}

class _SessionTenState extends State<SessionTen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            /// Rich Text
            RichText(
              text: TextSpan(style: mediumStyle, children: [
                TextSpan(
                  text: "I'm ",
                ),
                TextSpan(
                    text: " Mobile App ",
                    style: mediumStyle.copyWith(color: Colors.red)),
                TextSpan(text: "Developer "),
              ]),
            ),

            /// How To get library from Pub dev and how to use it
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),

            /// How to Create empty Spacing in two widgets
            SizedBox(height: 24,),

            /// reuse able Components and InkWell With Single Tap
            CustomButton(title: 'LogIn', onTap: () {  },),
            CustomButton(title: 'SignUp', onTap: () {  },),
            CustomButton(title: 'SignUp', onTap: () {  },),

            SizedBox(height: 16,),


            /// Inkwell With double Tap
            InkWell(
              onDoubleTap: (){
                print("on Double Tap");
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.yellow
                ),
                child: Text("Custom Button",style: mediumStyle,),
              ),
            ),
            SizedBox(height: 16,),

            /// InkWell with long press
            InkWell(
              onLongPress: (){
                print("on long Tap");
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.yellow
                ),
                child: Text("Custom Button",style: mediumStyle,),
              ),
            ),

            SizedBox(height: 16,),

            /// Gesture Detector
            GestureDetector(
              onTap: (){
                log("on Gesture Detector Tap");
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.yellow
                ),
                child: Text("Gesture Detector Button",style: mediumStyle,),
              ),
            ),


            CustomButton(title: "Navigator", onTap: () {

              Navigator.push(context, MaterialPageRoute(builder: (context)=>  SessionTenSecScreen(title: 'Session Ten Session Screen ',)));
            },)
          ],
        ),
      ),
    );
  }
}
