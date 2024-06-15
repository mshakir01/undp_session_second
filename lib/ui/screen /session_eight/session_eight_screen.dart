import 'package:flutter/material.dart';
import 'package:undp_session_two/core/constant%20/const_text_style.dart';
import 'package:undp_session_two/ui/screen%20/session_eight/bottom_nav_screens/nav_add_screen.dart';
import 'package:undp_session_two/ui/screen%20/session_eight/bottom_nav_screens/nav_chat_screen.dart';
import 'package:undp_session_two/ui/screen%20/session_eight/bottom_nav_screens/nav_home_screen.dart';
import 'package:undp_session_two/ui/screen%20/session_eight/bottom_nav_screens/nav_search_screen.dart';
import 'package:undp_session_two/ui/screen%20/session_eight/bottom_nav_screens/nav_settings_screen.dart';

class SessionEightScreen extends StatefulWidget {
  const SessionEightScreen({super.key});

  @override
  State<SessionEightScreen> createState() => _SessionEightScreenState();
}

class _SessionEightScreenState extends State<SessionEightScreen> {

  final List<Widget> multipleWidget=[


    /// List of Screens
    const NavHomeScreen(),
    const NavChatScreen(),
    const NavAddScreen(),
    const NavSearchScreen(),
    // const NavSettingsScreen(),

    /// List of Container
    // Container(
    //   width: double.infinity,
    //   height: double.infinity,
    //   alignment: Alignment.center,
    //   color: Colors.green,
    //   child: Text("Home Screen 1",style: mediumStyle,),
    // ),
    // Container(
    //   width: double.infinity,
    //   height: double.infinity,
    //   alignment: Alignment.center,
    //   color: Colors.red,
    //   child: Text("Home Screen 2",style: mediumStyle,),
    // ),
    // Container(
    //   width: double.infinity,
    //   height: double.infinity,
    //   alignment: Alignment.center,
    //   color: Colors.blue,
    //   child: Text("Home Screen 3",style: mediumStyle.copyWith(color: Colors.pink),),
    // ),
    // Container(
    //   width: double.infinity,
    //   height: double.infinity,
    //   alignment: Alignment.center,
    //   color: Colors.yellow,
    //   child: Text("Home Screen 4",style: mediumStyle.copyWith(color: Colors.pink),),
    // ),
    // Container(
    //   width: double.infinity,
    //   height: double.infinity,
    //   alignment: Alignment.center,
    //   color: Colors.pink,
    //   child: Text("Home Screen 5",style: mediumStyle ,),
    // ),

  ];
  int currentIndex=0;

  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 16,
        selectedLabelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold
        ),
        selectedItemColor: Colors.white,
        unselectedFontSize: 16,

        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,

        backgroundColor: Colors.black,
        onTap: onTap,
        currentIndex: currentIndex,
        items: const [
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.chat,size: 32,),
            ),
          label: "Chats"

        ),
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.update),
            ),
          label: "Updates"
        ),
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.person_2),
            ),
          label: "Communities"
        ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.call),
            ),
          label: "Call"
        ),
      ],

      ),
      body: multipleWidget[currentIndex],

    );
  }
}
