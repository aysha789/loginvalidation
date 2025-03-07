import 'package:flutter/material.dart';
import 'package:loginvalidation/database_local.dart';
import 'package:loginvalidation/home_sreen.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: ()async{
              await AppLocalData().dataDeletfun(key: "login");
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LogIn()));
            }, child: Text("Logout")),
          )
        ],
      ),
    );
  }
}
