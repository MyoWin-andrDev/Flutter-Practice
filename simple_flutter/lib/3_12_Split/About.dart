import 'package:flutter/material.dart';

class About extends StatelessWidget {
  var name, num;
  About({this.name, this.num});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Name is $name",
                style: TextStyle(
                  fontSize: 20
                ),
            ),
            SizedBox(height: 20),
            Text(
                "Num is $num",
                style: TextStyle(
                  fontSize: 20
                ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/');
                },
                child: Text("Go To Home Page"))
          ],
        ),
      ),
    );
  }
}