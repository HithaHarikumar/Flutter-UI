import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{

  final String text;
  String image = "";

  CustomCard ({required this.text,
  required this.image});

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
           Stack(
             children: [
               Container(
                   width: 170,
                   height: 127,
                   decoration: BoxDecoration(
                     borderRadius : BorderRadius.only(
                       topLeft: Radius.circular(22),
                       topRight: Radius.circular(22),
                       bottomLeft: Radius.circular(22),
                       bottomRight: Radius.circular(22),
                     ),
                     boxShadow : [BoxShadow(
                         color: Color.fromRGBO(0, 0, 0, 0.25),
                         offset: Offset(0,5),
                         blurRadius:5)],
                     color : Color.fromRGBO(235, 240, 248, 1),
                     image : DecorationImage(
                         colorFilter: ColorFilter.mode(Colors.white12.withOpacity(0.2), BlendMode.dstATop),
                         image: AssetImage(image),
                         fit: BoxFit.cover,),)),
               Positioned(
                 top: 10,
                 right: 12.5,
                 child: Image.asset('images/menu_vert.png'),),
               Positioned(
                 top: 40,
                left: 40,
                 child: Text(text,
               style: TextStyle(
                   color: Color.fromRGBO(0, 0, 0, 1),
                   fontSize: 18,
                   fontWeight: FontWeight.bold,),),),
               Positioned(
                 top: 70,
                 left: 15,
                 child: Text('Attach the file of function \n overloading', textAlign: TextAlign.left,
                   style: TextStyle(
                       color: Color.fromRGBO(0, 0, 0, 1),
                       fontSize: 11,),),),
               Positioned(
                   top: 98,
                   left: 10,
                   child: Stack(
                 children: [
                   Container(
                       width: 136,
                       height: 17,
                       decoration: BoxDecoration(
                         borderRadius : BorderRadius.only(
                           topLeft: Radius.circular(22),
                           topRight: Radius.circular(22),
                           bottomLeft: Radius.circular(22),
                           bottomRight: Radius.circular(22),),
                         color : Color.fromRGBO(255, 255, 255, 1),)),
                   Positioned(
                     top: 5,
                     left: 8,
                   child: Text('AabcD1234', textAlign: TextAlign.left, style: TextStyle(
                       color: Color.fromRGBO(0, 0, 0, 1),
                       fontSize: 6,),),) ,
                   Positioned(
                     top: 2,
                     right: 8,
                     child: Image.asset('images/file_copy.png'),),],
               )
               ),
             ],),],
   );
  }
}