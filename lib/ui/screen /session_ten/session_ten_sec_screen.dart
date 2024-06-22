import 'package:flutter/material.dart';
import 'package:undp_session_two/core/constant%20/const_text_style.dart';

class SessionTenSecScreen extends StatefulWidget {

  String title;
    SessionTenSecScreen({super.key,required this.title});

  @override
  State<SessionTenSecScreen> createState() => _SessionTenSecScreenState();
}

class _SessionTenSecScreenState extends State<SessionTenSecScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 24.0,left: 24),
                  child: Icon(Icons.arrow_back),
                ),
              ),
              const SizedBox(height: 200,),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.title,style: TextStyle(fontSize: 44,color: Colors.red),),
                )),
              Align(
                alignment: Alignment.bottomRight,
                  child: Text("Alignemnt property ",style: mediumStyle,)),
            ],
          ),
        ),
      ),
    );
  }
}
