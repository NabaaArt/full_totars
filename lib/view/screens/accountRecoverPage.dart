import 'package:flutter/material.dart';
import 'package:full_totars/view/screens/createPassword.dart';
import 'package:full_totars/view/screens/mainpage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class accountRecoverPage extends StatefulWidget {
  const accountRecoverPage({Key? key}) : super(key: key);

  @override
  State<accountRecoverPage> createState() => _accountRecoverPageState();
}

class _accountRecoverPageState extends State<accountRecoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Recover your account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 7,),
              Text("Enter an email address or a social aacount.",style: TextStyle(fontSize: 15),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1,color: Colors.grey)
                ),
                child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Email Adress',
                    )
                ),

              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),

                margin: EdgeInsets.only(top: 30,bottom: 20),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(

                    onPressed:()=> Get.to(createPassword()), child: Text("continue with email")),

              ),
              Stack(
alignment: Alignment.center,
                 children: [

                   Divider(
                     thickness: 2,
                     height: 50,
                   ),
                   Container(
                     alignment: Alignment.center,
                     height: 40,
                     width: 30,
                   color: Colors.white,
                     child: Text("OR",style: TextStyle(fontSize: 20),),
                   ),
                 ],

                ),
              socialAccounts("imgs/apple_icon.png","Apple"),
              socialAccounts("imgs/facebook_icon.png","Facebook"),
              socialAccounts("imgs/google_icon.png","Google"),
            ],
          ),
        ),
      ),
    );
  }

  Padding socialAccounts (String socialImg ,String socialName){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey,width: 1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           Container(padding: EdgeInsets.all(10),

               child: Image.asset(socialImg, height: 40,width: 40,)),
           SizedBox(width: 50,),
            Text("continue with $socialName",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
