import 'package:cbts/Track.dart';
import 'package:cbts/fees.dart';
import 'package:cbts/login.dart';
import 'package:flutter/material.dart';
import 'package:cbts/Attendance.dart';
import 'package:cbts/feedb.dart';

class songlist extends StatefulWidget {

  @override
  State<songlist> createState() => _songlistState();
}

class _songlistState extends State<songlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text("Home"),
            backgroundColor: Colors.yellow.shade800,
            actions: [
                 
                 PopupMenuButton(
                   // add icon, by default "3 dot" icon
                   // icon: Icon(Icons.book)
                   itemBuilder: (context){
                     return [
                            PopupMenuItem<int>(
                                value: 0,
                                child: Text("My Account"),
                            ),

                            PopupMenuItem<int>(
                                value: 1,
                                child: Text("Settings"),
                            ),

                            PopupMenuItem<int>(
                                value: 2,
                                child: Text("Logout"),
                            ),
                        ];
                   },
                   onSelected:(value){
                      if(value == 0){
                         print("My account menu is selected.");
                      }else if(value == 1){
                         print("Settings menu is selected.");
                      }else if(value == 2){
                         print("Logout menu is selected.");
                      }
                   }
                  ),

                   
            ],
         ),

         body:
          
          
          
          
          Container(child: GridView(children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Track()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.track_changes,size: 50,color: Colors.white,),
              Text("Track Bus", style: TextStyle(color: Colors.white,fontSize: 30),)
            ],),),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScanQR()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.assignment_turned_in_sharp,size: 50,color: Colors.white,),
              Text("Attendance", style: TextStyle(color: Colors.white,fontSize: 30),)
            ],),),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyDemoPage(),));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.payments_outlined,size: 50,color: Colors.white,),
              Text("Fee Payment", style: TextStyle(color: Colors.white,fontSize: 30),)
            ],),),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => MyHomePage())));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.feedback_sharp,size: 50,color: Colors.white,),
              Text("Feedback", style: TextStyle(color: Colors.white,fontSize: 30),)
            ],),),
          ),
          
         ],gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2, mainAxisSpacing: 10,crossAxisSpacing: 10),),)
    );
  } 
}