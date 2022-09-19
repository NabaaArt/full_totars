import 'package:flutter/material.dart';
class accountPage extends StatefulWidget {
  const accountPage({Key? key}) : super(key: key);

  @override
  State<accountPage> createState() => _accountPageState();
}

class _accountPageState extends State<accountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        maintainBottomViewPadding: true,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                  height: 50,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade300, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(

                          children: [
                            Icon(Icons.wallet_giftcard_rounded,color: Colors.teal.shade500,),
                            SizedBox(width: 10,),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Green",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("0 pts",style: TextStyle(fontSize: 16),),
                              ],
                            ),],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.teal.shade500,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child:
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                       width: MediaQuery.of(context).size.width-40 ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            icons(Icon(Icons.manage_accounts_outlined), "Profile"),
                            icons(Icon(Icons.headset_mic_outlined), "Support"),
                            icons(Icon(Icons.payment_rounded), "Payments"),
                            icons(Icon(Icons.language), "language"),
                          ],
                        ),
                      ),

                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
                  height: 200,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade400),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Toters Cash",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Icon(
                                Icons.info_outline,
                                color: Colors.teal.shade500,
                              )
                            ],
                          ),
                          line(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.account_balance_wallet_outlined,
                                    color: Colors.teal.shade500,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Wallet",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                              Text(
                                "IQD 0",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          line(),
                          Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.teal.shade500,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Add Funds",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          line(),
                          Row(
                            children: [
                              Icon(
                                Icons.outbond_outlined,
                                color: Colors.teal.shade500,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Send Funds",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
                  height: 150,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade400),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Promotions",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),

                            ],
                          ),
                          line(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.percent,
                                    color: Colors.teal.shade500,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Credits",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                              Text(
                                "IQD 0",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),

                          line(),
                          Row(
                            children: [
                              Icon(
                                Icons.collections_bookmark_outlined,
                                color: Colors.teal.shade500,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Add Promo Code",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
                  height: 300,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade400),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Account details",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),

                            ],
                          ),
                          line(),


                          Row(
                            children: [
                              Icon(
                                Icons.notifications_outlined,
                                color: Colors.teal.shade500,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Notifications",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),

                          line(),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.teal.shade500,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Adresses",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          line(),
                          Row(
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: Colors.teal.shade500,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Favorites",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          line(),
                          Row(
                            children: [
                              Icon(
                                Icons.ballot_outlined,
                                color: Colors.teal.shade500,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Preferences",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          line(),
                          Row(
                            children: [
                              Icon(
                                Icons.person_add_alt_1_outlined,
                                color: Colors.teal.shade500,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Refer a friend",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
                  height: 250,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade400),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Help Center",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),

                            ],
                          ),
                          line(),

                          Row(
                            children: [
                              Icon(
                                Icons.headset_mic_outlined,
                                color: Colors.teal.shade500,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Get Support",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),

                          line(),
                          Row(
                            children: [
                              Icon(
                                Icons.chat_outlined,
                                color: Colors.teal.shade500,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Support Tickets",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          line(),
                          Row(
                            children: [
                              Icon(
                                Icons.shield_moon_outlined,
                                color: Colors.teal.shade500,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Legal",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          line(),
                          Row(
                            children: [
                              Icon(
                                Icons.question_mark_rounded,
                                color: Colors.teal.shade500,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "FAQ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Container icons(Icon icon, String Name) {
    return Container(
      height: 70,
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
              child: icon),
          Text(
            Name,
            textAlign: TextAlign.center,
          ),
        ],
      ),


    );

  }

  Divider line() {
    return Divider(
      thickness: 1,
      color: Colors.grey.shade300,
    );
  }
}

