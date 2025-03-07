import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:loginvalidation/database_local.dart';
import 'package:loginvalidation/home_page.dart';
import 'package:loginvalidation/home_sreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashFun()async{
    await Future.delayed(const Duration(seconds: 5));
   var a= await AppLocalData().dataGetfun(key: "name");
   log("$a");
   if(a=="yes"){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Mainpage()));
   }
   else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LogIn()));
   }

  }
  @override
  void initState() {
    splashFun();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(child: Image.network("https://marketplace.canva.com/EAFLU7Mm3FI/1/0/1600w/canva-brown-and-beige-simple-minimalist-coffee-shop-circle-logo-ww1u6OsW_3o.jpg",))
       ,
    );
  }
}
