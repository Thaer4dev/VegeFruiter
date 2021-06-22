import 'package:flutter/material.dart';
import 'package:vegefruiter/vegefruiter/home/Home_Page.dart';

class RegisterScreen2 extends StatefulWidget {
  @override
  _RegisterScreen2State createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
  var areaController = TextEditingController();
  var buildingController = TextEditingController();
  var flatController = TextEditingController();
  var defaultColor = Colors.lime;

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;
  void passwordVisibility()=> setState(() => isPassword = !isPassword);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('LOCATION', style: TextStyle(color: Colors.lime,fontSize: 25,fontWeight: FontWeight.bold)
                    ),
                    Text('kindly fill address details (for delivery)', style: TextStyle(color: Colors.grey[700],fontSize: 13,)
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      controller: areaController,
                      keyboardType: TextInputType.text,
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'you must fill your area';
                        }
                        return null;
                      },
                      decoration: InputDecoration(

                        labelText: 'Area',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.lime)),
                        prefixIcon: Icon(Icons.add_location_alt_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: buildingController,
                      keyboardType: TextInputType.text,
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'you must fill your building name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Building Name',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.lime)),
                        prefixIcon: Icon(Icons.account_balance),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: flatController,
                      keyboardType: TextInputType.number,
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'you must fill your flat No.';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Flat Number',
                        prefixIcon: Icon(Icons.water_damage_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text("press to choice the category",style:TextStyle(color: Colors.lime,fontSize: 15,)),
                        Spacer(),
                        FloatingActionButton(

                          backgroundColor: Colors.lime,
                          onPressed: (){
                            if(formKey.currentState!.validate())
                            {
                              print(areaController.text);
                              print(buildingController.text);
                              print(flatController.text);
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>Homepage(),),);
                            }
                          },
                          child: Icon(Icons.arrow_forward_ios,color:Colors.grey[600] ,),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}

