import 'package:flutter/material.dart';
import 'package:vegefruiter/vegefruiter/home/Home_Page.dart';
import 'package:vegefruiter/vegefruiter/items/Items_Page.dart';
import 'package:vegefruiter/vegefruiter/items/Items_Page_Spair.dart';
import 'package:vegefruiter/vegefruiter/login/Login_Page.dart';
import 'package:vegefruiter/abdulrhman/Messenger_Page.dart';
import 'package:vegefruiter/vegefruiter/login/On_Boarding.dart';
import 'dart:ui';

import 'package:vegefruiter/vegefruiter/login/Register_Page1.dart';
import 'package:vegefruiter/vegefruiter/login/Register_Page2.dart';
// import 'package:vegefruiter/On_Boarding.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VegeFruiter',
      home: OnBoarding(

      ),
    );
  }
}

// LoginScreen
//
//
//Homepage
// MessengerScreen