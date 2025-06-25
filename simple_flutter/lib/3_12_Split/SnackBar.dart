import 'package:flutter/material.dart';

class SnackBarPractise extends StatefulWidget {
  const SnackBarPractise({super.key});

  @override
  State<SnackBarPractise> createState() => _SnackBarPractiseState();
}

class _SnackBarPractiseState extends State<SnackBarPractise> {
  var count = 0;
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: (){
                  count++;
                  setState((){});
                },
                icon: Icon(Icons.add)),
            Text(
              "Count is $count"
            ),
            IconButton(
                onPressed: (){
                  if(count > 0){
                    count--;
                    setState((){});
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar( content : Text("Can't Lower than 0"))
                    );
                  }
                },
                icon: Icon(Icons.remove))
          ],
        ),
      ),
    );
  }
}
