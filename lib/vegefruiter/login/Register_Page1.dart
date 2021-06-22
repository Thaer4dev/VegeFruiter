import 'package:flutter/material.dart';
import 'package:vegefruiter/vegefruiter/login/Register_Page2.dart';

class RegisterScreen1 extends StatefulWidget {
  @override
  _RegisterScreen1State createState() => _RegisterScreen1State();
}

class _RegisterScreen1State extends State<RegisterScreen1> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();


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
                    Text('REGISTERING', style: TextStyle(color: Colors.lime,fontSize: 25,fontWeight: FontWeight.bold)
                    ),
                    Text('kindly fill your registering information', style: TextStyle(color: Colors.grey[700],fontSize: 13,)
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'you must fill your name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(

                        labelText: 'Full Name',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.lime)),
                        prefixIcon: Icon(Icons.account_circle),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'you must fill Email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.lime)),
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: isPassword,
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'you must fill password';
                        }
                        else if(value.length<3){
                          return 'your password is too short';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: passwordVisibility,
                          icon: isPassword ?Icon(Icons.visibility_off) : Icon(Icons.visibility) ,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text("press to complete your registration",style:TextStyle(color: Colors.lime,fontSize: 15,)),
                        Spacer(),
                        FloatingActionButton(

                          backgroundColor: Colors.lime,
                          onPressed: (){
                            if(formKey.currentState!.validate())
                            {
                              print(nameController.text);
                              print(emailController.text);
                              print(passwordController.text);
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>RegisterScreen2(),),);
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

