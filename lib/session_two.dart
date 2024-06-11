import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SessionTwo extends StatefulWidget {
  const SessionTwo({super.key});

  @override
  State<SessionTwo> createState() => _SessionTwoState();
}

class _SessionTwoState extends State<SessionTwo> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    return   Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22.0,right: 22),
            child: TextField(
              style: const TextStyle(fontSize:24,color: Colors.red),
              controller: emailController,
               decoration:   InputDecoration(
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8)
                 ),
                 prefixIcon:const Icon(Icons.email,
                   size: 32,color: Colors.red,
                 ),
                 suffixIcon: const Icon(Icons.email,size: 32,color: Colors.blue,),
                 hintText: "email",
                 hintStyle: const TextStyle(
                   fontSize: 22,
                   color: Colors.pink,
                   fontWeight: FontWeight.w400
                 ),
                 // label: Text("Email"),
                 // labelStyle: TextStyle(
                 //   fontSize: 22,
                 //   color: Colors.red
                 // ),
                 // helperText: "Email",
                 // helperStyle: TextStyle(
                 //   fontSize: 22,
                 //   color: Colors.blue
                 // )
               ),

            ),
          ),
          const SizedBox(height: 24,),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 22),
            child: TextField(
              style: TextStyle(fontSize:24,color: Colors.red),
              controller: passwordController,
               decoration:   InputDecoration(
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8)
                 ),
                 prefixIcon:const Icon(Icons.lock,
                   size: 32,color: Colors.red,
                 ),
                 suffixIcon: const Icon(Icons.remove_red_eye,size: 32,color: Colors.blue,),
                 hintText: "password",
                 hintStyle: const TextStyle(
                   fontSize: 22,
                   color: Colors.pink,
                   fontWeight: FontWeight.w400
                 ),
                 // label: Text("Email"),
                 // labelStyle: TextStyle(
                 //   fontSize: 22,
                 //   color: Colors.red
                 // ),
                 // helperText: "Email",
                 // helperStyle: TextStyle(
                 //   fontSize: 22,
                 //   color: Colors.blue
                 // )
               ),

            ),
          ),

          const SizedBox(height: 24,),
          ElevatedButton(

            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.black,width: 5),
              backgroundColor: Colors.blue,
            ),
              onPressed: (){},
              child: const Text("Login",style: TextStyle(fontSize: 24,fontStyle: FontStyle.italic,color: Colors.white),)),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Text("or Continue With",style: TextStyle(
                    fontSize:16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),),
                  SizedBox(width: 16,),

                  Expanded(
                    child: SizedBox(

                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                  ),


                ],
              ),
            ),


          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  color: Colors.blue,
                ),
              ), 
              Expanded(
                flex: 4,
                child: Container(
                height: 100,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                height: 100,
                  color: Colors.yellow,
                ),
              ),
            ],
          )


        ],
      ),
    );
  }
}
