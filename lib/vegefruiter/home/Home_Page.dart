
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vegefruiter/vegefruiter/home/Cart_Page.dart';
import 'package:vegefruiter/vegefruiter/home/MYOrder_Page.dart';
import 'package:vegefruiter/vegefruiter/home/Main_Page.dart';
import 'package:vegefruiter/vegefruiter/home/MyAccount_Page.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {

  int currentIndexBottomNavigationBar = 0;

  List<Widget> screens = [
    Mainpage(),
    Cartpage(),
    MyOrderpage(),
    MyAccountpage(),
  ];

  List<String> appbarText =[
    'VegeFruiter',
    'My Cart',
    'My Orders',
    'My Account',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.lime,
        elevation: 0,
        leading:Icon(Icons.menu, size: 40),
        title:Text(appbarText[currentIndexBottomNavigationBar],
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26),),
        centerTitle: true,
        actions:[IconButton(icon: Text('Ar',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                            onPressed: (){
                               print ('change language');},),
        ],),
      body:screens[currentIndexBottomNavigationBar],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lime,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        iconSize: 30,
        currentIndex: currentIndexBottomNavigationBar,
        onTap:(index){
          setState(() {
            currentIndexBottomNavigationBar = index;
          });
        },

        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home_outlined),label: 'Main Page'),
          BottomNavigationBarItem(icon:Icon(Icons.shopping_cart_outlined),label: 'Cart'),
          BottomNavigationBarItem(icon:Icon(Icons.format_list_bulleted_outlined),label: 'My Orders'),
          BottomNavigationBarItem(icon:Icon(Icons.person_pin_outlined),label: 'My Account'),
        ],
      ) ,

    );
  }
}
