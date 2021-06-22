import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsScreen2 extends StatefulWidget {
  @override
  _ItemsScreen2 createState() => _ItemsScreen2();
}

class _ItemsScreen2 extends State<ItemsScreen2> {
  // العدادة تبعت الايتمات
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _minusCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lime,
        leading:IconButton(
          onPressed: () { },
          icon: Icon(Icons.arrow_back_ios_outlined),iconSize: 35.0,
        ),
        title:Text('Fruits',style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight:FontWeight.bold),),
        centerTitle: true,
        actions:[
          Column(
            children: [
              Container(
                width: 80,
                child: IconButton(
                  icon:Icon(Icons.restaurant_outlined,),iconSize: 30.0,
                  onPressed: (){},
                ),
              ),
              Text('vegetables',style: TextStyle(color: Colors.white,fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  height:0.2),),
            ],
          ),
        ],),
      body: Container(color: Colors.grey[200],
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    height: 200,
                    width: 200,
                    padding:const EdgeInsets.only(left: 5.0,right: 5.0,top: 10.0),
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.white,
                    ) ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),bottomLeft:Radius.circular(10.0)),
                                child: Image.network('https://www.bordernaturaltherapies.com.au/wp-content/uploads/2017/07/bananas.jpg',
                                  width: 90, height: 60, fit: BoxFit.fill,),
                              ),
                              SizedBox(width: 8,),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Banana',style: TextStyle(color: Colors.grey,fontSize: 20.0,fontWeight:FontWeight.bold),
                                    ),
                                    SizedBox(height: 3,),
                                    Text('Banana',style: TextStyle(color: Colors.grey,fontSize: 12.0,),
                                    ),
                                    SizedBox(height: 5,),
                                  ]),
                            ]),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Container(height: 35,width: 170,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Price:',style: TextStyle(color: Colors.grey,fontSize: 16.0,fontWeight:FontWeight.bold),),
                                    SizedBox(width: 7,),
                                    Text('44.99',style: TextStyle(color: Colors.lime,fontSize: 20.0,fontWeight:FontWeight.bold),),
                                    SizedBox(width: 7,),
                                    Text('AED',style: TextStyle(color: Colors.grey,fontSize: 16.0,fontWeight:FontWeight.bold),),
                                  ]),),
                          ],),
                        Container(height:13,width: 170,
                          padding: EdgeInsets.zero,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Per KG',style: TextStyle(color: Colors.grey,fontSize: 12.0,fontWeight:FontWeight.bold,height: 0.1),),
                            ],),),
                        Container(height: 35,width: MediaQuery.of(context).size.width /2.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                padding:EdgeInsets.zero ,
                                onPressed: _incrementCounter,
                                icon: Text('+',style:TextStyle(color: Colors.lime,fontSize: 40.0,fontWeight:FontWeight.bold,height:0.9),),),
                              // Icon(Icons.add_circle_outline_outlined,color: Colors.lime,size: 50,),),
                              Text('$_counter',style: TextStyle(color: Colors.grey,fontSize: 25.0,fontWeight:FontWeight.bold,height: 0.9),),
                              IconButton(
                                onPressed: _minusCounter,
                                icon: Text('-',style:TextStyle(color: Colors.lime,fontSize: 50.0,fontWeight:FontWeight.bold,height:0.52),),),
                            ],),),

                      ],)
                ),
                SizedBox(width: 10,),
                Stack(
                  children:[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.only(top: 12),
                        height: 245,
                        width: 175,
                        decoration:BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.white,
                        ) ,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                               borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),bottomLeft:Radius.circular(10.0)),
                               child: Image.network('https://www.bordernaturaltherapies.com.au/wp-content/uploads/2017/07/bananas.jpg',
                                 width: 100, height: 70, fit: BoxFit.fill,),
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
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),color: Colors.lime),
                                child: Text('Add To Cart', style: TextStyle(color: Colors.white,
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

                  ]),
            ],),
            SizedBox(height: 5,),
            Column(
              children: [
                Container(
                  padding:const EdgeInsets.only(left: 5.0,right: 5.0,top: 10.0),
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.white,
                  ) ,
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),bottomLeft:Radius.circular(10.0)),
                              child: Image.network('https://www.bordernaturaltherapies.com.au/wp-content/uploads/2017/07/bananas.jpg',
                                width: 120,
                                height: 90,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Banana',style: TextStyle(color: Colors.grey,fontSize: 20.0,fontWeight:FontWeight.bold),
                                  ),
                                  SizedBox(height: 3,),
                                  Text('Banana',style: TextStyle(color: Colors.grey,fontSize: 12.0,),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(height: 10, width: 40,
                                              child: Image.asset("images/red.png",fit:BoxFit.cover,color:Colors.amber)),
                                          Text('6.99',style: TextStyle(color: Colors.red,fontSize: 10.0,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                      SizedBox(width: 5,),
                                      Column(
                                        children: [
                                          Container(height: 10, width: 40,
                                              child: Image.asset("images/red.png",fit:BoxFit.cover,color:Colors.deepOrange)),
                                          Text('77.99',style: TextStyle(color: Colors.red,fontSize: 10.0,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                      SizedBox(width: 5,),
                                      Column(
                                        children: [
                                          Container(height: 10, width: 40,
                                              child: Image.asset("images/red.png",fit:BoxFit.cover,color:Colors.green)),
                                          Text('888.99',style: TextStyle(color: Colors.red,fontSize: 10.0,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                    ],

                                  )
                                ]
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Price per KG',style: TextStyle(color: Colors.grey,fontSize: 16.0,fontWeight:FontWeight.bold),
                                  ),
                                  SizedBox(height: 3,),
                                  Text('4.99',style: TextStyle(color: Colors.lime,fontSize: 20.0,fontWeight:FontWeight.bold),
                                  ),
                                  SizedBox(height: 5,),
                                ]
                            ),
                          ],
                        ),
                      )
                    ],),
                ),

              ],
            ),
            SizedBox(height: 5,),
            Container(
                  height: 100,
                  margin:EdgeInsets.only(left: 7,right: 7) ,
                  padding:EdgeInsets.zero,
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.white,
                  ) ,
                  child:Row(
                    children:[
                         Padding(
                           padding: const EdgeInsets.only(top: 20),
                           child: ClipRRect(
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),bottomLeft:Radius.circular(10.0)),
                            child: Image.network('https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/b/a/banana-ripe-6-pieces.jpg',
                              width: 90,height:80,),
                                ),
                         ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Column(
                          children: [
                            Container(height: 77, width: 165,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Banana Bananay',style: TextStyle(color: Colors.lime,fontSize: 20.0,fontWeight:FontWeight.bold,),maxLines: 2,),
                                  Text('Chiguita Filipino',style: TextStyle(color: Colors.grey,fontSize: 12.0,),maxLines: 2,),
                              ]),),
                            Container(
                              height: 20, width: 165,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:[
                                  Text('Average market price :',style: TextStyle(color: Colors.grey,fontSize: 10.0,fontWeight:FontWeight.bold),),
                                  SizedBox(width: 3,),
                                  Text('8.99',style: TextStyle(color: Colors.red,fontSize: 10.0,fontWeight:FontWeight.bold),),
                                ],),
                            ),
                          ],),),
                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 10),
                        child: Container(
                          child: Column(
                            children: [
                              Text('Price per KG',style: TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight:FontWeight.bold),),
                              Row(
                                children: [
                                  Text('6.99',style: TextStyle(color: Colors.lime,fontSize: 20.0,fontWeight:FontWeight.bold),
                                  ),
                                  SizedBox(width: 3,),
                                  Text('AED',style: TextStyle(color: Colors.grey,fontSize: 10.0,fontWeight:FontWeight.bold),),
                                ],),
                              SizedBox(height: 5,),
                              Container(
                                height: 30,
                                  decoration: BoxDecoration(
                                    // border:Border.all(color: Colors.lime,width: 3) ,
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),color: Colors.lime),
                                  child: MaterialButton(
                                      onPressed: (){},
                                      child: Text('Add To Cart', style: TextStyle(color: Colors.white,
                                          fontSize: 14, fontWeight: FontWeight.bold),),),
                                  ),
                            ],
                          ),
                        ),
                      ),
                        ],),
                      ),
            SizedBox(height: 5,),
            Container(
              height: 100,
              margin:EdgeInsets.only(left: 7,right: 7) ,
              padding:EdgeInsets.zero,
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.white,
              ) ,
              child:Row(
                children:[
                  Container(height: 100,width: 75,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Container(
                          height: 20,width: 75,transform: Matrix4.rotationZ(-0.2),alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),color: Colors.red[600]),
                            child: Text('Best Seller', style: TextStyle(color: Colors.white,
                                fontSize: 12, fontWeight: FontWeight.bold),),),
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),bottomLeft:Radius.circular(10.0)),
                          child: Image.network('https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/b/a/banana-ripe-6-pieces.jpg',
                            width: 90,height:70,),
                        ),
                      ],),
                  ),
                  SizedBox(width: 12,),
                  Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: Column(
                      children: [
                        Container(height: 77, width: 165,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Banana Bananay',style: TextStyle(color: Colors.lime,fontSize: 20.0,fontWeight:FontWeight.bold,),maxLines: 2,),
                                Text('Chiguita Filipino',style: TextStyle(color: Colors.grey,fontSize: 12.0,),maxLines: 2,),
                              ]),),
                        Container(
                          height: 20, width: 165,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:[
                              Text('Average market price :',style: TextStyle(color: Colors.grey,fontSize: 10.0,fontWeight:FontWeight.bold),),
                              SizedBox(width: 3,),
                              Text('8.99',style: TextStyle(color: Colors.red,fontSize: 10.0,fontWeight:FontWeight.bold),),
                            ],),
                        ),
                      ],),),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 10),
                    child: Container(
                      child: Column(
                        children: [
                          Text('Price per KG',style: TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight:FontWeight.bold),),
                          Row(
                            children: [
                              Text('6.99',style: TextStyle(color: Colors.lime,fontSize: 20.0,fontWeight:FontWeight.bold),
                              ),
                              SizedBox(width: 3,),
                              Text('AED',style: TextStyle(color: Colors.grey,fontSize: 10.0,fontWeight:FontWeight.bold),),
                            ],),
                          SizedBox(height: 5,),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),color: Colors.lime),
                            child: MaterialButton(
                              onPressed: (){},
                              child: Text('Add To Cart', style: TextStyle(color: Colors.white,
                                  fontSize: 14, fontWeight: FontWeight.bold),),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],),
            ),
            SizedBox(height: 5,),
            Container(
              height: 110,
              margin:EdgeInsets.only(left: 7,right: 7) ,
              padding:EdgeInsets.zero,
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.white,
              ) ,
              child:Row(
                children:[
                  Container(height: 110,width: 75,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Container(
                          height: 20,width: 75,transform: Matrix4.rotationZ(-0.2),alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),color: Colors.red[600]),
                          child: Text('Best Seller', style: TextStyle(color: Colors.white,
                              fontSize: 12, fontWeight: FontWeight.bold),),),
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),bottomLeft:Radius.circular(10.0)),
                          child: Image.network('https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/b/a/banana-ripe-6-pieces.jpg',
                            width: 90,height:80,),
                        ),
                      ],),),
                  SizedBox(width: 12,),
                  Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: Column(
                      children: [
                        Container(height: 77, width: 165,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Banana Bananay',style: TextStyle(color: Colors.lime,fontSize: 20.0,fontWeight:FontWeight.bold,),maxLines: 2,),
                                Text('Chiguita Filipino',style: TextStyle(color: Colors.grey,fontSize: 12.0,),maxLines: 2,),
                              ]),),
                        Container(
                          height: 20, width: 165,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:[
                              Text('Average market price :',style: TextStyle(color: Colors.grey,fontSize: 10.0,fontWeight:FontWeight.bold),),
                              SizedBox(width: 3,),
                              Text('8.99',style: TextStyle(color: Colors.red,fontSize: 10.0,fontWeight:FontWeight.bold),),
                            ],),
                        ),
                      ],),),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 10),
                    child: Container(
                      child: Column(
                        children: [
                          Text('Price per KG',style: TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight:FontWeight.bold),),
                          Row(
                            children: [
                              Text('6.99',style: TextStyle(color: Colors.lime,fontSize: 20.0,fontWeight:FontWeight.bold),
                              ),
                              SizedBox(width: 3,),
                              Text('AED',style: TextStyle(color: Colors.grey,fontSize: 10.0,fontWeight:FontWeight.bold),),
                            ],),
                          SizedBox(height: 5,),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(18.0)),color: Colors.lime),
                            child: MaterialButton(
                              onPressed: (){},
                              child: Text('Add To Cart', style: TextStyle(color: Colors.white,
                                  fontSize: 14, fontWeight: FontWeight.bold),),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],),
            ),

          ],),

      ),);

  }
}
