import 'package:flutter/material.dart';

void main(){
  runApp(MySTL());
}

class MySTL extends StatelessWidget {
  const MySTL({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySTF(),
    );
  }
}

class MySTF extends StatefulWidget {
  const MySTF({super.key});

  @override
  State<MySTF> createState() => _MySTFState();
}

class _MySTFState extends State<MySTF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              AppBar(
                title: Text("Android Dev"),
                actions: [
                  ElevatedButton(onPressed: (){}, child: Text("Button"))
                ],
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text("Button 1"),
                style: ElevatedButton.styleFrom(backgroundColor : Colors.blue),
              ),
              SizedBox(height: 16),
              ElevatedButton(onPressed: (){}, child: Text("Button 2"))
            ],
          )
      )
    );
  }
}

