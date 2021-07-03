import 'package:flutter/material.dart';
import 'package:flutter_ui/Customsmallbox.dart';

class CustomClass extends StatelessWidget{


  final String headingtext;
  String image = "";
  final Function() onPressed;

  CustomClass({
    required this.image,
    required this.headingtext,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
        children:<Widget> [
        Stack(
    children:  <Widget>[
      InkWell(
        onTap: onPressed,
        child:  Container(
            width: 357,
            height: 123,
            decoration: BoxDecoration(
              borderRadius : BorderRadius.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22),
              ),
              boxShadow : [BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
              )],
              color : Color.fromRGBO(230, 236, 246, 1),
              image : DecorationImage(
                  colorFilter: ColorFilter.mode(Colors.white54.withOpacity(0.2), BlendMode.dstATop),
                  image: AssetImage(image),
                  fit: BoxFit.fitWidth),)
        ) ,),
    Positioned(
    top: 5,
    right: 12.5,
    child: Image.asset('images/menu_vert.png'),),
    Positioned(
    top: 40,
    left: 80,
    child: Text(headingtext,
    textAlign: TextAlign.left, style: TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 28,),),),
    Positioned(
      top: 85,
      left: 30,
      child: Customsmallbox(text: 'BCA S1'),),
      Positioned(
       top: 85,
        left: 90,
        child: Customsmallbox(text: 'English'),),
      Positioned(
        top: 85,
        left: 150,
        child: Customsmallbox(text: 'Lab 1'),),
      Positioned(
        top: 85,
        left: 210,
        child: Customsmallbox(text: 'Lab 2'),),
      Positioned(
        top: 85,
        left: 270,
        child: Customsmallbox(text: 'Maths'),),
    ],
    ),],
    );
  }
}

