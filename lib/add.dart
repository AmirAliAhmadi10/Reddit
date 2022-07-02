import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reddit/feed.dart';
import 'package:reddit/home.dart';
import 'package:reddit/postmodel.dart';
import 'package:reddit/postmodel.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key key,this.addNewPost, this.addPost}) : super(key: key);
  final addNewPost;
  final addPost;
  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController titleC;
  TextEditingController desC;


  @override
  void initState() {
    titleC=TextEditingController();
    desC = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    titleC.dispose();
    desC.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding:const EdgeInsets.all(50),
        child:
        Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title :",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
              //  hintText: "Title"
                  ),
              controller: titleC,
            ),
            Text(
              "Description :",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            TextField(
              textInputAction: TextInputAction.newline,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
            //  hintText: "Description"
                  ),
              controller: desC,
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 40,horizontal: 30),
              width: MediaQuery.of(context).size.width,
              height: 40,

              child: MaterialButton(
                  color: Colors.deepOrange,
                  onPressed: (){
                    String title = titleC.text;
                    String bod = desC.text;
                    Post pos = Post(title, bod);
                    widget.addPost(pos);
                    titleC.clear();
                    desC.clear();
                  },
                  child:const Text("Add",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),)
              ),
            ),
          ],
        ),

      ),

    );


  }
}
