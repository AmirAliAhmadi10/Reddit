
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:reddit/about.dart';
import 'package:reddit/save.dart';
import 'package:reddit/notification.dart';

import 'community.dart';
import 'save.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Setting",
          style:TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
      ),
      body:
      new Container(
        margin: new EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child:
        Column(
        children:[
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
         height: 80,
         width: 40,
       ),

             RaisedButton(
         padding: const EdgeInsets.only(right: 60,left: 60),
         child: Text(
           "Edit Profile",
           style: TextStyle(
             color: Colors.black,

           ),
         ),


         color: Colors.white24,
         onPressed:() => Navigator.push(context,  MaterialPageRoute(builder: (context) => NotifPage())),
       ),

        ],
    ),
          Row(
            children:[
          Container(
            height: 1,
            width: 130,
          ),
          SizedBox(
            width: 190,
        height: 40,
        child:          RaisedButton(
            padding: const EdgeInsets.only(right: 60,left: 60),
            child: Text("About us",    style: TextStyle(
              color: Colors.black,
            ),),
            color: Colors.white24,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
            },
          ),),]),
           Container(
             height: 30,
             width: 0,
           ),
           Row(
            children:[
              Container(
                height: 1,
                width: 130,
              ),
              SizedBox(
                width: 190,
                height: 40,
                child: RaisedButton(
                  padding: const EdgeInsets.only(right: 60 , left: 60),
                child: Text("Creat new Association" ,
                style: TextStyle(
                  height: 1.5,
                  color: Colors.black
                ),),
                  color: Colors.white24,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Community()));
                  },
                ),
              )
      ]
          ),
      ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => SavedPost()));
        },
      ),
    );
  }
}
