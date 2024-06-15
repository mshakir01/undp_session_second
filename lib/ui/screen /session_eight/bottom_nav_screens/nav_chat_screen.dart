import 'package:flutter/material.dart';
import 'package:undp_session_two/core/constant%20/const_text_style.dart';

class NavChatScreen extends StatefulWidget {
  const NavChatScreen({super.key});

  @override
  State<NavChatScreen> createState() => _NavChatScreenState();
}

class _NavChatScreenState extends State<NavChatScreen> {
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
