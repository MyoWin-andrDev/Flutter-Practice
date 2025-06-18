import 'package:flutter/material.dart';

var data = "I am developing Flutter App";
var text = Text(
  data,
  style: TextStyle(
      backgroundColor : Colors.red[900],
      fontSize: 40,
      color: Colors.yellow,
      fontStyle: FontStyle.italic
  ),
);


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home : About()
    )
  );
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Text("Home Page")),
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Text("About Page")),
    );
  }
}
