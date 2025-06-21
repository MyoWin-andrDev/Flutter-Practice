import 'package:flutter/material.dart';
import 'package:simple_flutter/3_12_Split/About.dart';

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment : MainAxisAlignment.center,
            children: [
              Text(
                  "Home Page",
                  style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'English'
                ),
              ),
              ElevatedButton(
                  onPressed : (){
                   // Navigator.pushNamed(context, '/About');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => About(name: "Ezekiel", num: 11)
                    ));
                  },
                  child: Text(
                      "Go To About Page",
                    style: TextStyle(
                      fontFamily: 'English'
                    ),
                  )),
              Text(
                'ယခု စာမျက်နှာ သည် Lorem ipsum များကို မြန်မာ Version အနေနဲ့ ထုတ်ပေးထားခြင်းဖြစ်ပါသည်။ စာပိုဒ် (၅) ပိုဒ်ပါ၀င်ပြီး စာပိုဒ် တစ်ခုချင်းစီတွင် ၀ါကျ (၅) ခုမှ (၆) အထိပါ၀င်ပါသည်။ စာလုံးတိုင်းတွင် လူသုံးနည်းသော ပါဠိ စာတစ်၀က် နှင့် လူသုံးများသော မြန်မာစာ တစ်၀က် ပါ၀င် ပါသည်။ ပါ၀င်သော ပါဠိစာများသည် ပုံမှန် စာဖတ်သူများ အတွက် ဖတ်ရှုရန် ခက်ခဲသော စာများဖြစ်စေပါသည်။ pseudo-sentence စာများကို generate လုပ်သည့် အဆင့် တစ်ဆင့်စီကို အောက်ပါစာပိုဒ်တွင် ဖော်ပြထားပါသည်။',
                style: TextStyle(
                  fontFamily: 'Burmese'
                ),
              ),
              SizedBox(height: 20,),
              Image.asset(
                  'assets/images/flutterLogo.png',
                width: 300,
                height: 300,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            print("U Clicked Me !!!");
          },
          child: Icon(Icons.add),
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label : "About",
                icon: Icon(Icons.person)),
            BottomNavigationBarItem(
                label: "Register",
                icon: Icon(Icons.app_registration))
          ],
          onTap: (ind){
            print(ind.toString());
          },
      ),
    );
  }
}