import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ItemsScreen extends StatefulWidget {
  @override
  _ItemsScreen createState() => _ItemsScreen();
}

class _ItemsScreen extends State<ItemsScreen> {

  int _counter = 0;

  @override
  void initState()
  {
    super.initState();
  }

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


  var imageList =[
    "https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/b/a/banana-organic-1kg.jpg",
    "https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/a/p/apple-royal-gala-1-kg-1kg.jpg",
    "https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/p/a/papaya-srilanka.jpg",
    "https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/f/r/fresh-mandarin-murcott-1.jpg",
    "https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/w/a/watermelon-1piece.jpg",
    "https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/k/i/kiwi-500gms.jpg",
    "https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/c/o/coconut-brown.jpg",
    "https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/g/r/green-apple-fresh-washed-and-sanitized.jpg",
  ];

  var nameList =[
    "Banana Organic",
    "Apple Royal",
    "Papaya",
    "Mandarins",
    "Watermelons",
    "Kiwis",
    "Coconut Brown",
    "Green Apple",
  ];

  var country1List =[
    "Ecuador",
    "Chile - Gala",
    "Sri Lanka",
    "Spain",
    "Iran",
    "Chile",
    "Ecuador",
    "Usa",
  ];

  var marketPriceList =[
    "7.50",
    "8.50",
    "13.00",
    "5.25",
    "2.50",
    "8.50",
    "3.50",
    "7.50",

  ];

  var perList =[
    "KG",
    "KG",
    "Piece",
    "KG",
    "KG",
    "KG",
    "Piece",
    "Piece",
  ];

  var priceList =[
    "5.50",
    "5.70",
    "8.50",
    "3.50",
    "1.30",
    "6.50",
    "1.50",
    "5.00",
  ];

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
            Container(
              height: 65,
              alignment: AlignmentDirectional.centerStart,
              color: Colors.white,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index)=> buildSortItem(),
                  separatorBuilder: (context, index)=> SizedBox(width: 10,),
                  itemCount: 15),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index){
                    return GestureDetector(
                      onTap: (){
                        // showDialogFunc(context, imageList[index], nameList[index], country1List[index],perList[index],priceList[index],_minusCounter , _incrementCounter , _counter);
                        showDialog(
                          context: context,
                          builder: (context)
                          {
                            return Center(
                              child: Material(
                                type: MaterialType.transparency,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  height: 370, width: MediaQuery.of(context).size.width * 0.7,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: double.infinity,
                                        child:Text(nameList[index],style: TextStyle(color: Colors.lime,fontSize: 20.0,fontWeight:FontWeight.bold,)),),
                                      Container(
                                        height: 120,
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 120,
                                                // width: MediaQuery.of(context).size.width * 0.32,
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(5),
                                                  child: Image.network(imageList[index], width: 120, height: 120,),),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 120,
                                                // width: MediaQuery.of(context).size.width * 0.32,
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 30,),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text('Price per ',style: TextStyle(color: Colors.grey,fontSize: 16.0,fontWeight:FontWeight.bold),),
                                                        Text(perList[index],style: TextStyle(color: Colors.amber,fontSize: 16.0,fontWeight:FontWeight.bold),),],),
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.baseline,
                                                      textBaseline: TextBaseline.alphabetic,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(priceList[index],style: TextStyle(color: Colors.lime,fontSize: 27.0,fontWeight:FontWeight.bold),),
                                                        SizedBox(width: 5,),
                                                        Text('AED',style: TextStyle(color: Colors.grey,fontSize: 16.0,fontWeight:FontWeight.bold),),],),
                                                  ],),
                                              ),
                                            ),
                                          ],),),
                                      Container(height: 50,
                                        width: double.infinity,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          textBaseline: TextBaseline.alphabetic,
                                          children: [
                                            IconButton(
                                              padding: EdgeInsets.zero,
                                              iconSize: 50,
                                              color: Colors.lime,
                                              onPressed: _incrementCounter,
                                              icon: Icon(Icons.add_circle_outlined),),
                                            Text('$_counter',style: TextStyle(color: Colors.grey,fontSize: 40.0,fontWeight:FontWeight.bold,),),
                                            IconButton(
                                              padding: EdgeInsets.zero,
                                              iconSize: 50,
                                              color: Colors.lime,
                                              onPressed: _minusCounter,
                                              icon: Icon(Icons.remove_circle_outlined,),),
                                          ],),),
                                      Container(height: 50,)
                                    ],),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 100,
                        margin:EdgeInsets.only(left: 7,right: 7) ,
                        padding:EdgeInsets.zero,
                        decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.white,
                        ) ,
                        child:Row(
                          children:[
                            Container(height: 100,width: 110,
                              child: Column(
                                children: [
                                  // SizedBox(height: 10,),
                                  // Container(
                                  //   height: 20,width: 75,transform: Matrix4.rotationZ(-0.2),alignment: Alignment.center,
                                  //   decoration: BoxDecoration(
                                  //       borderRadius: BorderRadius.all(Radius.circular(5.0)),color: Colors.red[600]),
                                  //   child: Text('Best Seller', style: TextStyle(color: Colors.white,
                                  //       fontSize: 12, fontWeight: FontWeight.bold),),),
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),bottomLeft:Radius.circular(10.0)),
                                    child: Image.network(imageList[index],
                                      width: 110,height:100,),
                                  ),
                                ],),
                            ),
                            // SizedBox(width: 12,),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Column(
                                children: [
                                  Container(height: 50, width: 160,
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(nameList[index],style: TextStyle(color: Colors.lime,fontSize: 20.0,fontWeight:FontWeight.bold,)),
                                          Text(country1List[index],style: TextStyle(color: Colors.grey,fontSize: 12.0,)),
                                        ]),),

                                  Container(
                                    height: 20, width: 160,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children:[
                                        Text('Average market price :',style: TextStyle(color: Colors.grey,fontSize: 10.0,fontWeight:FontWeight.bold),),
                                        SizedBox(width: 3,),
                                        Text(marketPriceList[index],style: TextStyle(color: Colors.red,fontSize: 10.0,fontWeight:FontWeight.bold),),
                                      ],),
                                  ),
                                ],),),
                            Padding(
                              padding: const EdgeInsets.only(top: 17,left: 2),
                              child: Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('Price per ',style: TextStyle(color: Colors.grey,fontSize: 12.0,fontWeight:FontWeight.bold),),
                                        Text(perList[index],style: TextStyle(color: Colors.amber,fontSize: 12.0,fontWeight:FontWeight.bold),),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.baseline,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: [
                                        Text(priceList[index],style: TextStyle(color: Colors.lime,fontSize: 18.0,fontWeight:FontWeight.bold),
                                        ),
                                        SizedBox(width: 3,),
                                        Text('AED',style: TextStyle(color: Colors.grey,fontSize: 9.0,fontWeight:FontWeight.bold),),
                                      ],),
                                    SizedBox(height: 5,),
                                    Container(
                                      height: 25,
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
                          ],),),
                    );
                  },
                  separatorBuilder: (context, index)=> SizedBox(height: 10,),
                  itemCount: nameList.length),
            ),
          ],),
      ),);

  }
}

Widget buildSortItem() =>
    Container(
      width:50 ,
      alignment: AlignmentDirectional.centerStart,
      child: Column(
        children: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.fastfood_outlined),iconSize: 35.0,color: Colors.grey[350],),
          Text('AtoZ',style: TextStyle(color: Colors.lime,fontSize: 11.0,fontWeight:FontWeight.bold,height:0.6),),
        ],),
    );



// showDialogFunc(context,image,name,country,per,price,minus,increment,counter) {
//   return showDialog(
//     context: context,
//     builder: (context)
//     {
//       return Center(
//         child: Material(
//           type: MaterialType.transparency,
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.white,
//             ),
//             padding: EdgeInsets.all(10),
//             height: 370, width: MediaQuery.of(context).size.width * 0.7,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   alignment: Alignment.center,
//                   height: 30, width: MediaQuery.of(context).size.width * 0.7,
//                   child:Text(name,style: TextStyle(color: Colors.lime,fontSize: 20.0,fontWeight:FontWeight.bold,)),),
//                 Container(
//                   height: 120, width: MediaQuery.of(context).size.width * 0.7,
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 120, width: MediaQuery.of(context).size.width * 0.325,
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(5),
//                           child: Image.network(image, width: 120, height: 120,),),
//                       ),
//                        Container(
//                          height: 120, width: MediaQuery.of(context).size.width * 0.325,
//                          child: Column(
//                           children: [
//                             SizedBox(height: 30,),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                              children: [
//                                Text('Price per ',style: TextStyle(color: Colors.grey,fontSize: 18.0,fontWeight:FontWeight.bold),),
//                                Text(per,style: TextStyle(color: Colors.amber,fontSize: 18.0,fontWeight:FontWeight.bold),),],),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                              children: [
//                                Text(price,style: TextStyle(color: Colors.lime,fontSize: 27.0,fontWeight:FontWeight.bold),),
//                                SizedBox(width: 5,),
//                                Text('AED',style: TextStyle(color: Colors.grey,fontSize: 16.0,fontWeight:FontWeight.bold),),],),
//                           ],),
//                        ),
//                     ],),),
//                 Container(height: 60, width: MediaQuery.of(context).size.width * 0.7,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       IconButton(
//                         padding:EdgeInsets.zero ,
//                         onPressed: increment,
//                         icon: Text('+',style:TextStyle(color: Colors.lime,fontSize: 40.0,fontWeight:FontWeight.bold,height:0.9),),),
//                       // Icon(Icons.add_circle_outline_outlined,color: Colors.lime,size: 50,),),
//                       Text('$counter',style: TextStyle(color: Colors.grey,fontSize: 25.0,fontWeight:FontWeight.bold,height: 0.9),),
//                       IconButton(
//                         onPressed: minus,
//                         icon: Text('-',style:TextStyle(color: Colors.lime,fontSize: 50.0,fontWeight:FontWeight.bold,height:0.52),),),
//                     ],),),
//                   ],),
//                 ),
//             ),
//           );
//     },
//   );
//
// }