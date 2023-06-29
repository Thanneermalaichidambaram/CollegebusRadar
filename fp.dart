import 'package:cbts/login.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password?'),centerTitle: true,),
      body:Column(
        children: [
          TextField(
                   decoration: InputDecoration(
                   border: UnderlineInputBorder(),
                   labelText: 'User Name',
                   hintText: 'Enter valid mail id as abc@gmail.com',icon: new Icon(Icons.people)),),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder:(_) => ForgotSucess()));
          },child: Text('Login'),),
        ],
      ),
    );
  }
}


class ForgotSucess extends StatefulWidget {
  const ForgotSucess({super.key});

  @override
  State<ForgotSucess> createState() => _ForgotSucessState();
}

class _ForgotSucessState extends State<ForgotSucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password?'),centerTitle: true,),
      body:Center(child: Text('check with Your Mail-id for password reset',),)
    );
  }
}

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password?'),centerTitle: true,),
      body:Column(
        children: [
          TextField(
                   decoration: InputDecoration(
                   border: UnderlineInputBorder(),
                   labelText: 'First Name',icon: new Icon(Icons.text_fields)),),
          TextField(
                   decoration: InputDecoration(
                   border: UnderlineInputBorder(),
                   labelText: 'Second Name',icon: new Icon(Icons.text_fields)),),
          TextField(
                   decoration: InputDecoration(
                   border: UnderlineInputBorder(),
                   labelText: 'Maild id',icon: new Icon(Icons.mail)),),
          TextField(
                   decoration: InputDecoration(
                   border: UnderlineInputBorder(),
                   labelText: 'Password',icon: new Icon(Icons.lock)),),
          TextField(
                   decoration: InputDecoration(
                   border: UnderlineInputBorder(),
                   labelText: 'Confirm Password',icon: new Icon(Icons.confirmation_num)),),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder:(_) => loginpage()));
          },child: Text('Submit'),),
        ],
      ),

    );
  }
}