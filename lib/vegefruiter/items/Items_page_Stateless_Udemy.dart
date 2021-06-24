import 'package:flutter/material.dart';
import 'package:vegefruiter/vegefruiter/home/Cart_Page.dart';

class itemsModel {
  final int ID;
  final String image;
  final String name;
  final String brand;
  final String marketPrice;
  final String per;
  final String price;

  itemsModel({
    required this.ID,
    required this.image ,
    required this.name ,
    required this.brand ,
    required this.marketPrice,
    required this.per ,
    required this.price ,
  });
}
class ItemsScreenF extends StatelessWidget {

  List<itemsModel> fruits = [
    itemsModel(
      ID:1,
      image:"https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/b/a/banana-organic-1kg.jpg",
      name:"Banana Organic",
      brand:"ECUADOR",
      marketPrice: "7.5",
      per:"KG",
      price :"5.5",
    ),
    itemsModel(
      ID:2,
      image:"https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/a/p/apple-royal-gala-1-kg-1kg.jpg",
      name:"Apple Royal",
      brand:"CHILE - Gala",
      marketPrice :"8.5",
      per:"KG",
      price :"5.7",
    ),
    itemsModel(
      ID:3,
      image:"https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/p/a/papaya-srilanka.jpg",
      name:"Papaya",
      brand:"SRI LANKA",
      marketPrice :"13",
      per:"Piece",
      price :"8.5",
    ),
    itemsModel(
      ID:4,
      image:"https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/f/r/fresh-mandarin-murcott-1.jpg",
      name:"Mandarins",
      brand:"SPAIN",
      marketPrice :"5.25",
      per:"KG",
      price :"3.5",
    ),
    itemsModel(
      ID:5,
      image:"https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/w/a/watermelon-1piece.jpg",
      name:"Watermelons",
      brand:"IRAN",
      marketPrice :"2.5",
      per:"KG",
      price :"1.3",
    ),
    itemsModel(
      ID:6,
      image:"https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/k/i/kiwi-500gms.jpg",
      name:"Kiwis",
      brand:"CHILE",
      marketPrice :"8.5",
      per:"KG",
      price :"6.5",
    ),
    itemsModel(
      ID:7,
      image:"https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/c/o/coconut-brown.jpg",
      name:"Coconut Brown",
      brand:"ECUADOR",
      marketPrice :"3.5",
      per:"Piece",
      price :"1.5",
    ),
    itemsModel(
      ID:8,
      image:"https://barakatfresh.ae/media/catalog/product/cache/26275749e1734ff7cccd7403928b68bd/g/r/green-apple-fresh-washed-and-sanitized.jpg",
      name:"Green Apple",
      brand:"USA",
      marketPrice :"7.5",
      per:"KG",
      price :"5",
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          elevation: 0,
          backgroundColor: Colors.lime,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_outlined),iconSize: 35.0,),
          title:Text('Fruits',style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight:FontWeight.bold),),
          centerTitle: true,
          actions:[
            Stack(
                children:[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart_outlined),iconSize: 50.0,),
                  Positioned(
                    child: Container(
                      alignment: Alignment.center,
                      height: 26,width: 26,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Text('12',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    left: 20,top: 3,
                  )
                ]),
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
                    separatorBuilder: (context, index)=> SizedBox(height: 10,),
                    itemCount: fruits.length,
                    itemBuilder: (context, index)=>buildItemsList(fruits[index]),

                  ),
                ),
                Container(
                  height: 70,width: MediaQuery.of(context).size.width,color: Colors.lime,
                  padding: const EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),

                  child: Container(
                    height: 50,width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),color: Colors.white),
                    child: MaterialButton(
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Cartpage(),),);},

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart_outlined,size: 30,color: Colors.lime,),
                          Text('My Cart', style: TextStyle(color: Colors.lime,
                              fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Container(
                            alignment: Alignment.center,
                            height: 35,width: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: Text('12',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                          ),
                          SizedBox(width: 10,),
                          Text('items',style: TextStyle(color: Colors.lime,fontSize: 20.0,fontWeight:FontWeight.bold),)
                        ],),
                    ),
                  )
                  , ),
              ] ),
        )
    );

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

Widget buildItemsList(itemsModel items) =>
    GestureDetector(
      onTap: (){},
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
                    child: Image.network(items.image,
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
                          Text(items.name,style: TextStyle(color: Colors.lime,fontSize: 20.0,fontWeight:FontWeight.bold,)),
                          Text(items.brand,style: TextStyle(color: Colors.grey,fontSize: 12.0,)),
                        ]),),

                  Container(
                    height: 20, width: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Text('Average market price :',style: TextStyle(color: Colors.grey,fontSize: 10.0,fontWeight:FontWeight.bold),),
                        SizedBox(width: 3,),
                        Text(items.marketPrice,style: TextStyle(color: Colors.red,fontSize: 10.0,fontWeight:FontWeight.bold),),
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
                        Text(items.per,style: TextStyle(color: Colors.amber,fontSize: 12.0,fontWeight:FontWeight.bold),),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(items.price,style: TextStyle(color: Colors.lime,fontSize: 18.0,fontWeight:FontWeight.bold),
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

