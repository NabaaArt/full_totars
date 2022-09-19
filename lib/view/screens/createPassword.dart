import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../getName.dart';
class createPassword extends StatefulWidget {
  const createPassword({Key? key}) : super(key: key);

  @override
  State<createPassword> createState() => _createPasswordState();
}

class _createPasswordState extends State<createPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Create your password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
           // SizedBox(height: 7,),
          Container(
            margin:EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1,color: Colors.grey)
            ),
            child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Password',


                ),
              obscureText: true,
            ),

          ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () => Get.to(getName()),
                  child: Text("continue")),
            ),
          ]
        ),
      ),
    ),
    );
  }
}
