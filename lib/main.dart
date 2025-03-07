import 'package:flutter/material.dart';
import 'package:loginvalidation/splash_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      home: SplashScreen(),
    );
  }
}

