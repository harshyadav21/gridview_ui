

import 'package:flutter/material.dart';

class GridView1 extends StatefulWidget {
  @override
  _GridView1State createState() => _GridView1State();
}

class _GridView1State extends State<GridView1> {


  Card makeDashboardItem( String title, IconData icon) {
    return Card(



        elevation: 1.0,
        
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.white,
          
          borderRadius: BorderRadius.circular(100.0),
          
          ),
          
          child: new InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style:
                          new TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.teal.shade300, Colors.lightBlue.shade900])),
          child: Scaffold(
            backgroundColor: Colors.transparent,

        body:   SafeArea(
                child: Column(
                  children: [
           Expanded(
             flex: 2,
          child: Column(
            children: [

Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30,)),

        CircleAvatar(
        
          
          radius: 40,),
          SizedBox(height: 10),
        Text('Rachel Rebecca'),
        SizedBox(height: 5),
        Text('bjdbdjhbdjd@gmail.com'),

            ],
          ),


           ),


                    Expanded(
                      flex: 5,
                                        child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
              child: GridView.count(
                      crossAxisCount: 2,
                      padding: EdgeInsets.all(3.0),
                      children: <Widget>[
                        makeDashboardItem("Ordbog", Icons.book),
                        makeDashboardItem("Alphabet", Icons.alarm),
                        makeDashboardItem("Alphabet", Icons.alarm),
                        makeDashboardItem("Alphabet", Icons.alarm),
                        makeDashboardItem("Alphabet", Icons.alarm),
                        makeDashboardItem("Alphabet", Icons.alarm),
                        makeDashboardItem("Alphabet", Icons.alarm),
                        makeDashboardItem("Alphabet", Icons.alarm),
                        makeDashboardItem("Alphabet", Icons.alarm),
                        makeDashboardItem("Alphabet", Icons.alarm),
                      ],
              ),
            ),
                    ),
                  ],
                ),
        
        ), 
      ),
    );
  }
}
