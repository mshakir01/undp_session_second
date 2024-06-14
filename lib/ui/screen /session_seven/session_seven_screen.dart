import 'package:flutter/material.dart';

class SessionSevenScreen extends StatefulWidget {
  const SessionSevenScreen({super.key});

  @override
  State<SessionSevenScreen> createState() => _SessionSevenScreenState();
}

class _SessionSevenScreenState extends State<SessionSevenScreen> {
  double oldValue=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              strokeWidth: 20,
              backgroundColor: Colors.red,
              color: Colors.blue,
            ),
            SizedBox(
              height: 20,
            ),
            LinearProgressIndicator(
              minHeight: 20,
              color: Colors.blue,
              backgroundColor: Colors.red,
            ),

            Slider(
              label: "$oldValue",
              thumbColor: Colors.yellow,
              inactiveColor: Colors.black,
              activeColor: Colors.green,
              divisions: 20,

              min: 0,
                max: 100,
                value: oldValue, onChanged: (newValue){
                setState((){
                  oldValue=newValue;
                });

            }),

            Wrap(
              spacing: 20,
              runSpacing: 22,
              children: [
                Container(width: 150,color: Colors.red,height: 100,),
                Container(width: 200,color: Colors.yellow,height: 100,),
                Container(width: 100,color: Colors.orange,height: 100,),
                Container(width: 100,color: Colors.green,height: 100,),
                Container(width: 100,color: Colors.pinkAccent,height: 100,),
                Container(width: 100,color: Colors.green,height: 100,),
              ],
            ),

            const SizedBox(height: 20,),
            Row(

              children: [
                Container(
                  color: Colors.pinkAccent,
                  width: 100,
                  height: 100,
                ),

                Container(
                  color: Colors.orange,
                  width: 100,
                  height: 100,
                ),
                const Spacer(),
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
