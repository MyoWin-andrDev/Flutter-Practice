import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          Icon(Icons.home),
          IconButton(
              onPressed: () => print("Person Btn Clicked"),
              icon: Icon(Icons.person))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            Text("Home Page"),
            ElevatedButton(
                onPressed : (){
                  Navigator.pushNamed(context, '/About');
                },
                child: Text("Go To About Page"))
          ],
        ),
      ),
    );
  }
}