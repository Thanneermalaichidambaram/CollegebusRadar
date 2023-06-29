import 'package:cbts/fp.dart';
import 'package:cbts/list.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('College bus Radar'),centerTitle: true, backgroundColor: Colors.yellow.shade800,foregroundColor: Colors.black,),
      body:Column(
        children: [
          SizedBox(height: 40,),
          Padding(padding: EdgeInsets.all(50),
          child: Column(
            children: [ 
              TextField(
               decoration: InputDecoration(
               border: UnderlineInputBorder(),
               labelText: 'User Name',
               hintText: 'Enter valid mail id as abc@gmail.com',icon: new Icon(Icons.people)),),
            SizedBox(height: 25,),
            TextField(
       obscureText: true,
       decoration: InputDecoration(
       border: UnderlineInputBorder(),
       labelText: 'Password',
       hintText: 'Enter your secure password',icon: new Icon(Icons.lock))
     ),
     TextButton(onPressed: (){
      Navigator.push(
          context, MaterialPageRoute(builder:(_) => ForgotPassword()));
     },style: TextButton.styleFrom(
    primary: Colors.yellow.shade800, // Background color
  ), child: Text('Forgot Password?',selectionColor: Colors.yellow,),),
SizedBox(height: 50,),
ElevatedButton(onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder:(_) => songlist()));
          },style: ElevatedButton.styleFrom(
    primary: Colors.yellow.shade800, // Background color
  ),child: Text('Login'),),
          SizedBox(height: 25,),
        ElevatedButton(onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder:(_) => Register()));
          },style: ElevatedButton.styleFrom(
    primary: Colors.yellow.shade800, // Background color
  ),child: Text('SignUp'),),
            ]
   ),
 ),
   ] ),);
  }
}