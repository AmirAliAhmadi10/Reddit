
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:reddit/login.dart';

import 'feed.dart';
class SignupPage extends StatelessWidget {
  const SignupPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar:  AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
        onPressed: (){
      Navigator.pop(context);
    },
    icon: Icon(Icons.arrow_back_ios,
    size: 25,
    color: Colors.deepOrange,),

    ),
    ),
      body: SingleChildScrollView(
        child: Container(
          padding:EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children:<Widget> [
                  Text("Sign Up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),),

                ],
              ),
              Column(
                children:<Widget> [
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "User name",
                      border: OutlineInputBorder(),
                    ),
                    controller: usernameC,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                      suffixIcon :Icon(Icons.remove_red_eye_outlined),
                    ),
                    controller: passwordC,

                    obscureText: true,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(),
                    ),
                    controller: emailC,

                  ),

             /*   inputFile(label: "User Name"),
                inputFile(label: "Email"),
                inputFile(label: "Password",obscureText: true),*/
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Container(
              padding: EdgeInsets.only(top: 0, left: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border(
                  bottom: BorderSide(color: Colors.white),
                  top: BorderSide(color: Colors.white),
                  left : BorderSide(color: Colors.white),
                  right: BorderSide(color: Colors.white),

                ),
              ),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage()));
                  //raftan be home
                },
                color: Colors.deepOrange,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
          ),
        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget inputFile({label, obscureText=false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w200,
          color: Colors.black,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      )
    ],
  );

}
