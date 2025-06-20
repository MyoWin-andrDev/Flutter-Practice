import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_flutter/3_12_Split/About.dart';
import 'package:simple_flutter/3_12_Split/Home.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Home(),
        '/About' : (context) => About()
      },
    )
  );
}