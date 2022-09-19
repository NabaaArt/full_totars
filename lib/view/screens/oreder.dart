import 'package:flutter/material.dart';

class orderPage extends StatefulWidget {
  const orderPage({Key? key}) : super(key: key);

  @override
  State<orderPage> createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: TabBar(

          tabs: [
            Text("Past Orders",style: TextStyle(color: Colors.black) ,),
            Text("upcoming",style: TextStyle(color: Colors.black)),
          ],
        ),

      ),
      body: TabBarView(children:[

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("imgs/butler.webp"),
            Text("You do not have any past orders!",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 20) ,),
          ],
        ),


        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("imgs/searchImg.webp"),
            Text("No upcoming order",style: TextStyle(color: Colors.teal,fontSize: 20,fontWeight: FontWeight.bold) ,),
          ],
        ),

      ]),
    ));
  }
}
