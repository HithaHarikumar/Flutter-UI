import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Stack(
         children: <Widget>[
           SizedBox(height: 50),
           Container(
             width: 367,
             height: 42,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(20),
                 topRight: Radius.circular(20),
                 bottomLeft: Radius.circular(20),
                 bottomRight: Radius.circular(20),),
               color: Color.fromRGBO(230, 236, 246, 1),),
           ),
           Positioned(
             top: 10.0,
             left: 10.0,
             child: Text('Search',
               textAlign: TextAlign.left,
               style: TextStyle(
                 color: Color.fromRGBO(15, 82, 186, 1),
                 fontSize: 16,
                 letterSpacing: 0,
                 fontWeight: FontWeight.normal,),),
           ),
           Positioned(
             right: 10.0,
             child: IconButton(
                 icon: Icon(Icons.search), onPressed: () {},
                 color: Color.fromRGBO(15, 82, 186, 1)),
           ),
         ],
       );
  }
}