import 'package:vegefruiter/vegefruiter/home/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vegefruiter/vegefruiter/login/Register_Page1.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.image,
    required this.body,
    required this.title,
  });

}
class OnBoarding extends StatefulWidget {

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
        image: ('images/1.png'),
        title: ('How To use 1'),
        body: ('How To use 1 descriptions and details')
    ),
    BoardingModel(
        image: ('images/2.png'),
        title: ('How To use 2'),
        body: ('How To use 2 descriptions and details')
    ),
    BoardingModel(
        image: ('images/3.png'),
        title: ('How To use 3'),
        body: ('How To use 3 descriptions and details')
    ),
    BoardingModel(
        image: ('images/4.png'),
        title: ('How To use 4'),
        body: ('How To use 4 descriptions and details')
    ),
  ];

  bool isLast = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [TextButton(
            onPressed:(){Navigator.push(context, MaterialPageRoute(builder:(context)=>Homepage(),),);},
            child: Text('Skip',style: TextStyle(color: Colors.grey[600],fontSize: 18,fontWeight:FontWeight.bold ),),)
          ],
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  controller: boardController,
                  onPageChanged: (int index) {
                    if (index == boarding.length - 1) {setState(() {isLast = true;});}
                    else {setState(() {isLast = false;});}
                  },
                  itemBuilder: (context,index)=> buildBorderItems(boarding[index]),
                  itemCount: boarding.length,
                ),
              ),
              Row(
                children: [
                  SmoothPageIndicator(
                    controller:boardController ,
                    effect: ExpandingDotsEffect(
                      dotColor: Colors.grey ,
                      activeDotColor: Colors.lime,
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 10,
                      expansionFactor: 4,

                    ),
                    count:boarding.length,
                  ),
                  Spacer(),
                  FloatingActionButton(

                    backgroundColor: Colors.lime,
                    onPressed: ()
                    {
                      if(isLast){Navigator.push(context, MaterialPageRoute(builder:(context)=>RegisterScreen1(),),);}
                      else {
                        boardController.nextPage(
                          duration: Duration(milliseconds: 750),
                          curve: Curves.fastLinearToSlowEaseIn,
                        );
                      }
                    },
                    child: Icon(Icons.arrow_forward_ios,color:Colors.grey[600] ,),
                  ),
                ],
              )
            ],
          ),
        )

    );
  }

  Widget buildBorderItems (BoardingModel model)=>Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Image(
            image: AssetImage('${model.image}')),
      ),
      SizedBox(
        height: 5,),
      Text
        ('${model.title}',style:TextStyle(fontSize: 25,color: Colors.lime,fontWeight:FontWeight.bold)),
      SizedBox(
        height: 25,),
      Text
        ('${model.body}',style:TextStyle(fontSize: 18,color: Colors.grey[600],fontWeight:FontWeight.bold)),
      SizedBox(
        height: 140,),



    ],
  );
}
