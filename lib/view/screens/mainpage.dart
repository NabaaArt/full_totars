import 'package:flutter/material.dart';
import 'package:full_totars/core/services/services.dart';
import 'package:full_totars/view/screens/login.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/functions/mainPageFunctions.dart';

import '../../data/datasource/static/mainPageData.dart';
import '../../data/model/post.dart';

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  List<Post>? posts;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    //fetch data from API
    getData();
  }

  getData() async {
    posts = await RemoteService().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
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
              Expanded(child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    height: 200,
                    child: ListView.builder(
//padding: EdgeInsets.only(left: 10,),

                        scrollDirection: Axis.horizontal,
                        itemCount: addpics.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                              child: Container(
                                width: MediaQuery.of(context).size.width -30 ,

                                //     width: MediaQuery.of(context).size.width-50,

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(addpics[index]["path"]),
                                      fit: BoxFit.fill,
                                    )),
                              ));
                        }),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width/1.55,
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,

                      children: [
                        category("Food", "imgs/cat_food.png"),
                        category("Fresh", "imgs/cat_fresh.png"),
                        category("Shops", "imgs/Cat_shop.png"),
                        category("Butler", "imgs/cat_butler.png"),
                        category("Rewards", "imgs/cat_gift.png"),
                        category("Market", "imgs/cat_market.png"),
                      ],
                    ),
                  ),
                  space(),
                  offers("New on toters", "check out our latest partners"),
                  space(),
                  offers("Happy Hour", "get happy with 50% off"),
                  space(),
                  foodOptions(),
                   resturants(),



                  ]
              ),

              )
            ],

          ),
        ),
      ),
    );
  }
}
