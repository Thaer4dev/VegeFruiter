import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  Text('LOGIN', style: Theme
                      .of(context)
                      .textTheme
                      .headline5,
                  ),
                  Text('Login now to make order', style: Theme
                      .of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.grey)
                  ),
                  SizedBox(
                    height: 30.0,
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
                    height: 30.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    color: Colors.lime,
                    child: MaterialButton(
                      onPressed: (){
                        if(formKey.currentState!.validate())
                        {
                          print(emailController.text);
                          print(passwordController.text);
                        }
                      },
                      child: Text('LOGIN', style: TextStyle(color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),),

                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account ?"),
                      TextButton(onPressed: () {},
                        child: Text('Register Now',
                            style: TextStyle(color: Colors.lime,)),)
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

