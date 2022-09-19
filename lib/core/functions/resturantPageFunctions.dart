import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:full_totars/view/screens/foodPage.dart';

import '../../data/datasource/static/resturantPageData.dart';

Container favotites(Icon name) {
  return Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
    ),
    child: name,
  );
}

Container mealsInfo() {
  return Container(
      height: 500,
      width: double.infinity,
      child: ListView.builder(
          shrinkWrap: false,
          scrollDirection: Axis.vertical,
          itemCount: meals.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => foodPage(
                          foodDiscribtion: meals[index]["deiscribtions"],
                          foodName: meals[index]["name"],
                          foodPrice: meals[index]["mealPrice"],
                          foodPic: meals[index]["pic"],
                        )));
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            meals[index]["name"],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            meals[index]["deiscribtions"],
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "${meals[index]["mealPrice"]} IQD",
                            style: TextStyle(fontSize: 15, color: Colors.teal),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      height: 130,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(meals[index]["pic"]),
                            fit: BoxFit.fill),
                      ),
                    ),

                  ]),
            ));
          }));
}
