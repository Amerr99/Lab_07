import 'package:flutter/material.dart';
import 'package:lab_03/main.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  List devices = ["PS5", "PC", "Phone", "Xbox"];
  String mySelected = "PS5";
  String level ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors:[Colors.amber,Colors.purple])),
        
      child: ListView(
        children: [
          
          // Container(
          //   child: Image(image: NetworkImage(""),),
          // ),
Center(child: Text("choose your platform",style: TextStyle(fontSize: 44,fontFamily: 'AmaticSC',fontWeight: FontWeight.bold),),),
          DropdownButton(
              items: devices
                  .map((e) => DropdownMenuItem(value: e, child: Text("${e}")))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  mySelected=value.toString();
                });
              }, value: mySelected,),
                 
                const SizedBox(height: 20,),
        Container(
              child: Text("What level are you in",style: TextStyle(fontSize: 24,fontFamily: 'AmaticSC',fontWeight: FontWeight.bold)),
            ),
            RadioListTile(
              title: Text("Beginner",style: TextStyle(fontSize: 16,fontFamily: 'AmaticSC',fontWeight: FontWeight.bold)),
              value: "beginner", groupValue: level, onChanged: (value) {
              setState(() {
                level=value.toString();
              });
            },),
            RadioListTile(
              title: Text("Expert",style: TextStyle(fontSize: 16,fontFamily: 'AmaticSC',fontWeight: FontWeight.bold)),
              value: "Expert", groupValue: level, onChanged: (value) {
              setState(() {
                level=value.toString();
              });
            },),
            RadioListTile(
              title: Text("Professional",style: TextStyle(fontSize: 16,fontFamily: 'AmaticSC',fontWeight: FontWeight.bold)),
              value: "Professional", groupValue: level, onChanged: (value) {
              setState(() {
                level=value.toString();
              });
            },),
            SizedBox(height: 100,),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      },
                    ));
                  });
                },
                child: const Text("return")),
        ],
      ),
    ));
  }
}
