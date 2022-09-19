import 'package:flutter/material.dart';

import '../../core/functions/resturantPageFunctions.dart';
import '../../data/datasource/static/resturantPageData.dart';



class resturantPage extends StatefulWidget {
  final String newResturantName;
  final String newResImge;
  final String newTime;
  //final int newPrice;
  //final int newDelever;
  final String newLoc;
  final String newrate;

  const resturantPage({
    required this.newTime,
    required this.newResImge,
    required this.newResturantName,
    // required this.newDelever,
    required this.newLoc,
//  required this.newPrice,
    required this.newrate
  });
  @override
  State<resturantPage> createState() => _resturantPageState();
}

class _resturantPageState extends State<resturantPage> {
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          body:SafeArea(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width/2,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.newResImge), fit: BoxFit.cover),
                          ),
                        ),
          Positioned(
                top: 0,
                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,

                              children: [
                                favotites(Icon (Icons.share_outlined)),
                                SizedBox(width: 10,),
                                favotites(Icon (Icons.favorite_border)),
                                SizedBox(width: 10,),
                                favotites(Icon (Icons.search)),
                                SizedBox(width: 10,),
                              ],
                            ),
          ),

                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),

                           Positioned(
                             bottom: -15,
                             right: 10,
                             child: Container(
                                  width: 70,
                                  height: 44,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 1),
                                      borderRadius:
                                      BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5,
                                            color: Colors.grey.shade400,
                                            offset: Offset(0, 3))
                                      ],
                                      color: Colors.white),
                                  child: Column(
                                    children:  [
                                      Text(
                                        widget.newTime,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "mins",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                           ),

                          ],
                        ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.newResturantName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          SizedBox(height: 7,),
                          Text("enjoy our meals"),
                          SizedBox(height: 7,),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,

                            children: [

                              Container(
                                  padding: EdgeInsets.all(5),
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.red.shade50,
                                    borderRadius:
                                    BorderRadius.circular(3),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.discount_outlined,
                                        color: Colors.red.shade900,
                                        size: 17,
                                      ),
                                      Text(
                                        "10% off",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight:
                                            FontWeight.bold,
                                            color:
                                            Colors.red.shade900),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  height: 25,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius:
                                    BorderRadius.circular(3),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.blue.shade900,
                                        size: 17,
                                      ),
                                      Text(
                                        "earn points",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight:
                                            FontWeight.bold,
                                            color:
                                            Colors.blue.shade900),
                                      ),
                                    ],
                                  ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  widget.newrate,
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Text(
                                  "based on 44524 ratings",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,

                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios_outlined,color: Colors.teal,)
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            height:10
                          ),

                          mealsInfo(),

                        ],
                      ),
                    )

                      ],

                ),
              ],
            ),
          ) ,
        );
  }
}
