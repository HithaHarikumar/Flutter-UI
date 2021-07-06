import 'package:flutter/material.dart';
import 'package:flutter_ui/CustomSearch.dart';
import 'package:flutter_ui/CustomsSecondclass.dart';


class SecondHome extends StatefulWidget {

  @override
  _secondHome createState() => _secondHome();

}


class _secondHome  extends State<SecondHome>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        leading: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image(image: AssetImage('images/menu.png'),),
              // Image(image: AssetImage('images/ed.png'),),
            ],
          )
          ),
          //     fit: BoxFit.fill),),
          // child: Row(
          // children: [
          //   Image(image: AssetImage('images/menu.png'), fit: BoxFit.scaleDown),
          //   // SizedBox(width: 8),
          //   // Image(image: AssetImage('images/ed.png'), fit: BoxFit.scaleDown),
          //   SizedBox(width: 50,),
            title: Container(
              width: 150,
              height: 60,
             child:
             Center(
               child: Text('BCA Sem 1 theory', style: TextStyle(
                 color: Color.fromRGBO(2, 12, 26, 1),
                 fontSize: 18,
                 fontWeight: FontWeight.bold,),),
             ),
            ),
        centerTitle: true,
        actions: [Padding(
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
        ],),
      body: SizedBox(
        child:  ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [ Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.symmetric(horizontal: 150)),
              SizedBox(height: 20),
              CustomSearch(),
              SizedBox(height: 20),
              CustomSecondclass(),
              SizedBox(height: 25),
              CustomSecondclass(),
              SizedBox(height: 20)
            ],),
          ],),),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Image.asset('images/Stream.png'),
              label: 'Stream'),
          BottomNavigationBarItem(icon: Image.asset('images/Brain Activity.png'),
              label: 'Activity'),
          BottomNavigationBarItem(icon: Image.asset('images/book.png'),
              label: 'Notes'),
          BottomNavigationBarItem(icon: Image.asset('images/notification.png'),
              label: 'Notification'),
          BottomNavigationBarItem(icon: Image.asset('images/members.png'),
              label: 'Members'),
        ],),
    );
  }
}
