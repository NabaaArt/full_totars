import 'package:flutter/material.dart';

class foodPage extends StatefulWidget {
  final String foodName;
  final String foodPrice;
  final String foodPic;
  final String foodDiscribtion;
  const foodPage(
      {required this.foodDiscribtion,
      required this.foodName,
      required this.foodPrice,
      required this.foodPic
      });

  @override
  State<foodPage> createState() => _foodPageState();

}

class _foodPageState extends State<foodPage> {
  int counter = 1;
  int Price =4000;
  int p = 4000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.foodPic), fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.foodName,
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              widget.foodDiscribtion,
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "${widget.foodPrice} IQD",
                              style: TextStyle(fontSize: 15, color: Colors.teal),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 5,
                        height: 10,
                      ),

                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector( onTap: ()=> setState(() {
                        counter++;
                        Price = Price + p;
                      })
                         , child: Icon(Icons.add,color: Colors.teal,size: 30,)),
                      Text("${Price}"),
                     counter >0 ? GestureDetector(onTap: ()=> setState(() {
                        counter--;
                        Price = Price - p;
                      })
    ,child: Icon(Icons.minimize_rounded,color: Colors.teal,size: 30,))  : Container()
                    ],
                  ),
                ),
                ElevatedButton(onPressed: ()=> setState(() {

                //  counter =    counter ++;
                }), child: Text("Add to cart")
    )
              ],
            )
         ],
         ),

      ),
    );
  }
}
