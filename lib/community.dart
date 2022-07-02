import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:

      AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back_ios,color: Colors.deepOrange,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
       backgroundColor: Colors.white,
          title: Text("Community",style: TextStyle(color: Colors.deepOrange),)
      ),
    body: Column(
      children: [
        Container(
          height: 20,
        ),
        TextField(
          decoration: const InputDecoration(
            hintText: "Name",
            border: OutlineInputBorder(),
          ),
        ),
      ],
    ),
    );
  }
}
