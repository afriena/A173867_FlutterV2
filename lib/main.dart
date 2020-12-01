import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()));  
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int item = 0;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
      title: Text('Flutter Eau de Parfume'),
      centerTitle: true,
      backgroundColor: Colors.pinkAccent,
    ),

    body: Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 300.0, 0.0, 0.0),
      child: Column(children: <Widget>[
        Center(
          child: Text('Smell Fresh From Hair to Toe', 
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.purpleAccent[700],
            fontFamily: 'Courgette'
            ),
            ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 15.0),
          child: Center(
            child: Text('Quantity: $item', 
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,  
              ),
              ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
          child: Center(
            child: RaisedButton.icon(
              onPressed: () {setState(() {
                item = 0;
              });}, 
              icon: Icon(Icons.restore, color: Colors.white), 
              label: Text('Restore Perfume', 
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
              color: Colors.redAccent,
              )
          ),
        ),


      ],
      )
      
      
    ),

    

      floatingActionButton: FloatingActionButton(
        onPressed:(){setState(() {
          item++;
        });},
        child: Icon(
          Icons.add
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      
  );
    }
}