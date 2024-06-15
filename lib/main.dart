import 'package:flutter/material.dart';
import 'package:undp_session_two/ui/screen%20/session_eight/bottom_from_pubdev/bottom_from_pubdev.dart';
import 'package:undp_session_two/ui/screen%20/session_eight/session_eight_screen.dart';
import 'package:undp_session_two/ui/screen%20/session_seven/session_seven_screen.dart';
import 'package:undp_session_two/ui/screen%20/session_six.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomFromPubDev(),
    );
  }
}
