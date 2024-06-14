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
              children: [
                Container(width: 100,color: Colors.red,height: 100,),
                Container(width: 100,color: Colors.yellow,height: 100,),
                Container(width: 100,color: Colors.orange,height: 100,),
                const SizedBox(height: 20,),
                Container(width: 100,color: Colors.red,height: 100,),
                Container(width: 100,color: Colors.yellow,height: 100,),
                Container(width: 100,color: Colors.orange,height: 100,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
