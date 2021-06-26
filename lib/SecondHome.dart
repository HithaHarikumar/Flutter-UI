import 'package:flutter/material.dart';
import 'package:flutter_ui/CustomsSecondclass.dart';


class SecondHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white24,
       leading: IconButton(icon: Image.asset('images/menu.png'),
         onPressed: () {  },),
       title: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Align(
       alignment: Alignment.centerLeft,
             child: Image(image: AssetImage('images/title.png'),width: 100,height: 50),),
           // Container(
           //   width: 50,
           //   height: 54,
           //   decoration: BoxDecoration(
           //     image: DecorationImage(
           //         image: AssetImage('images/title.png'),
           //         fit: BoxFit.fitWidth),),
           // ),
            Text('BCA Sem 1 theory', style: TextStyle(
             color: Color.fromRGBO(2, 12, 26, 1),
             fontSize: 18,
             fontWeight: FontWeight.bold,
           ),),
         ],
       ),
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
           SizedBox(height: 20),
         Stack(
         children: <Widget>[
           Container(
             width: 367,
             height: 60,
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
             right: 8.0,
             child: IconButton(
                 icon: Icon(Icons.search), onPressed: () {},
                 color: Color.fromRGBO(15, 82, 186, 1)),
           ),
         ],
     ),
           SizedBox(height: 25),
          CustomSecondclass(),
           SizedBox(height: 25),
           CustomSecondclass(),
           SizedBox(height: 5)
         ],),
         ],
     ),
     ),
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
           ],
         ),

   );
  }

}