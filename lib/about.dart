
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        IconButton(onPressed: (){
          Navigator.pop(context);
        },
         icon: Icon( Icons.arrow_back_ios , color: Colors.deepOrange,),),
        backgroundColor: Colors.white,
        title: Text(
          "About Us", style: TextStyle(color: Colors.deepOrange),
        ),
      ),
     body:Container(
       child:
           Column(
       children:[

          Text(" Ahmadreza Saeli",style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w400),),
         Row(
           children:[
         Container(
           child: Text("Email :",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,height: 1.5),),
         ),
             Container(
               child: Text("Ahmadrezasaeli7@gmail.com",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,color: Colors.blue),),
             )
           ]
         ),
         Container(
           child: Column(
             children: [
               Text(" Artin Elhami Rad",style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w400),),
               Row(
                   children:[
                     Container(
                       child: Text("Email :",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,height: 1.5),),
                     ),
                     Container(
                       child: Text("ArtinElhamiRad@gmail.com",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,color: Colors.blue),),
                     )
                   ]
               ),

             ],
           ),
         )
    ]
           ),
     )
    );
  }
}
