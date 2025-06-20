import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("About Page"),
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