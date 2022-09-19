import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_list_pick/country_selection_theme.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'accountRecoverPage.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String initialCode = "+964";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                " Enter your number ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    CountryListPick(
                      appBar: AppBar(
                        backgroundColor: Colors.teal,
                        title: const Text('Pick your country'),
                      ),
                      useUiOverlay: true,
                      theme: CountryTheme(
                        isShowFlag: true,
                        isShowTitle: false,
                        isShowCode: true,
                        isDownIcon: true,
                        showEnglishName: false,
                        labelColor: Colors.blueAccent,
                      ),
                      initialSelection: initialCode,
                      onChanged: (code) {},
                    ),
                    Expanded(
                      child: TextField(
                          decoration: const InputDecoration(
                        hintText: 'Phone Number',
                        counterStyle: TextStyle(color: Colors.red),
                      )),
                    ),
                  ]),
                ),
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () => Get.to(accountRecoverPage()),
                    child: Text("continue")),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.teal, // foreground
                ),
                onPressed: () => Get.to(accountRecoverPage()),
                child: Container(
                    margin: EdgeInsets.only(top: 15),
                    alignment: Alignment.center,
                    child: Text('Have an account and a new number?')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
