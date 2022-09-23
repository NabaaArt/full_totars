import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:full_totars/view/screens/login.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import '../../core/functions/mainPageFunctions.dart';

var addsImgs = [];

var catImg =[];
var catName =[];

var foodoptionsImg =[];
var foodoptionsName =[];

var offersImgs = [];
var offersName = [];
var offersLocation = [];
var offersTime = [];
var offersRate= [];
var offersDescription= [];

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  Future getAddsData() async {
    var url = Uri.parse("http://localhost:4000/adds");
    http.Response response = await http.get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);
    addsImgs.clear();
    setState(() {
      for (int i = 0; i <= addsImgs.length; i++) {
        addsImgs.add(list1[i]["img"]);
        // print(body);
        print(i);
      }
    });
  }
  Future getFoodOptionyData() async {
    var url = Uri.parse("http://localhost:4000/food_option");
    http.Response response = await http.get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);
    catImg.clear();
    foodoptionsImg.clear();
    foodoptionsName.clear();
    setState(() {
      for (int i = 0; i <= foodoptionsImg.length; i++) {
        foodoptionsName.add(list1[i]["foodOptionName"]);
        foodoptionsImg.add(list1[i]["imge"]);

      }
    });
  }


  Future getResturantOffersData() async {
    var url = Uri.parse("http://localhost:4000/restaurant");
    http.Response response = await http.get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);
    offersImgs.clear();
    offersLocation.clear();
    offersName.clear();
    offersTime.clear();
    offersDescription.clear();
    offersRate.clear();
    setState(() {
      for (int i = 0; i <= offersImgs.length; i++) {
        offersImgs.add(list1[i]["img"]);
        offersName.add(list1[i]["res_name"]);
        offersLocation.add(list1[i]["location"]);
        offersTime.add(list1[i]["time"]);
        offersRate.add(list1[i]["rate"]);
        offersDescription.add(list1[i]["description"]);
        // print(body);
        print(i);
      }
    });
  }
  Future getCategoryData() async {
    var url = Uri.parse("http://localhost:4000/category");
    http.Response response = await http.get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);
    catImg.clear();
    catName.clear();
    setState(() {
      for (int i = 0; i <= catImg.length; i++) {
        catImg.add(list1[i]["cat_img"]);
        catName.add(list1[i]["cat_name"]);
        print(catImg[i]);

      }
    });
  }

  @override
  void initState() {
    super.initState();
    getAddsData();
    getResturantOffersData();
    getCategoryData();
    getFoodOptionyData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.black87,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.view_list_sharp,
                    color: Colors.black87,
                  ),
                ],
              ))
        ],
        titleSpacing: 8,
        leadingWidth: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              "delevery to\nBaghdad,Iraq",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Icon(
              Icons.arrow_drop_down_sharp,
              size: 20,
              color: Colors.black87,
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Get.to(loginPage()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.login_sharp,
                      color: Colors.teal,
                    ),
                    Text(
                      "Register with tooters to earn points for FREE FOOD",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                          height: 200,
                          child: FutureBuilder(
                              future: getAddsData(),
                              builder: (BuildContext context,
                                  AsyncSnapshot snapshot) {
                                if (snapshot.hasData == null) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                } else {
                                  return ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: addsImgs.length,
                                      //  shrinkWrap: true,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Card(
                                            child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              30,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    addsImgs[index]),
                                                fit: BoxFit.fill,
                                              )),
                                        ));
                                      });
                                }
                              })),

                      Container(
                        height: MediaQuery.of(context).size.width / 1.55,

                        child: FutureBuilder(
                            future:  getCategoryData(),
                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              if (snapshot.hasData == null) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else {
                                return GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: catName.length,
                                  gridDelegate:
                                      SliverGridDelegateWithMaxCrossAxisExtent(
                                          maxCrossAxisExtent: 150,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10),
                                  itemBuilder: (context, index) => Card(
                                    shadowColor: Colors.grey,
                                    child: Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Column(
                                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       //   crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                                height: 60,
                                                width: 60,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage( catImg[index] ),
                                                    fit: BoxFit.fill
                                                  )
                                                ),
                                                // child: Image.network(
                                                //    catImg[index] )
                                              ),
                                            Text(
                                              catName[index],
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
                                );
                              }
                            }),
                      ),

                      space(),

                      Container(  height: MediaQuery.of(context).size.width-70,

                         width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: FutureBuilder(
                              future: getCategoryData(),
                              builder: (BuildContext context,
                                  AsyncSnapshot snapshot) {
                                if (snapshot.hasData == null) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                } else {
                                  return  ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: offersName.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return  Column(

                                                crossAxisAlignment: CrossAxisAlignment.start,

                                         //     mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                 Container(

width: 400,
                                                   child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                       crossAxisAlignment: CrossAxisAlignment.center,

                                                        children: [
                                                          Column(
crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text(
                                                                "offers",
                                                                style: TextStyle(
                                                                    fontSize: 20,
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                    FontWeight.bold),
                                                              ),
                                                              Text(offersDescription[index],
                                                                  style: TextStyle(
                                                                      fontSize: 15,
                                                                      color:
                                                                      Colors.grey
                                                                          .shade700))
                                                            ],
                                                          ),

                                                          Icon(
                                                            Icons
                                                                .arrow_forward_ios_outlined,
                                                            color: Colors.teal
                                                                .shade500,
                                                          )
                                                        ],
                                                      ),
                                                 ),

                                                  SizedBox(
                                                    height: 10,
                                                  ),

                                                  Container(
                                                 //   height: 500,
                                                    padding: EdgeInsets.only(
                                                        right: 20, top: 10),
                                                    width: MediaQuery
                                                        .of(context)
                                                        .size
                                                        .width,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          padding: EdgeInsets.all(
                                                              10),
                                                          height: 170,
                                                          width:
                                                          MediaQuery
                                                              .of(context)
                                                              .size
                                                              .width,
                                                          decoration: BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                10),
                                                            image: DecorationImage(
                                                                image: NetworkImage(
                                                                  offersImgs[index],
                                                                ),
                                                                fit: BoxFit.fill),
                                                          ),
                                                          child: Stack(
                                                            clipBehavior: Clip
                                                                .none,
                                                            alignment:
                                                            Alignment.topRight,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .favorite_border,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              Positioned(
                                                                bottom: -20,
                                                                child: Container(
                                                                  width: 70,
                                                                  height: 44,
                                                                  decoration: BoxDecoration(
                                                                      border: Border
                                                                          .all(
                                                                          color: Colors
                                                                              .grey,
                                                                          width: 1),
                                                                      borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                          5),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                            blurRadius:
                                                                            5,
                                                                            color: Colors
                                                                                .grey
                                                                                .shade400,
                                                                            offset:
                                                                            Offset(
                                                                                0,
                                                                                3))
                                                                      ],
                                                                      color: Colors
                                                                          .white),
                                                                  child: Column(
                                                                    children: [
                                                                      Text(
                                                                        offersTime[index],
                                                                        //  addsImgs[index]["Time"],
                                                                        style:
                                                                        TextStyle(
                                                                          fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                          18,
                                                                        ),
                                                                        textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                      ),
                                                                      Text(
                                                                        "mins",
                                                                        style:
                                                                        TextStyle(
                                                                          fontSize:
                                                                          15,
                                                                        ),
                                                                        textAlign:
                                                                        TextAlign
                                                                            .center,
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
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                         //     "offersName[index]",
                                                                  "${offersName[index]} - ${offersLocation[index] }",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                  FontWeight.bold,
                                                                  fontSize: 17),
                                                            ),
                                                            Text(
                                                              "type",
                                                              //  Resturantoffers[index]["type"],
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                  FontWeight.bold,
                                                                  fontSize: 15,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade700),
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Container(
                                                                  height: 25,
                                                                  padding:
                                                                  EdgeInsets.all(
                                                                      5),
                                                                  decoration:
                                                                  BoxDecoration(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade100,
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                        3),
                                                                  ),
                                                                  child: Row(
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Colors
                                                                            .green
                                                                            .shade900,
                                                                        size: 17,
                                                                      ),
                                                                      Text(
                                                                       "${offersRate[index]}",
                                                                        style:
                                                                        TextStyle(
                                                                          fontSize:
                                                                          14,
                                                                          fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Container(
                                                                    padding:
                                                                    EdgeInsets
                                                                        .all(5),
                                                                    height: 25,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: Colors
                                                                          .red
                                                                          .shade50,
                                                                      borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                          3),
                                                                    ),
                                                                    child: Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .discount_outlined,
                                                                          color: Colors
                                                                              .red
                                                                              .shade900,
                                                                          size: 17,
                                                                        ),
                                                                        Text(
                                                                          "10% off",
                                                                          style: TextStyle(
                                                                              fontSize:
                                                                              14,
                                                                              fontWeight:
                                                                              FontWeight
                                                                                  .bold,
                                                                              color: Colors
                                                                                  .red
                                                                                  .shade900),
                                                                        ),
                                                                      ],
                                                                    )),
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Container(
                                                                    height: 25,
                                                                    padding:
                                                                    EdgeInsets
                                                                        .all(5),
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: Colors
                                                                          .blue
                                                                          .shade50,
                                                                      borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                          3),
                                                                    ),
                                                                    child: Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .add_circle_outline,
                                                                          color: Colors
                                                                              .blue
                                                                              .shade900,
                                                                          size: 17,
                                                                        ),
                                                                        Text(
                                                                          "earn points",
                                                                          style: TextStyle(
                                                                              fontSize:
                                                                              14,
                                                                              fontWeight:
                                                                              FontWeight
                                                                                  .bold,
                                                                              color: Colors
                                                                                  .blue
                                                                                  .shade900),
                                                                        ),
                                                                      ],
                                                                    ))
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                  //    },
                                                  //    ),
                                                  //  ),
                                                ],
                                              );

                                          }
                                      )
                                  ;
                                }
                              }
                              ),

                      ),
                      space(),
                              Container(
    height: MediaQuery.of(context).size.width / 1.55,

    child: FutureBuilder(
    future: getFoodOptionyData(),
    builder:
    (BuildContext context, AsyncSnapshot snapshot) {
      if (snapshot.hasData == null) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return  Container(
          height: 140,


          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foodoptionsName.length,
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
                            image: NetworkImage(
                              foodoptionsImg[index],
                            ),
                            fit: BoxFit.fill)),
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(foodoptionsName[index],
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
    }
    )
    ),

                      resturants(),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
// class _mainPageState extends State<mainPage> {
//   List<Post>? posts;
//   var isLoaded = false;
//
//   @override
//   void initState() {
//     super.initState();
//
//     //fetch data from API
//     getData();
//   }
//
//   getData() async {
//     posts = await RemoteService().getPosts();
//     if (posts != null) {
//       setState(() {
//         isLoaded = true;
//       });
//     }
//   }
