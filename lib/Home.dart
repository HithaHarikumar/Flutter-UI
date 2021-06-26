import 'package:flutter/material.dart';
import 'package:flutter_ui/CustomBoxcontainer.dart';
import 'package:flutter_ui/CustomCard.dart';
import 'package:flutter_ui/CustomClass.dart';
import 'package:flutter_ui/CustomHeading.dart';
import 'package:flutter_ui/CustomSearch.dart';
import 'package:flutter_ui/SecondHome.dart';

class Home extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
              backgroundColor: Colors.white24,
              leading: Padding(
                padding: EdgeInsets.all(16.0),
                child: Image(image: AssetImage('images/menu.png'),
                        fit: BoxFit.fill),),
              title: Container(
                width: 120,
                height: 54,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/title.png'),
                      fit: BoxFit.fitWidth),),
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
                   CustomSearch(),
                      CustomHeading(text: 'Request'),
                      CustomBoxcontainer(text: 'Join MCA S3 classroom'),
                      SizedBox(height: 15),
                      CustomBoxcontainer(text: 'Join MCA S4 classroom'),
                      SizedBox(height: 20),
                      CustomClass(image: 'images/classroom.png',
                          headingtext: 'All Classroom', onPressed: () {  },),
                      SizedBox(height: 25),
                      CustomHeading(text: 'Group'),
                      SizedBox(height: 10),
                      CustomClass(image: 'images/Theory.png',
                          headingtext: 'Bca Sem-1 Theory', onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => SecondHome()));                      },),
                      SizedBox(height: 15),
                      CustomClass(image: 'images/Project.png',
                          headingtext: 'Bca Sem-1 Project', onPressed: () {  },),
                      SizedBox(height: 15),
                      CustomClass(image: 'images/Lab.png',
                          headingtext: 'Bca Sem-1 Lab', onPressed: () {  },),
                      SizedBox(height: 20),
                      CustomHeading(text: 'Classroom'),
                      Column(
                        children: [
                          Row(
                          children: [
                            SizedBox(width: 10),
                            CustomCard(text: 'CPP', image: 'images/Cpp.png'),
                            SizedBox(width: 20),
                            CustomCard(text: 'Java', image: 'images/Java.png'),
                          ],),
                          SizedBox(height: 20, width: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomCard(text: 'CPP Lab', image: 'images/CppLab.png'),
                              SizedBox(width: 20),
                              CustomCard(text: 'Mini Project', image: 'images/Mini.png'),
                            ],),
                          SizedBox(height: 20, width: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomCard(text: 'Main Project', image: 'images/Main.png'),
                              SizedBox(width: 20),
                              CustomCard(text: 'DBMS Lab', image: 'images/DBMS.png'),
                            ],),
                          SizedBox(height: 80),],
                      ),],
                  ),],
              ) ,),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(onPressed: () {  },
      child: const Icon(Icons.add),
        backgroundColor:   Color.fromRGBO(15, 82, 186, 1)),
    );
  }
}