import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_flutter/3_12_Split/About.dart';
import 'package:simple_flutter/3_12_Split/Contact.dart';
import 'package:simple_flutter/3_12_Split/Home.dart';
import 'package:simple_flutter/3_12_Split/SnackBar.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/Home' : (context) => Home(),
        '/About' : (context) => About(),
        '/Snack' : (context) => SnackBarPractise(),
        '/' : (context) => Contact()
      },
    )
  );
}