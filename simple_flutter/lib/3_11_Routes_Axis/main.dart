import 'package:flutter/material.dart';

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

