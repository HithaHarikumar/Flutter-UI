import 'package:flutter/cupertino.dart';

class Customsmallbox extends StatelessWidget{

  final String text;
  const Customsmallbox({required this.text});

  @override
  Widget build(BuildContext context) {
   return  Container(
       width: 51,
       height: 20,
       decoration: BoxDecoration(
         borderRadius : BorderRadius.only(
           topLeft: Radius.circular(20),
           topRight: Radius.circular(20),
           bottomLeft: Radius.circular(20),
           bottomRight: Radius.circular(20),),
         color : Color.fromRGBO(255, 255, 255, 1),
       ),
       child:
       Center(
         child: Text(text,
           textAlign: TextAlign.left, style: TextStyle(
             color: Color.fromRGBO(0, 0, 0, 1),
             fontSize: 10,),),)
   );
  }
}