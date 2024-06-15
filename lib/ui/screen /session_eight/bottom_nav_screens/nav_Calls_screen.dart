import 'package:flutter/material.dart';

import '../../../../core/constant /const_text_style.dart';

class NavCallsScreen extends StatefulWidget {
  const NavCallsScreen({super.key});

  @override
  State<NavCallsScreen> createState() => _NavCallsScreenState();
}

class _NavCallsScreenState extends State<NavCallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Search Screen ",style: mediumStyle,)
          ],
        ),
      ),
    );
  }
}
