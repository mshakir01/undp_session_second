import 'package:flutter/material.dart';
import 'package:undp_session_two/core/constant%20/const_text_style.dart';

import '../../../../core/constant /const_color.dart';

class NavHomeScreen extends StatefulWidget {
  const NavHomeScreen({super.key});

  @override
  State<NavHomeScreen> createState() => _NavHomeScreenState();
}

class _NavHomeScreenState extends State<NavHomeScreen> {
  
  List<Map<String,dynamic>> chatData=[
    {
      "image":"",
      "name":"Jalal Bacha",
      "des":"How are you",
      "time":"10:23",
      "active":"2",
      
    },{
      "image":"",
      "name":"Jalal Bacha",
      "des":"How are you",
      "time":"10:23",
      "active":"2",

    },{
      "image":"",
      "name":"Jalal Bacha",
      "des":"How are you",
      "time":"10:23",
      "active":"2",

    },{
      "image":"",
      "name":"Jalal Bacha",
      "des":"How are you",
      "time":"10:23",
      "active":"2",

    },{
      "image":"",
      "name":"Jalal Bacha",
      "des":"How are you",
      "time":"10:23",
      "active":"2",

    },{
      "image":"",
      "name":"Jalal Bacha",
      "des":"How are you",
      "time":"10:23",
      "active":"2",

    }
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text("WhatApp",style: mediumStyle.copyWith(color: whiteColor),),
            const Spacer(),
            const Icon(Icons.camera_alt,color: whiteColor,),
            const SizedBox(width: 16,),
            const Icon(Icons.menu,color: whiteColor,)
            
          ],
        ),
        
      ),

      body: Column(
        children: [
          Container(
            child: TextField(),
          ),
          
          Expanded(
            child: ListView.builder(
              itemCount: chatData.length,
                itemBuilder: (context,index){
            
              return ListTile(
                leading: CircleAvatar(
                  child: Image.asset("assets/image_two.png",),
                ),
                title: Text(chatData[index]['name'],style: mediumStyle.copyWith(color: whiteColor),),
                subtitle: Text(chatData[index]['des'],style:desStyle,),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(chatData[index]['time'],style: desStyle,),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(chatData[index]['active'],style: desStyle.copyWith(color: Colors.black),),
                      ),)
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
