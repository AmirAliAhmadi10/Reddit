

import 'dart:ui';

import 'package:flutter/material.dart';
class NotifPage extends StatelessWidget {
  const NotifPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: Text(
            "Edit Profile",
            style: TextStyle(
              color: Colors.deepOrange,
            ),
          ),
        ),
      body:Container(
    margin: new EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
    child:Column(
      children: [
      Row(
      children: [
      CircleAvatar(
      backgroundColor: Colors.green,
      radius: 45,
      child: CircleAvatar(
      backgroundImage: NetworkImage("https://www.w3schools.com/howto/img_avatar.png"),
      radius: 40,
      ),
      ),
      Container(
      height: 30,
      width: 40,
      ),
        Container(
          width: 200,
          height: 50,
       child:
       TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text("Username"),
            hintText: 'Enter New Username',
          ),

        ),

        ),

]
      ),
      Row(
        children:[
      Container(
        width:130 ,
        height: 50,
      ),
      Container(
        width: 200,
        height: 50,
        child:
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text("Password"),
            hintText: 'Enter New Password',
          ),

        ),
      ),

      ],
      ),
        Container(
          height: 20,
        ),
        Row(
          children:[
            Container(
              width:130 ,
            ),
            Container(
              width: 200,
              height: 50,
              child:
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Email"),
                  hintText: 'Enter New Email',
                ),

              ),
            ),
          ],

        ),
    Container(
    height: 200,
    ),
        ElevatedButton(
          child:const Text("Edit"),
          onPressed: ()=> Navigator.pop(context),
        ),
      ],
    ),
    ),
    );
  }
}
