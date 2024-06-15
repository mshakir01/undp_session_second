import 'package:flutter/material.dart';
import 'package:undp_session_two/core/constant%20/const_text_style.dart';

class NavStatusScreen extends StatefulWidget {
  const NavStatusScreen({super.key});

  @override
  State<NavStatusScreen> createState() => _NavStatusScreenState();
}

class _NavStatusScreenState extends State<NavStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Chat Screen",style: mediumStyle,)
          ],
        ),
      ),
    );
  }
}
