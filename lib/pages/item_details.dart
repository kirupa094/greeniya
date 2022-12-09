import 'package:flutter/material.dart';

class Item_Details extends StatefulWidget {
  final item_details_name;
  final item_details_picture;
  final item_details_price;
  Item_Details(
  {
    this.item_details_name,
    this.item_details_picture,
    this.item_details_price
  }
      );
  @override
  _Item_DetailsState createState() => _Item_DetailsState();
}

class _Item_DetailsState extends State<Item_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.green,
          title:new Text('Greeniya'),
          actions: [
            new IconButton(icon: new Icon(Icons.search,color: Colors.white), onPressed: (){}),
            new IconButton(icon: new Icon(Icons.shopping_cart,color: Colors.white), onPressed: (){}),
          ],
        ),
      body: new ListView(
        children: [
          new Container(
            height: 300,
            child: GridTile(
              child: Container(
                color:Colors.white,
                child: Image.asset(widget.item_details_picture),
              ),
            ),
          ),
          new Container(
            height: 40,
            child: ListTile(
              title: new Text(widget.item_details_price,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            ),
          ),
          new Container(
            height: 40,
            child: ListTile(
              title: new Text(widget.item_details_name,style: TextStyle(color: Colors.grey,fontSize: 18),),
            ),
          ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: new Row(
            children: [
              Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy now")
                  )
              ),
              new IconButton(icon:Icon(Icons.add_shopping_cart),color:Colors.red,onPressed: (){},),
              new IconButton(icon:Icon(Icons.favorite_border),color: Colors.red,onPressed: (){},)
            ],
          ),
        )
        ],
      ),
    );
  }
}
