import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SessionFive extends StatefulWidget {
  const SessionFive({super.key});

  @override
  State<SessionFive> createState() => _SessionFiveState();
}

class _SessionFiveState extends State<SessionFive> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    final snackBar=SnackBar(content: Text("This is a snack bar"),
                      duration: Duration(seconds: 3),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text("Snack Bar",style: TextStyle(color: Colors.white),)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    log("Bottom Sheet");
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            color: Colors.blue,
                            height: 300,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Bottom Sheet ",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 70,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  "assets/facebook.png",
                                                ))),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 70,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/google.png"))),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 70,
                                        decoration: const BoxDecoration(
                                            color: Colors.yellow,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/twitter.png"))),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 70,
                                        decoration: const BoxDecoration(
                                            color: Colors.red,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/flutter logo.png"))),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        });
                  },
                  child: const Text(
                    "Bottom Sheet",
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: (){
                showDialog(context: context, builder: (context){
                  return   AlertDialog(
                    title: Text("Alert Dialog"),
                    actions: [
                      ElevatedButton(onPressed: (){
                        log("Alert Dialog");
                        Navigator.of(context).pop();
                      }, child: Text("Close")),ElevatedButton(onPressed: (){
                        log("Alert Dialog");
                        Navigator.of(context).pop();
                      }, child: Text("Access"))
                    ],
                  );
                });
              }, child: Text("DiaLog Box",style: TextStyle(color: Colors.white),)),
              Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(200),
                        bottomRight: Radius.circular(200))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
