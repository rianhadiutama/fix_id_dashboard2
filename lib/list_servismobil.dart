import 'package:flutter/material.dart';
import 'deskripsibengkel.dart';

class ListServisMobil extends StatefulWidget {
  static String tag = 'contactlist-page';

  @override  State<StatefulWidget> createState() {
    return new _ListServisMobilState();
  }
}

List<Contact> contacts = [
  Contact(fullName: 'Pratap Kumar', email: 'pratap@example.com'),
  Contact(fullName: 'Jagadeesh', email: 'Jagadeesh@example.com'),
  Contact(fullName: 'Srinivas', email: 'Srinivas@example.com'),
  Contact(fullName: 'Narendra', email: 'Narendra@example.com'),
  Contact(fullName: 'Sravan ', email: 'Sravan@example.com'),
  Contact(fullName: 'Ranganadh', email: 'Ranganadh@example.com'),
  Contact(fullName: 'Karthik', email: 'Karthik@example.com'),
  Contact(fullName: 'Saranya', email: 'Saranya@example.com'),
  Contact(fullName: 'Mahesh', email: 'Mahesh@example.com'),
];
class _ListServisMobilState extends State<ListServisMobil> {
  TextEditingController searchController = new TextEditingController();
  String filter;

  @override  initState() {
    searchController.addListener(() {
      setState(() {
        filter = searchController.text;
      });
    });
  }

  @override  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('MOBIL',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold))),
        body:
        new Container(
          child:
          new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: new TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "Cari Mitra",
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                    ),
                  ),
                ),

                new Container(
                  child:
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[

                        new Container(
                          child:
                          new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Container(
                                  child:
                                  new FlatButton(key:null, onPressed:(){
                                   // Navigator.push(context, MaterialPageRoute(builder: (context) => Deskripsi()),);
                                  },
                                      child:
                                      new Image.network(
                                        'https://motorcycle-logos.com/wp-content/uploads/2016/10/Honda-motorcycle-logo.png',
                                        fit:BoxFit.fitHeight,
                                      ),
                                  ),

                                  color: const Color(0xFFffffff),
                                  padding: const EdgeInsets.all(10.0),
                                  alignment: Alignment.center,
                                  width: 100.0,
                                  height: 150.0,
                                ),


                                new Container(
                                  child:
                                  new Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: <Widget>[
                                        new Text(
                                          "ASTRA HONDA",
                                          style: new TextStyle(fontSize:12.0,
                                              color: const Color(0xFF000000),
                                              fontWeight: FontWeight.w200,
                                              fontFamily: "Roboto"),
                                        ),

                                        new Text(
                                          "BENGKEL KENDARAAN HONDA",
                                          style: new TextStyle(fontSize:12.0,
                                              color: const Color(0xFF000000),
                                              fontWeight: FontWeight.w200,
                                              fontFamily: "Roboto"),
                                        ),

                                        new Text(
                                          "0853-1715-2244",
                                          style: new TextStyle(fontSize:12.0,
                                              color: const Color(0xFF000000),
                                              fontWeight: FontWeight.w200,
                                              fontFamily: "Roboto"),
                                        ),

                                        new Text(
                                          "Buka Pukul 06.00",
                                          style: new TextStyle(fontSize:12.0,
                                              color: const Color(0xFF000000),
                                              fontWeight: FontWeight.w200,
                                              fontFamily: "Roboto"),
                                        ),

                                        new Container(
                                          child:
                                          new Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: <Widget>[
                                                new Icon(
                                                    Icons.star,
                                                    color: const Color(0xFF000000),
                                                    size: 24.0),

                                                new Icon(
                                                    Icons.star,
                                                    color: const Color(0xFF000000),
                                                    size: 24.0),

                                                new Icon(
                                                    Icons.star,
                                                    color: const Color(0xFF000000),
                                                    size: 24.0),

                                                new Icon(
                                                    Icons.star,
                                                    color: const Color(0xFF000000),
                                                    size: 24.0),

                                                new Icon(
                                                    Icons.star_border,
                                                    color: const Color(0xFF000000),
                                                    size: 24.0)
                                              ]

                                          ),

                                          padding: const EdgeInsets.all(0.0),
                                          alignment: Alignment.center,
                                          width: 120.0,
                                          height: 50.0,
                                        )
                                      ]

                                  ),

                                  padding: const EdgeInsets.all(10.0),
                                  alignment: Alignment.center,
                                  width: 150.0,
                                  height: 160.0,
                                )
                              ]

                          ),

                          padding: const EdgeInsets.all(0.0),
                          alignment: Alignment.center,
                        )
                      ]

                  ),

                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                  alignment: Alignment.center,
                  width: 1.7976931348623157e+308,
                  height: 1.7976931348623157e+308,
                )
              ]

          ),

          padding: const EdgeInsets.all(10.0),
          alignment: Alignment.center,
        ),
    );
  }

  void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Tap on " + ' - ' + post.fullName)));
  }
}


class Contact {
  final String fullName;
  final String email;

  const Contact({this.fullName, this.email});
}