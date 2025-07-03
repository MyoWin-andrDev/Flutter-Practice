import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Row(
        children: [
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Elevated Button"),
                      backgroundColor: Colors.green.shade200,
                    ),
                  );
                },
                child: Text("Elevated Button"),
              ),

              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Text Button")));
                },
                child: Text("Text Button"),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Icon Button")));
                },
                icon: Icon(Icons.send, size: 22.0),
                style: IconButton.styleFrom(
                  side: BorderSide(color: Colors.blueGrey),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("OutLine Button")));
                },
                child: Text("OutLine"),
              ),
              Image.network(
                "https://pngate.com/wp-content/uploads/2025/05/flutter-logo-blue-modern-flat-design-icon-1.png",
                width: 200,
                height: 200,
              ),
              FlutterLogo(size: 200),
              InkWell(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Alarm Clicked")));
                },
                child: Icon(Icons.access_alarm),
              )
            ],
          ),
        ],
      ),
    );
  }
}
