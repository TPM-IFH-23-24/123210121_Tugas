import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
            _username(),
            _password(),
            _loginbutton(context)
            ],
          ),
        ),
      ),
    ));
  }

  Widget _username(){
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          username = value;
        },
        decoration: InputDecoration(
          hintText: "Input username",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
        ),
      ),
    );
  }

  Widget _password(){
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          password = value;
        },
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Input password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
        ),
      ),
    );
  }

  Widget _loginbutton(context){
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue
        ),
        onPressed: (){
          String text = "";
          if(username=='admin' && password=='123'){
            setState((){
              text = 'Login Success';
              isLogin = true;
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return Homepage();
              }));
            });
          }else{
            setState((){
              text = 'Login Failed';
              isLogin = false;
            });
          }
          SnackBar snackBar = SnackBar(
              content: Text(text)
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("Login", style: TextStyle(color: Colors.white)),

      ),
    );
  }
}



