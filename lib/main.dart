import 'package:flutter/material.dart';
import '/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _checkFlag = false;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Play Skate App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage()
    );
  }

}