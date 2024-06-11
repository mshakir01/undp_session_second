import 'package:flutter/material.dart';
import 'package:undp_session_two/sessionThree.dart';
import 'package:undp_session_two/session_four.dart';
import 'package:undp_session_two/session_one.dart';
import 'package:undp_session_two/session_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SessionFour(),
    );
  }
}