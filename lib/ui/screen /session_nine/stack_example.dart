import 'package:flutter/material.dart';
class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 300,
              width: 300,

            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
            Positioned(
              bottom: 80,
              left: 165,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
