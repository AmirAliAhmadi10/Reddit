import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reddit/postdetail.dart';
import 'package:reddit/postmodel.dart';

class Postitem extends StatelessWidget {
  Postitem(this.postmodel);
  final Post postmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => PostDetail(postmodel : postmodel))),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child:Column(
       children:[ ListTile(
        title: Text(postmodel.t),
        subtitle: Text(postmodel.body),
        trailing: SizedBox(
          width: 100,height: 100,
        ),
      ),

   ButtonTheme(
child: ButtonBar(
  children:<Widget> [
    FlatButton(
      child: const Icon(Icons.arrow_circle_up,color: Colors.deepOrange,),
    onPressed: (){},
    ),
    FlatButton(
      minWidth: 10,
      child: const Icon(Icons.arrow_circle_down,color: Colors.deepOrange,),
      onPressed: (){},
    ),
    FlatButton(
      minWidth: 10,
      child: const Icon(Icons.save_outlined,color: Colors.deepOrange,),
      onPressed: (){},
    )

  ],
),
   )
   /* ElevatedButton.icon(
      onPressed: (){},
      label: Text(''),
      icon:Icon( Icons.arrow_circle_up,)
    )*/


      ]
      )

    ),
    );
  }

}
