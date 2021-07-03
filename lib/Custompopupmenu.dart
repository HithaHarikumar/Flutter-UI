
import 'package:flutter/material.dart';


class ShapedWidget extends StatelessWidget {
  ShapedWidget({this.onlyTop = false});
  final double padding = 4.0;
  final bool onlyTop;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
          clipBehavior: Clip.antiAlias,
          shape:
          ShapedWidgetBorder(borderRadius: BorderRadius.all(Radius.circular(padding)), padding: padding),
          elevation: 4.0,
          child: Container(
            padding: EdgeInsets.all(padding).copyWith(bottom: padding * 2),
            child: onlyTop ? SizedBox(width: 150.0, height: 4.0,) :  SizedBox(width: 150.0, height: 200.0, child:
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Share',
                        style: TextStyle(
                            color: Color.fromRGBO(15, 82, 186, 1),
                            fontSize: 15)),
                    IconButton(icon: Image.asset('images/share.png'),
                      onPressed: () {  },
                      iconSize: 50,
                    ) ,
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Delete',
                        style: TextStyle(
                            color: Color.fromRGBO(15, 82, 186, 1),
                            fontSize: 15)),
                    IconButton(icon: Image.asset('images/delete.png'),
                      onPressed: () {  },
                      iconSize: 50,) ,
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Spam',
                        style: TextStyle(
                            color: Color.fromRGBO(15, 82, 186, 1),
                            fontSize: 15)),
                    IconButton(icon: Image.asset('images/spam.png'),
                      onPressed: () {  },
                      iconSize: 50,) ,
                  ],)
              ],
            )),
          )),
    );
  }
}

class ShapedWidgetBorder extends RoundedRectangleBorder {
  ShapedWidgetBorder({
    required this.padding,
    side = BorderSide.none,
    borderRadius = BorderRadius.zero,
  }) : super(side: side, borderRadius: borderRadius);
  final double padding;

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..moveTo(rect.width - 8.0 , rect.top)
      ..lineTo(rect.width - 20.0, rect.top - 16.0)
      ..lineTo(rect.width - 32.0, rect.top)
      ..addRRect(borderRadius
          .resolve(textDirection)
          .toRRect(Rect.fromLTWH(rect.left, rect.top, rect.width, rect.height - padding)));
  }
}