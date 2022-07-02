import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedPost extends StatelessWidget {
  const SavedPost({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:IconButton(
          icon:Icon(Icons.arrow_back_ios,color: Colors.deepOrange,),
        onPressed: (){
            Navigator.of(context).pop();
        },
        ),
        title: Text("Saved Posts",style: TextStyle(color: Colors.deepOrange),),
      ),
    );
  }
}
