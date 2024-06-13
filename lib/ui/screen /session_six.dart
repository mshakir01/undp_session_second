

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../core/constant /const_color.dart';
import '../../core/constant /const_text.dart';
import '../../core/constant /const_text_style.dart';
import '../components/custom_container.dart';

class SessionSixScreen extends StatefulWidget {
  const SessionSixScreen({super.key});

  @override
  State<SessionSixScreen> createState() => _SessionSixScreenState();
}

class _SessionSixScreenState extends State<SessionSixScreen> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body:
          SingleChildScrollView(
            child: Column(
              children: [
                CustomContainer(title: 'Container 1', bgColor: containerColorOne,),
                CustomContainer(title: 'Container 2', bgColor: containerColorTwo,),
                CustomContainer(title: 'Container 3', bgColor: containerColorThree),
                CustomContainer(title: 'Container 4', bgColor: containerColorFour,),
                CustomContainer(title: 'Container 5', bgColor: containerColorOne,),
                CustomContainer(title: 'Container 6', bgColor: containerColorTwo,),
                CustomContainer(title: 'Container 7', bgColor: containerColorThree),
                CustomContainer(title: 'Container 8', bgColor: containerColorFour,),
              ],
            ),
          )
        // DataTable(columns:  [
        //   DataColumn(label: Text(text1,style: mediumStyle,),),
        //   DataColumn(label: Text(text2,style: mediumStyle,),),
        //   DataColumn(label: Text(text3,style: mediumStyle,),),
        // ],
        //     rows: const [
        //       DataRow(cells: [
        //         DataCell(Text("01",style: TextStyle(fontSize: 24,color: Colors.black),)),
        //         DataCell(Text("Mahreen",style: TextStyle(fontSize: 24,color: Colors.blue),)),
        //         DataCell(Text("Bcs",style: TextStyle(fontSize: 24,color: Colors.green),)),
        //       ]),
        //       DataRow(cells: [
        //         DataCell(Text("02",style: TextStyle(fontSize: 24,color:Colors.black),),),
        //         DataCell(Text("Kashif ",style: TextStyle(fontSize: 24,color: Colors.red),)),
        //         DataCell(Text("Unknown",style: TextStyle(fontSize: 24,color: Colors.orange),))
        //       ]), DataRow(cells: [
        //         DataCell(Text("03",style: TextStyle(fontSize: 24,color:Colors.black),),),
        //         DataCell(Text("Ali ",style: TextStyle(fontSize: 24,color: Colors.red),)),
        //         DataCell(Text("Matric",style: TextStyle(fontSize: 24,color: Colors.orange),))
        //       ]),
        //     ])
      ),
    );
  }
}
