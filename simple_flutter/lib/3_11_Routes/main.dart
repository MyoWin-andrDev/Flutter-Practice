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
      body: Column(
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
      body: Row(
        children: [
          Text("About Page"),
          ElevatedButton(
              onPressed: (){ Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home()));},
              child: Text("Go To Home Page"))
        ],
      ),
    );
  }
}

