

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/datasource/static/mainPageData.dart';
import '../../view/screens/resturantPage.dart';

Container category(String info, String icon) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        // boxShadow: BoxShadow
        boxShadow: [
          BoxShadow(
            spreadRadius: 4,
            blurRadius: 10,
            color: Colors.grey.shade300,
          )
        ],

        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 50,
          width: 50,

          //   width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 60,
                      width: 60,
                      child: Image.asset(
                        icon,
                      )),
                  Text(
                    info,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container offers(String offer, String discription) {
    return Container(

     padding: EdgeInsets.symmetric( vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    offer,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(discription,
                      style: TextStyle(fontSize: 15, color: Colors.grey.shade700))
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.teal.shade500,
              )
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 280,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Resturantoffers.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 400,
                  padding: EdgeInsets.only(right: 20,top: 10),
                  width: MediaQuery.of(context).size.width ,



                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Container(
                       padding: EdgeInsets.all(10),
                        height: 170,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(Resturantoffers[index]["img"]
                              ),
                              fit: BoxFit.fill),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topRight,
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                            Positioned(
                              bottom: -20,
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
                                      Resturantoffers[index]["Time"],
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          "${Resturantoffers[index]["ResName"]} - ${Resturantoffers[index]["location"] }",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            Resturantoffers[index]["type"],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.grey.shade700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,

                            children: [
                              Container(
                                height: 25,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius:
                                  BorderRadius.circular(3),
                                ),
                                child: Row(

                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.green.shade900,
                                      size: 17,
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
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
                                  ))
                            ],
                          ),

                        ],
                      ),

                    ],
                  ),
                );
              },

            ),

          ),
        ],
      ),
    );
  }

  Container space() {
    return Container(
      color: Colors.grey.shade300,
      height: 10,
      width: double.infinity
    );
  }

  Container foodOptions (){
  return    Container(
    height: 140,


      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: FoodOptions.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 50,
                width: 60,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(
                          FoodOptions[index]["path"],
                        ),
                        fit: BoxFit.fill)),
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(FoodOptions[index]["name"],
                          style: TextStyle(
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          )),
                    ),
                  ]),
            ],
          );
        },
      ),

  );
  }

  Container resturants(){
  return    Container(
    height: 2800,
    //     height: MediaQuery.of(context).size.height,

    child: ListView.builder(itemCount: Resturans.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder:( BuildContext context , int index){
          return Container(

            height: 340,
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width - 50,



            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20,bottom: 20),
                  child: Text(
                   "${Resturans[index]["ResName"]} - ${Resturans[index]["location"]}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                GestureDetector(
                onTap: () {
                Navigator.of(context).push(
                MaterialPageRoute(
                builder: (context) =>
                resturantPage(newrate: Resturans[index]["rate"],newResImge: Resturans[index]["img"], newResturantName: Resturans[index]["ResName"],  newLoc: Resturans[index]["location"],newTime: Resturans[index]["Time"],)
                ));
                },

                 child: Container(
                    padding: EdgeInsets.all(10),
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(Resturans[index]["img"]),
                          fit: BoxFit.fill),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topRight,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                        Positioned(
                          bottom: -20,
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
                                  Resturans[index]["Time"] ,
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
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Resturans[index]["type"],
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 18),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,

                      children: [
                        Container(
                          height: 25,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius:
                            BorderRadius.circular(3),
                          ),
                          child: Row(

                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green.shade900,
                                size: 17,
                              ),
                              Text(
                                Resturans[index]["rate"]  ,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
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
                            ))
                      ],
                    ),

                  ],
                ),

              ],
            ),
          );
        }),

  );
  }