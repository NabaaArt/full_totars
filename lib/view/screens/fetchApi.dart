//
// import 'package:flutter/material.dart';
// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
// var imgs = [];
//
//  class getApi extends StatefulWidget {
//    const getApi({Key? key}) : super(key: key);
//
//    @override
//    State<getApi> createState() => _getApiState();
//
//  }
//
//  class _getApiState extends State<getApi> {
//    Future getAddsData() async {
//      var url = Uri.parse("http://localhost:4000/adds");
//      http.Response response = await http.get(url);
//      String body = response.body;
//      List<dynamic> list1 = json.decode(body);
//      imgs.clear();
//      setState(() {
//        for (int i = 0; i <= imgs.length; i++) {
//          imgs.add(list1[i]["img"]);
//          // print(body);
//          print(i);
//        }
//      });
//    }
//    @override
//    void initState() {
//      super.initState();
//      getAddsData();
//    }
//
//     @override
//     Widget build(BuildContext context) {
//       return Container();
//     }
//  }
//