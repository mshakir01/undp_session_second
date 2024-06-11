
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text("UNDP Session"),
      // ),
      body: Container(
          padding: const EdgeInsets.only(left: 16,right: 16),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.red,
                  Colors.pink,
                  Colors.orange
                ]),
            // borderRadius: BorderRadius.circular(200),
            //  border: Border.all(color: Colors.black, width: 20),
          ),
          width: double.infinity,
          height: double.infinity,
          child:   Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SvgPicture.asset("assets/logo.svg",width: 100,),
              Image.network(
                "https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png",width: 100,height: 100,),
              Image.asset("assets/flutter logo.png",width: 150,height: 150,),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "What is Flutter?",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),

              const Text(
                "Flutter transforms the entire app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontStyle: FontStyle.normal),
              ),
            ],
          )),
    );
  }
}
