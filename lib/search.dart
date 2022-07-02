import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reddit/postmodel.dart';
import 'package:reddit/postmodel.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return new CupertinoPageScaffold(
      navigationBar:CupertinoNavigationBar(
          middle: CupertinoSearchTextField(
            onChanged: (value){},
            onSubmitted: (value){},
          ),
          trailing: GestureDetector(
            child:Text("Cancel"),
            onTap: (){
            },
          )
      ),
      child:Container(
      ),
    );
  }
}
