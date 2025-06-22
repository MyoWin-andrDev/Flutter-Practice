import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_flutter/3_12_Split/About.dart';
import 'package:simple_flutter/3_12_Split/Home.dart';
import 'package:simple_flutter/3_12_Split/contact.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/Home' : (context) => Home(),
        '/About' : (context) => About(),
        '/' : (context) => Contact()
      },
    )
  );
}