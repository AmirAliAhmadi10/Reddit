import 'package:flutter/material.dart';
import 'package:reddit/postmodel.dart' as Post;
import 'add.dart';
import 'chat.dart';
import 'home.dart';
import 'notification.dart';
import 'postmodel.dart';
import 'search.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  int index =0;
  final screen =[
    PageOne(),
    SearchPage(),
    AddPage(),
    ChatPage(),
    // NotifPage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    body: screen[index],
    bottomNavigationBar:NavigationBar(
      selectedIndex: index,
      onDestinationSelected: (index) =>
      setState(()
        => this.index=index),
      destinations: [
        NavigationDestination(
          icon:Icon(Icons.home,color: Colors.deepOrange,),
          label: 'Home',
        ),
        NavigationDestination(
          icon:Icon(Icons.search,color: Colors.deepOrange,),
          label: 'Search',
        ),
        NavigationDestination(
          icon:Icon(Icons.add,color: Colors.deepOrange,),
          label: 'Add',
        ),
        NavigationDestination(
          icon:Icon(Icons.settings,color: Colors.deepOrange,),
          label: 'Setting',
        ),
        /*NavigationDestination(
          icon:Icon(Icons.notifications, color: Colors.deepOrange,),
          label: 'Notifications',
        ),*/
      ],
    ) ,
  );
}