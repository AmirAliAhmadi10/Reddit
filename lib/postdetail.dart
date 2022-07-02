
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reddit/postmodel.dart';
class PostDetail extends StatefulWidget {
  PostDetail({this.postmodel , Key key}) : super(key: key);
  final Post postmodel;

  @override
  State<PostDetail> createState() => _PostDetailState(postmodel);
}

class _PostDetailState extends State<PostDetail> {
  Post postmodel;
  _PostDetailState(Post postmodel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
        onPressed: (){
          Navigator.of(context).pop();
        },
          icon: Icon(Icons.arrow_back_ios,),
          color:Colors.deepOrange,
          iconSize: 20,
        ),

        backgroundColor: Colors.white,
        title: Text(widget.postmodel.t,style: TextStyle(color: Colors.deepOrange,fontSize: 30,fontWeight: FontWeight.w300),),
      ),
      body:Padding(
        padding: const EdgeInsets.all(10),
        child:
            Column(
        children:[
              Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
        child:SizedBox(
          width: MediaQuery.of(context).size.width,
        height: 100,
        child: Text("  "+
          widget.postmodel.body,
          style: TextStyle(
            fontSize:20,
          ),
        ),
        ),
      ),
          TextField(
            decoration: const InputDecoration(
              suffixIcon: Icon(Icons.send),
              hintText: "comment",
              border: OutlineInputBorder(),
            ),

          ),
    ]
            )
      ),
    );
  }
}

