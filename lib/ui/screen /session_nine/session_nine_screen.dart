import 'package:flutter/material.dart';
import 'package:undp_session_two/core/constant%20/const_text_style.dart';

class SessionNineScreen extends StatefulWidget {
  const SessionNineScreen({super.key});

  @override
  State<SessionNineScreen> createState() => _SessionNineScreenState();
}

class _SessionNineScreenState extends State<SessionNineScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        
          appBar: AppBar(
            bottom: TabBar(
                labelColor: Colors.green,
                labelStyle: mediumStyle,
                dividerColor: Colors.red,
                dividerHeight: 2,
                unselectedLabelColor: Colors.pink,
                tabs: const [
                  Tab(
                    text: "Home",
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: "Chat",
                    icon: Icon(Icons.chat),
                  ),
                  Tab(
                    text: "Setting",
                    icon: Icon(Icons.settings),
                  )
                ]),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.green,
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          alignment: Alignment.center,
                          color: Colors.orange,
                          child: Text(
                            "Index ${index + 1}",
                            style: mediumStyle.copyWith(fontSize: 32),
                          )),
                    );
                  },
                ),
              ),
              Container(
                  color: Colors.yellow,
                  child: Center(
                      child: Text(
                    "Chat ",
                    style: mediumStyle.copyWith(fontSize: 44),
                  ))),
              Container(
                  color: Colors.orange,
                  child: Center(
                      child: Text(
                    "Setting ",
                    style: mediumStyle.copyWith(fontSize: 44),
                  ))),
            ],
          )),
    );
  }
}
