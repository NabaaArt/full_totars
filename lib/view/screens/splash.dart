import 'package:flutter/material.dart';

import 'bottomNavigationBar.dart';
 class splash extends StatefulWidget {
   const splash({Key? key}) : super(key: key);

   @override
   State<splash> createState() => _splashState();
 }

 class _splashState extends State<splash> {
   Future Delay() async {
     await new Future.delayed(const Duration(seconds: 4   ));
     Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => bootomNavigationBar()),
     );
   }

   @override
   void initState() {
     super.initState();
     Delay();
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color.fromRGBO(80, 168, 143, 0.99),
       body: Center(
         child: Image.asset(
           "imgs/splas.jpg",
           height: 200,
           width: 200,
         ),
       ),
     );
   }
 }




