import 'package:flutter/material.dart';

import '../../../../core/constant /const_text_style.dart';

class NavSettingsScreen extends StatefulWidget {
  const NavSettingsScreen({super.key});

  @override
  State<NavSettingsScreen> createState() => _NavSettingsScreenState();
}

class _NavSettingsScreenState extends State<NavSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Setting Screen ",style: mediumStyle,)
          ],
        ),
      ),
    );
  }
}
