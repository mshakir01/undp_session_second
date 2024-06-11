import 'package:flutter/material.dart';

class SessionThree extends StatefulWidget {
  const SessionThree({super.key});

  @override
  State<SessionThree> createState() => _SessionThreeState();
}

class _SessionThreeState extends State<SessionThree> {
  /// List  data
  // List listData=[
  //   "What is Flutter ?",
  //   "What is Widget ?",
  //   "What is Component ?",
  //   "What is Firebase ?",
  // ];

  /// List of Array
  List<Map<String, dynamic>> multipleData = [
    {
      "Question": "What is Flutter ?",
      "Answer":
          "Flutter transforms the entire app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.",
      "Image": "assets/image_three.png"
    },
    {
      "Question": "What is Component ?",
      "Answer": " A set of Code which we use again and again",
      "Image": "assets/image_one.png"
    },
    {
      "Question": "What is Firebase ?",
      "Answer": "Firebase is Cloud side Data where we store a data",
      "Image": "assets/image_two.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        /// use for single data
        // itemCount: listData.length,
        /// Multiple data
        itemCount: multipleData.length,
        reverse: false,
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return

              /// Multiple data
              Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.red,
              child: ListTile(
                onTap: () {},
                leading: Image.asset(
                  width: 100,
                  height: 100,
                  multipleData[index]["Image"],
                ),
                title: Text(
                  multipleData[index]['Question'],
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  multipleData[index]['Answer'],
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          );

          /// use for single data
          //   Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     color: Colors.red,
          //     child:   ListTile(
          //       onTap: (){},
          //       leading: Image.asset("assets/flutter logo.png",fit: BoxFit.cover,),
          //       title: Text(listData[index],style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),),
          //       subtitle: const Text("Flutter transforms the entire app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.normal),),
          //       trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 40,),
          //     ),
          //   ),
          // );
        },
      ),
    );
  }
}
