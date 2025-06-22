import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: (){
                  count++;
                  setState(() {

                  });
                },
                icon: Icon(Icons.add)),
            Text(
              "Count is $count"
            ),
            IconButton(
                onPressed: (){
                  if(count > 0){
                    count--;
                    setState(() {

                    });
                  }
                },
                icon: Icon(Icons.remove))
          ],
        ),
      ),
    );
  }
}
