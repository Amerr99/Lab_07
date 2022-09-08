import 'package:flutter/material.dart';
import 'package:lab_03/main.dart';

class Info extends StatefulWidget {
  const Info({super.key});
  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  bool mode1 = false;
  bool mode2 = false;
  bool mode3 = false;
  List cars = ["Ferrari","BMW","Mercedis","Bugatti"];
  String mySelected = "Ferrari"; 
  String colors="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors:[Colors.amber,Colors.purple])),
        child: ListView(
          children: [
            Container(
              child: Text("Favorite mode?",style: TextStyle(fontSize: 44,fontFamily: 'AmaticSC',fontWeight: FontWeight.bold)),
            ),
            CheckboxListTile(
              title: Text("1 vs 1"),
              value: mode1, onChanged: (value) {
              setState(() {
                mode1 =value!;
              });
            },), CheckboxListTile(
              title: Text("2 vs 2"),
              value: mode2, onChanged: (value) {
              setState(() {
                mode2 =value!;
              });
            },), CheckboxListTile(
              title: Text("3 vs 3"),
              value: mode3, onChanged: (value) {
              setState(() {
                mode3 =value!;
              });
            },),
            // ElevatedButton(onPressed: () {
            //   setState(() {
            //     Navigator.pop(context,MaterialPageRoute(builder: (context) {
            //       return Home();
            //     },));
            //   });
            // }, child: Text("return")),
SizedBox(height: 40,),
            Container(child: Text("choose your car",style: TextStyle(fontSize: 44,fontFamily: 'AmaticSC',fontWeight: FontWeight.bold)),),
            DropdownButton(items: cars
            .map((e) => DropdownMenuItem(value: e,child: Text("${e}")))
            .toList()
            , onChanged: (value) {
              setState(() {
                mySelected=value.toString();
              });
              
            }, value: mySelected,),

SizedBox(height: 40,),
            Container(child:Text("Choose your car color",style: TextStyle(fontSize: 44,fontFamily: 'AmaticSC',fontWeight: FontWeight.bold)) ,),
            SizedBox(height: 10,),

            RadioListTile(
              title: Text("red"),
              value: "red", groupValue: colors, onChanged: (value) {
              setState(() {
                colors=value.toString();
              });
            },),
            RadioListTile(
              title: Text("black"),
              value: "black", groupValue: colors, onChanged: (value) {
              setState(() {
                colors=value.toString();
              });
            },),
            RadioListTile(
                            title: Text("blue"),

              value: "blue", groupValue: colors, onChanged:(value) {
              setState(() {
                colors=value.toString();
              });
            },),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              setState(() {
                Navigator.pop(context,MaterialPageRoute(builder: (context) {
                  return Home();
                },));
              });
            }, child: Text("return")),


            





          ],
        ),
      ),
    );
  }
}