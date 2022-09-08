import 'package:flutter/material.dart';
import 'package:lab_03/screens/first.dart';
import 'package:lab_03/screens/info.dart';

void main() {
  runApp(MaterialApp( theme: ThemeData(fontFamily: 'RussoOne'),
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String age = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Container(
                  width:double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/2.webp"),fit: BoxFit.cover),
           ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 249, 211, 96),
              ),
              width: double.infinity,
              height: 150,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(20),
                width: 50,
                color: Color.fromARGB(255, 19, 1, 182),
                child: Text("THIS IS ROCKET LEAGUE!", style: TextStyle(fontFamily: "Pacifico",fontSize: 40,color: Colors.white),),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    color: Color.fromARGB(255, 19, 1, 182),
                    alignment: Alignment.center,
                    child: Text("enter your age",style: TextStyle(color: Colors.white,fontSize: 24),),
                  ),
                  RadioListTile(
                    title: Text("Above 18",style :TextStyle(color: Color.fromARGB(255, 208, 5, 5),fontSize: 16)),
                    secondary: Icon(Icons.man),
                    value: "above 18",
                    groupValue: age,
                    onChanged: (value) {
                      setState(() {
                        age = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("Under 18",style :TextStyle(color: Colors.blue,fontSize: 16)),
                    secondary: Icon(Icons.man),
                    value: "under 18",
                    groupValue: age,
                    onChanged: (value) {
                      setState(() {
                        age = value.toString();
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              width: 50,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle( 
                   alignment: Alignment.center,backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 91, 90, 90))
                ),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const First(),
                          ));
                    });
                  },
                  child: Text("Information")),
            ),

            SizedBox(height:20),
             Container(
              width: 50,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle( 
                   alignment: Alignment.center,backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 91, 90, 90))

                ),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Info(),
                          ));
                    });
                  },
                  child: Text("Customize")),
            )
          ],
        ),
      ),
    );
  }
}
