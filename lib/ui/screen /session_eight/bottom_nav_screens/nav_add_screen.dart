import 'package:flutter/material.dart';
import 'package:undp_session_two/core/constant%20/const_text_style.dart';
class NavAddScreen extends StatefulWidget {
  const NavAddScreen({super.key});

  @override
  State<NavAddScreen> createState() => _NavAddScreenState();
}

class _NavAddScreenState extends State<NavAddScreen> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Add Screen ",style: mediumStyle,)
          ],
        ),
      ),
    );
  }
}
