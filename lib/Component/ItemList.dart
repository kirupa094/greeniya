import 'package:flutter/material.dart';
import 'package:greeniya_app/pages/item_details.dart';
class ItemList extends StatefulWidget {
  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  var items=[
    {
      "name":"Adenium Red ",
      "picture":"Images/items/Adenium red.jpg",
      "price":"Rs 560.00",
    },
    {
      "name":"Aglaonema",
      "picture":"Images/items/Aglaonema Snow White.jpg",
      "price":"Rs 499.00",
    },
    {
      "name":"Anthurium Red ",
      "picture":"Images/items/Anthurium Red Plant.jpg",
      "price":"Rs 1,199.00",
    },
    {
      "name":"Indian Goosberry",
      "picture":"Images/items/Amla.jpg",
      "price":"Rs 249.00",
    },

    {
      "name":"Hanging Basket",
      "picture":"Images/items/Blossom Hanging Basket Blue (Pack of 3).jpg",
      "price":"Rs 269.00",
    },
    {
      "name":"Designer Pot",
      "picture":"Images/items/Designer Pot No. - 02 (Pack of Three).jpg",
      "price":"Rs 829.00",
    },
    {
      "name":"Calanchchu",
      "picture":"Images/items/Calanchchu.jpg",
      "price":"Rs 499.00",
    },
    {
      "name":"Ceramic Pot Square ",
      "picture":"Images/items/Ceramic Pot Square Black 3inch (Pack of 3).jpg",
      "price":"Rs 449.00",
    },

    {
      "name":"Garden Angel ",
      "picture":"Images/items/Garden Angel Fertilizer.jpg",
      "price":"Rs 229.00",
    },
    {
      "name":"Aloe Vera Plant",
      "picture":"Images/items/Aloe Vera Plant.jpg",
      "price":"Rs 249.00",
    },
    {
      "name":" coco soil",
      "picture":"Images/items/Soil - Mix.jpg",
      "price":"Rs 449.00",
    },
    {
      "name":"Coco Chips",
      "picture":"Images/items/Coco Chips.jpg",
      "price":"Rs 499.00",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,

        ),
        itemBuilder: (BuildContext,int index){
        return Single_Items(
          item_name:items[index]['name'] ,
          item_picture:items[index]['picture'] ,
          item_price: items[index]['price'],
        );
        }
    );
  }
}

class Single_Items extends StatelessWidget {
  final item_name;
  final item_picture;
  final item_price;
  Single_Items({
    this.item_name,
    this.item_picture,
    this.item_price
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: item_name,
        child: Material(
          child: InkWell(
                 onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(
                     builder: (context) => new Item_Details(
                       item_details_name: item_name,
                       item_details_picture: item_picture,
                       item_details_price: item_price,
                     ))),
                  child: GridTile(
                    footer: Container(
                      color: Colors.white70,
                      child: ListTile(
                       title: Text(item_name,style: TextStyle(fontSize:10),),
                        subtitle: Text(item_price,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                      ),
                    ),
                    child:Image.asset(item_picture,
                    fit: BoxFit.cover,) ,

                  ),
          ),
        ),
      ),
    );
  }
}
