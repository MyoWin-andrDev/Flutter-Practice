
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_flutter/3_8_Routing/main.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Chapter_4(),
  ));
}

class Chapter_4 extends StatefulWidget {
  const Chapter_4({super.key});

  @override
  State<Chapter_4> createState() => Container_Decro();
}

class Container_Decro extends State<Chapter_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Colors.green),
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(10, 5),
                    blurRadius: 5
                  )
                ]
              ),
              child: Text(
                data = "Hello Flutter",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          )),
    );
  }
}
