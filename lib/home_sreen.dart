

import 'dart:developer';

import 'package:flutter/material.dart';


class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final mykey= GlobalKey<FormState>();
  bool isDesable= true;
  TextEditingController emailcontroller= TextEditingController();
  TextEditingController passwordcontroller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Form(
              key:mykey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text('Email',style:TextStyle(fontSize: 25)),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: emailcontroller,
                     validator:(value){
                      if(value== null || value== ""){
                        return "can not empty";
                      }else if(!value.contains('@') || !value.contains('.')){
                        return"Invalid email";
                      }
                      return null;
                     },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                
                        ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(10))
                       ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text('Password',style:TextStyle(fontSize: 25)),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller:passwordcontroller,
                      validator: (value){
                        if(value== null || value==""){
                          return "Can not empty";
                        }else if(value.length<8){
                          return"Minimum 7 digit required";
                        }else if(
                        !((RegExp('[a-z]')).hasMatch(value) && ((RegExp('[A-Z]')).hasMatch(value)) &&
                            (RegExp('[1-3]')).hasMatch(value))){
                          return"Not strong password";
                        }
                      },
                      obscureText: isDesable,
                      decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: (){
                              isDesable = !isDesable;
                              setState(() {});
                            },
                              child:isDesable==true ? Icon(Icons.visibility):Icon(Icons.visibility_off)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        focusedBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                
                        ),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10)
                       )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      Checkbox(value: true, onChanged:(value){}),
                      Text('Remember me',style: TextStyle(
                        fontSize: 20
                      ),)
                    ],),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        log("${emailcontroller.text}");
                         if(!mykey.currentState!.validate()){
                          return;
                         }
                        if(emailcontroller.text =="aysha@gmail.com" && passwordcontroller.text == "Aysha123"){
                          log("login success");
                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("login sucess")));
                        }else{
                          log("Not success");
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.red,
                              content: Text('Wrong user.Please try again')));
                        }

                      },
                      child: Row(
                        children: [
                          SizedBox(
                            height: 70,
                            width: 510,
                            child: Card(
                              color: Colors.pinkAccent,
                              child: Center(
                                  child:  Padding(
                                padding:  EdgeInsets.all(15.0),
                                child: Text(
                                  'Login',
                                  style:  TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Center(
                      child: Text('----------Or Login with----------',style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                    ),
                    SizedBox(height: 20,),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          margin: EdgeInsets.all(10),
                          elevation: 2,
                          child:Row(
                            children: [
                              Image.network("https://www.polymtl.ca/calendrier/sites/calendrier.amigow2020.polymtl.ca/files/googlelogo.jpg",
                              height: 70,width: 70,)
                            ],
                          ),
                        ),
                          Card(
                            margin: EdgeInsets.all(10),
                            elevation: 2,
                            child:Row(
                              children: [
                                Image.network("https://static.vecteezy.com/system/resources/previews/013/901/773/original/facebook-icon-ios-facebook-social-media-logo-on-white-background-free-free-vector.jpg",
                                  height: 70,width: 70,)
                              ],
                            ),
                        ),
                        Card(
                          margin: EdgeInsets.all(10),
                          elevation: 2,
                          child:Row(
                            children: [
                              Image.network("https://static.vecteezy.com/system/resources/previews/024/170/870/original/instagram-icon-logo-symbol-free-png.png",
                                height: 70,width: 70,)
                            ],
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(10),
                          elevation: 2,
                          child:Row(
                            children: [
                             Image.network("https://www.kindpng.com/picc/m/20-203688_twitter-icon-transparent-background-twitter-logo-hd-png.png",
                                height: 70,width: 70,)
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
