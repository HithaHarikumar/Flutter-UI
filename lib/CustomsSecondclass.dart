import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/CustomSecondbox.dart';


class CustomSecondclass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Stack(
     children: [
       Container(
         width: 361, height: 336,
         decoration: BoxDecoration(
           borderRadius : BorderRadius.only(
             topLeft: Radius.circular(19.870765686035156),
             topRight: Radius.circular(19.870765686035156),
             bottomLeft: Radius.circular(19.870765686035156),
             bottomRight: Radius.circular(19.870765686035156),),
           boxShadow : [BoxShadow(
               color: Color.fromRGBO(0, 0, 0, 0.25),
               offset: Offset(0,3.9741532802581787),
               blurRadius: 3.9741532802581787)],
           color : Color.fromRGBO(230, 236, 246, 1),),
         child: Stack(
           children: [
             Row (
               children: [
                 SizedBox(height: 60,width: 30),
                 Container(
                     width: 37,
                     height: 37,
                     decoration: BoxDecoration(
                       border : Border.all(
                         color: Color.fromRGBO(15, 82, 186, 1),
                         width: 1,
                       ),
                       image : DecorationImage(
                           image: AssetImage('images/person.png'),
                           fit: BoxFit.fitWidth
                       ),
                       borderRadius : BorderRadius.all(Radius.elliptical(37, 37)),
                     )
                 ),
                 SizedBox(width: 8),
                 Text('Joseph Deril', style: TextStyle(
                   color: Color.fromRGBO(0, 0, 0, 1),
                   fontSize: 16,
                   fontWeight: FontWeight.bold,
                 ),),
                 SizedBox(width: 40),
                 Stack(
                   children: [
                     Container(
                       child:  Image(image: AssetImage('images/Rectangle.png'),width: 100,height: 50),),
                     Positioned(
                       top: 20,
                       left:30,
                       child: Text('BCA S1', style: TextStyle(
                         color: Color.fromRGBO(15, 82, 186, 1),
                         fontSize: 12,
                         fontWeight: FontWeight.normal,),),),
                   ],),
                 IconButton(icon: Image.asset('images/smallmenu.png'),
                   onPressed: () {  },),
               ],
             )],
         ),
       ),
       Positioned(
         top:60,
         left: 25,
         child:Text('Attach the file of function overloading', textAlign: TextAlign.left, style: TextStyle(
             color: Color.fromRGBO(0, 0, 0, 1),
             fontSize: 16,
             fontWeight: FontWeight.normal),), ),
       Positioned(
         top:100,
         left: 25,
         child: Text('Students go through the ppt its an important part.If \n you have any doubt comment below', textAlign: TextAlign.left, style: TextStyle(
             color: Color.fromRGBO(0, 0, 0, 1),
             fontSize: 12,
             fontWeight: FontWeight.normal),), ),
       Positioned(
         top:150,
         left: 20,
         child: Row(
             children:[
               customSecondbox(image: 'images/pdf.png'),
               SizedBox(width: 25),
               customSecondbox(image: 'images/docs.png'),
               SizedBox(width: 25),
               customSecondbox(image: 'images/jpg.png'),
             ]),),
       SizedBox(height: 30),
       Positioned(
         top:180,
         left: 20,
         child:  Row(
           children: [
             customSecondbox(image: 'images/docs.png'),
             SizedBox(width: 25),
             customSecondbox(image: 'images/pdf.png'),
           ],
         ),),
       Positioned(
         top:200,
         left: 10,
         child:Row(
           children: [
             Padding(
               padding: EdgeInsets.all(10.0),
               child: Container(
                 padding: EdgeInsets.all(16.0),
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   image: DecorationImage(
                     image: AssetImage('images/profile.png'),
                     fit: BoxFit.fill,),
                   border : Border.all(color: Color.fromRGBO(15, 82, 186, 1),),),
               ), ),
             Container(
               width: 260,
               height: 30,
               decoration: BoxDecoration(
                 borderRadius : BorderRadius.only(
                   topLeft: Radius.circular(20),
                   topRight: Radius.circular(20),
                   bottomLeft: Radius.circular(20),
                   bottomRight: Radius.circular(20),
                 ),
                 color : Color.fromRGBO(255, 255, 255, 1),
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Add a public comment......', style: TextStyle(
                     color: Color.fromRGBO(196, 196, 196, 1),
                     fontSize: 10,
                   ),),
                   Image(image: AssetImage('images/send.png')),
                 ],
               ),
             ),
           ],
         ),
       ),
       Positioned(
         top:255,
         left: 25,
         child: Container(
           width: 300,
           height: 55,
           decoration: BoxDecoration(
             borderRadius : BorderRadius.only(
               topLeft: Radius.circular(20),
               topRight: Radius.circular(20),
               bottomLeft: Radius.circular(20),
               bottomRight: Radius.circular(20),
             ),
             color : Color.fromRGBO(238, 241, 244, 1),),
           child: Row(
             children: [
               SizedBox(width: 10,height: 10),
               Image(image: AssetImage('images/picture.png')),
               SizedBox(width: 10),
               Text('Mathew', textAlign: TextAlign.left, style: TextStyle(
                   color: Color.fromRGBO(0, 0, 0, 1),
                   fontFamily: 'Maven Pro',
                   fontSize: 8,
                   letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                   fontWeight: FontWeight.normal,
                   height: 1
               ),),
               SizedBox(width: 160),
               Text('12/2/2020 03:00PM', textAlign: TextAlign.right, style: TextStyle(
                   color: Color.fromRGBO(196, 196, 196, 1),
                   fontFamily: 'Maven Pro',
                   fontSize: 6,
                   letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                   fontWeight: FontWeight.normal,
                   height: 1
               ),),],),
         ),
       ),

       Positioned(
           top:290,
           left: 55,
           child:  Text('Sir i have dought about. How can i use function overload with the \n string data type? ', textAlign: TextAlign.left, style: TextStyle(
             color: Color.fromRGBO(0, 0, 0, 1),
             fontFamily: 'Maven Pro',
             fontSize: 8,
           ),)),
       Positioned(
           top:310,
           right: 45,

           child:
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text('Comments ', style: TextStyle(
                 color: Color.fromRGBO(0, 0, 0, 1),
                 fontSize: 6,),),
               Text('10+ ',  style: TextStyle(
                 color: Color.fromRGBO(15, 82, 186, 1),
                 fontSize: 6,),),
             ],) ),
       Positioned(
         top:320,
         left: 40,
         child: Text('12/2/2020 02:00PM', style: TextStyle(
           color: Color.fromRGBO(196, 196, 196, 1),
           fontSize: 6,),),),
     ],);
  }

}