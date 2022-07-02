
import 'package:flutter/material.dart';
import 'package:reddit/Postview.dart';
import 'package:reddit/postdetail.dart';
import 'package:reddit/postmodel.dart' as Post;
import 'package:reddit/postmodel.dart';
import 'package:reddit/postmodel.dart';
class PageOne extends StatefulWidget {
  const PageOne({Key key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  List<Post.Post> postlist =[
    Post.Post("salam", "hale shoma chetore?"),
  ];
void addPost(Post.Post postmodel){
  setState(() {
    postlist.add(postmodel);
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
      )
      ,
      body:InkWell(
        child: ListView.builder(
          itemCount: postlist.length,
          itemBuilder: (context , index){
            return Postitem(postlist[index]);
          },

        ),

      ),


);

  }
}
