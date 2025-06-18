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
          child: Column(
            children: [
              Text("Home Page"),
              ElevatedButton(
                  onPressed : (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => About()));
                  },
                  child: Text("Go To About Page"))
            ],
          )),
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
            children: [
              Text("About Page"),
              ElevatedButton(
                  onPressed: (){ Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home()));},
                  child: Text("Go To Home Page"))
            ],
          )),
    );
  }
}

