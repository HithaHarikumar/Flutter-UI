import 'package:flutter/cupertino.dart';

class CustomHeading extends StatelessWidget {
  final String text;

  const CustomHeading({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 4, 20,18),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(text,
          style: TextStyle(
            color: Color.fromRGBO(15, 82, 186, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold,),),
      ),
    );
  }
}