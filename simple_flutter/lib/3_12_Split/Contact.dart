import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                border: Border.all(width: 2, color: Colors.green)
              ),
              child: Text("Hello Flutter"),
            ),
          )
      ),
    );
  }
}
