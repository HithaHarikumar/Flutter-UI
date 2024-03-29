import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customSecondbox extends StatelessWidget{
  String image ="";

  customSecondbox ({
    required this.image
});
  @override
  Widget build(BuildContext context) {
  return  Stack(
    children: [
      Container(
          width: 85,
          height: 15,
          decoration: BoxDecoration(
            borderRadius : BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(14),),
            color : Color.fromRGBO(238, 241, 244, 1),
          )),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 6),
      Image.asset(image),
       SizedBox(width: 6),
          Text('function overloading.pdf', style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontSize: 5,),),],
      ),],
  );
  }
}