import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vegefruiter/vegefruiter/items/Items_Page.dart';
import 'package:vegefruiter/vegefruiter/items/Items_Page_Spair.dart';

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}
class _MainpageState extends State<Mainpage> {

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Container(color: Colors.grey[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CarouselSlider(
                  items: [
                    Image(image: AssetImage('images/1.png'),fit: BoxFit.cover,width: double.maxFinite,),
                    Image(image: AssetImage('images/2.png'),fit: BoxFit.cover,width: double.maxFinite,),
                    Image(image: AssetImage('images/3.png'),fit: BoxFit.cover,width: double.maxFinite,),
                  ],
                  options: CarouselOptions(
                    height: 180.0,
                    initialPage: 1,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval:Duration(seconds:5),
                    autoPlayAnimationDuration:Duration(seconds:1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  )),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>ItemsScreen(),),);},
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('images/1.png'), height: 120.0, width: 120.0,),
                              // Text('Fruits', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,),),
                            ],),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0,),
                            color: Colors.white,
                            border: Border.all(color: Colors.lime,width: 3)
                          ),),),),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>ItemsScreen2(),),);},
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('images/2.png'), height: 120.0, width: 120.0,),
                              // Text('Vegetables', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,),),
                            ],),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0,),
                              color: Colors.white,
                              border: Border.all(color: Colors.lime,width: 3)
                          ),),),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Container(color: Colors.grey[200],
                  child: ListView(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 0,left: 10),
                            alignment: Alignment.centerLeft,
                            color: Colors.lime,
                            // decoration: BoxDecoration(
                            //   border: Border.all(color: Colors.lime,)
                            // ),

                            child: Text('Best Seller:',style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight:FontWeight.bold),)),
                      ),
                      Container(
                        height: 280,
                        padding: EdgeInsets.only(top: 10),
                        alignment: AlignmentDirectional.centerStart,
                        // color: Colors.white,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index)=> buildBestSeller(),
                            separatorBuilder: (context, index)=> SizedBox(width: 1,),
                            itemCount: 10),
                      ),


                    ],
                  ),
                ),
              ),

            ]

        ),
      ),
    );


  }
}


Widget buildBestSeller() =>
    Stack(
        children:[
          Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 8.0),
            child: Container(
              padding: EdgeInsets.only(top: 12),
              height: 235,
              width: 160,
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.white,
              ) ,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),bottomLeft:Radius.circular(10.0)),
                      child: Image.network('https://www.bordernaturaltherapies.com.au/wp-content/uploads/2017/07/bananas.jpg',
                        width: 90, height: 60, fit: BoxFit.fill,),
                    ),
                    Text('Banana',style: TextStyle(color: Colors.lime,fontSize: 24.0,fontWeight:FontWeight.bold),),
                    Text('Cheqeta Fileppeno',style: TextStyle(color: Colors.grey,fontSize: 12.0,),),
                    SizedBox(height: 15,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('44.99',style: TextStyle(color: Colors.red,fontSize: 20.0,fontWeight:FontWeight.bold),),
                          SizedBox(width: 7,),
                          Text('AED',style: TextStyle(color: Colors.grey,fontSize: 16.0,fontWeight:FontWeight.bold),),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Price per ',style: TextStyle(color: Colors.grey,fontSize: 12.0,fontWeight:FontWeight.bold),),
                        Text('KG',style: TextStyle(color: Colors.amber,fontSize: 12.0,fontWeight:FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(alignment: Alignment.center,
                      height: 35,width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color:Colors.lime ),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),color: Colors.white),
                      child: Text('Add To Cart', style: TextStyle(color: Colors.lime,
                          fontSize: 16, fontWeight: FontWeight.bold),),),


                  ]),),
          ),
          Positioned(
            child: Container(
              height: 20,width: 75,transform: Matrix4.rotationZ(-0.2),alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),color: Colors.red[600]),
              child: Text('Best Seller', style: TextStyle(color: Colors.white,
                  fontSize: 12, fontWeight: FontWeight.bold),),),
            top: 17.0,
            left: 2.0,
          ),

        ]);
