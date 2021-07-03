import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBoxcontainer extends StatelessWidget{

  final String text;
  const CustomBoxcontainer({required this.text});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
            width: 359,
            height: 187,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(19),
                topRight: Radius.circular(19),
                bottomLeft: Radius.circular(19),
                bottomRight: Radius.circular(19),),
              boxShadow: [BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),)],
              color: Color.fromRGBO(230, 236, 246, 1),)),
        Positioned(
          top: 10,
          left: 10,
          child: Row(
            children: [
              Container(
                width: 35,
                height: 32,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(15, 82, 186, 1),
                    width: 0.96,),
                  image: DecorationImage(
                      image: AssetImage('images/person.png'),
                      fit: BoxFit.fitWidth),
                  borderRadius: BorderRadius.all(Radius.elliptical(
                      35, 32)),
                ),),
            ],),),
        Positioned(
          top: 15,
          left: 60,
          child: Text('Joseph Deril',
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 15,
                fontWeight: FontWeight.bold,),),),
        Positioned(
          top: 15,
          right: 25,
          child: Text('12/2/2020 02:00PM',
            style: TextStyle(
                color: Color.fromRGBO(196, 196, 196, 1),
                fontSize: 8,
                fontWeight: FontWeight.normal,),),),
        Positioned(
          top: 50,
          left: 15,
          child: Text(text,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Maven Pro',
                fontSize: 15.435042381286621,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,),),),
        Positioned(
          top: 80,
          left: 15,
          child: Text(
            'Students go through the ppt its an important part.If',
            textAlign: TextAlign.left, style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontFamily: 'Maven Pro',
              fontSize: 12,
              fontWeight: FontWeight.normal,
              height: 1),),),
        Positioned(
          top: 95,
          left: 15,
          child: Text('you have any doubt comment below',
            textAlign: TextAlign.left, style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 12,
                fontWeight: FontWeight.normal,),),),
        Positioned(
          top: 120,
          left: 80,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(15, 82, 186, 1),
                onPrimary: Colors.white,
                shape: StadiumBorder()),
            onPressed: () {},
            child: Text('Accept'),),
        ),
        Positioned(
          top: 120,
          right: 80,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.white60,
                onPrimary: Color.fromRGBO(15, 82, 186, 1),
                shape: StadiumBorder()),
            onPressed: () {},
            child: Text('Reject'),),
        ),
      ],);
  }
}