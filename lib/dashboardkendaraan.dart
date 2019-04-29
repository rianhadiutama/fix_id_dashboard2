import 'package:flutter/material.dart';
import 'list_servismobil.dart';
class DashboardKendaraan extends StatefulWidget {
  @override
  _DashboardKendaraanState createState() => _DashboardKendaraanState();
}

class _DashboardKendaraanState extends State<DashboardKendaraan> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('FIX ID'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          )
        ],
      ),
      body:
      new Container(
        child:
        new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Image.network(
              'https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png',
              fit:BoxFit.none,
            ),

            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(key:null, onPressed:(){

                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListServisMobil()),);
                  },
                      color: const Color(0xFFe0e0e0),
                      child:
                      new Text(
                        "MOBIL",
                        style: new TextStyle(fontSize:12.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      )
                  ),

                  new RaisedButton(key:null, onPressed:(){

                  },
                      color: const Color(0xFFe0e0e0),
                      child:
                      new Text(
                        "MOTOR",
                        style: new TextStyle(fontSize:12.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      )
                  ),

                  new RaisedButton(key:null, onPressed:buttonPressed,
                      color: const Color(0xFFe0e0e0),
                      child:
                      new Text(
                        "STEAM",
                        style: new TextStyle(fontSize:12.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      )
                  )
                ]

            ),

            new Container(
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.bottomCenter,
              width: 1.7976931348623157e+308,
              height: 330.0,
            ),

          ],

        ),

        padding: const EdgeInsets.all(5.0),
        alignment: Alignment.center,
      ),

    );
  }
  void buttonPressed(){}

}