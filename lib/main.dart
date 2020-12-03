import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'catalogitem.dart';

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
    List<CatalogItem> catalogItems = [
      CatalogItem(nameItem: 'Men Fragrant', priceItem: '245.00', imageItem: 'image_menfragrant.png', descriptionItem: 'Perfume for men.' ),
      CatalogItem(nameItem: 'Women Fragrant', priceItem: '223.00', imageItem: 'image_womenfragrant.png', descriptionItem: 'Perfume for women.' ),
    ];

    Widget catalogItemCard(catalogItem){
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: <Widget>[
              Column(children: <Widget>[
                Image(image: AssetImage('assets/' + catalogItem.imageItem), width: 100, height: 100,)
              ],),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Text(catalogItem.nameItem, style: TextStyle(
                      fontSize: 20.0,
                      fontWeight:FontWeight.bold,
                      )),
                    Text(catalogItem.descriptionItem, style: TextStyle(
                      fontSize: 20.0, 
                      //fontWeight: FontWeight,
                      )),
                    Text(
                      'RM' + catalogItem.priceItem, 

                       style: TextStyle(

                         fontSize: 24.0,
                         fontWeight: FontWeight.bold,
                         color: Colors.purpleAccent[700],
                         fontFamily: 'Courgette'
                     ),
                    ),

                    RaisedButton.icon(
                      onPressed: () {setState(() {
                      item++;
                    });}, 
                    icon: Icon(Icons.add, color: Colors.white), 
                    label: Text('Add Perfume', 
                    style: TextStyle(color: Colors.white, fontSize: 20.0)),
                    color: Colors.blue,
                  ),



                  ]
                ),
              )

            ],),
          )
        ),
      );
    } 

    @override
    Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
      title: Text('Flutter Eau de Parfume'),
      centerTitle: true,
      backgroundColor: Colors.pinkAccent,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
          child: Badge(
            position: BadgePosition.topEnd(top: 0.0, end: 3.0),
            badgeContent: Text(item.toString(), style: TextStyle(color: Colors.white)),
            child: IconButton(icon: Icon(Icons.shopping_basket), onPressed: () {
              setState(() {
                item = 0;
              });
            },),
            ),
        )
      ],
    ),

    body: Column(children: catalogItems.map((catalogItem) => catalogItemCard(catalogItem)).toList(),),

    // body: Padding(
    //   padding: const EdgeInsets.fromLTRB(0.0, 300.0, 0.0, 0.0),
    //   child: Column(children: <Widget>[
    //     Center(
    //       child: Text('Smell Fresh From Hair to Toe', 
    //       style: TextStyle(
    //         fontSize: 24.0,
    //         fontWeight: FontWeight.bold,
    //         color: Colors.purpleAccent[700],
    //         fontFamily: 'Courgette'
    //         ),
    //         ),
    //     ),

    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 15.0),
    //       child: Center(
    //         child: Text('Quantity: $item', 
    //         style: TextStyle(
    //           fontSize: 24.0,
    //           fontWeight: FontWeight.bold,
    //           color: Colors.black,  
    //           ),
    //           ),
    //       ),
    //     ),

    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
    //       child: Center(
    //         child: RaisedButton.icon(
    //           onPressed: () {setState(() {
    //             item = 0;
    //           });}, 
    //           icon: Icon(Icons.restore, color: Colors.white), 
    //           label: Text('Restore Perfume', 
    //           style: TextStyle(color: Colors.white, fontSize: 20.0)),
    //           color: Colors.redAccent,
    //           )
    //       ),
    //     ),


    //   ],
    //   )
      
      
    // ),

    

    //   floatingActionButton: FloatingActionButton(
    //     onPressed:(){setState(() {
    //       item++;
    //     });},
    //     child: Icon(
    //       Icons.add
    //     ),
    //     backgroundColor: Colors.pinkAccent,
    //   ),
      
  );
    }
}