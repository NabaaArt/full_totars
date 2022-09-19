import 'package:flutter/material.dart';
import 'package:full_totars/view/screens/mainpage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class getName extends StatefulWidget {
  const getName({Key? key}) : super(key: key);

  @override
  State<getName> createState() => _getNameState();
}

class _getNameState extends State<getName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(
  child:   Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Enter your name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
          margin:EdgeInsets.only(top: 20),
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1,color: Colors.grey)
          ),
          child: TextField(
            decoration: const InputDecoration(
              hintText: 'First Name',


            ),

          ),

        ),
    Container(
      margin:EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1,color: Colors.grey)
      ),
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'Last Name',


        ),

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
              onPressed: () => Get.to(mainPage()),
              child: Text("Done")),
        ),
      ],
    ),
  ),
),
    );
  }
}
