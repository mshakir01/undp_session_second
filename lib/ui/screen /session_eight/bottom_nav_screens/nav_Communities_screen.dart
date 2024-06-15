import 'package:flutter/material.dart';
import 'package:undp_session_two/core/constant%20/const_text_style.dart';
class NavCommunitiesScreen extends StatefulWidget {
  const NavCommunitiesScreen({super.key});

  @override
  State<NavCommunitiesScreen> createState() => _NavCommunitiesScreenState();
}

class _NavCommunitiesScreenState extends State<NavCommunitiesScreen> {
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
