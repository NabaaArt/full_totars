import 'package:flutter/material.dart';

import '../../data/datasource/static/butlerPageData.dart';

class butlerPage extends StatefulWidget {
  const butlerPage({Key? key}) : super(key: key);

  @override
  State<butlerPage> createState() => _butlerPageState();
}

class _butlerPageState extends State<butlerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        toolbarHeight:100,
        title: Text("We deliver anything that fits\n on a motorbike!"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
        child: Column(

          children: [
            Text("Request a butler to :",style: TextStyle(fontSize: 20),),
            SizedBox(height: 30,),
            card(option1,describtion1, img1),
            SizedBox(height: 30,),
            card(option2,describtion2, img2)
          ],
        ),
      ),
    );
  }
  Container card( String option , String describtion , String img){

    return
      Container(
        height: 150,

        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey,width: 1),
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        width: MediaQuery.of(context).size.width-20,
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(option,style: TextStyle(color: Colors.teal,fontSize: 15,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text(describtion,style: TextStyle(color: Colors.grey,fontSize: 15),)
                ],
              ),
            ),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.contain
                  )
              ),
            ),
            Icon(Icons.arrow_forward_ios_outlined,color: Colors.teal,)
          ],
        ),


      );
  }
}
