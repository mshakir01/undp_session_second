

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SessionSixScreen extends StatefulWidget {
  const SessionSixScreen({super.key});

  @override
  State<SessionSixScreen> createState() => _SessionSixScreenState();
}

class _SessionSixScreenState extends State<SessionSixScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:DataTable(columns:const [
          DataColumn(label: Text("S.No",style: TextStyle(fontSize: 24),),),
          DataColumn(label: Text("Name",style: TextStyle(fontSize: 24),),),
          DataColumn(label: Text("Eduction",style: TextStyle(fontSize: 24),),),
        ],
            rows: const [
              DataRow(cells: [
                DataCell(Text("01",style: TextStyle(fontSize: 24,color: Colors.black),)),
                DataCell(Text("Mahreen",style: TextStyle(fontSize: 24,color: Colors.blue),)),
                DataCell(Text("Bcs",style: TextStyle(fontSize: 24,color: Colors.green),)),
              ]),
              DataRow(cells: [
                DataCell(Text("02",style: TextStyle(fontSize: 24,color:Colors.black),),),
                DataCell(Text("Kashif ",style: TextStyle(fontSize: 24,color: Colors.red),)),
                DataCell(Text("Unknown",style: TextStyle(fontSize: 24,color: Colors.orange),))
              ])
            ])
      ),
    );
  }
}
