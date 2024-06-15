import 'package:flutter/material.dart';

import '../../../../core/constant /const_text_style.dart';

class NavSearchScreen extends StatefulWidget {
  const NavSearchScreen({super.key});

  @override
  State<NavSearchScreen> createState() => _NavSearchScreenState();
}

class _NavSearchScreenState extends State<NavSearchScreen> {
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
