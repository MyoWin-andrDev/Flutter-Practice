import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_flutter/Pages/Flash.dart';
import 'package:simple_flutter/Pages/Home.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/":(context) => Home(),
      "/flash" : (context) => Flash()
    },
    )
  );
}