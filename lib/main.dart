import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greeniya_app/Component/horizontel_listview.dart';
import 'package:greeniya_app/Component/ItemList.dart';
void main()
{
  runApp(new MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}
class Myapp extends StatefulWidget
{
  @override
  _State createState() => new _State();
}
class _State extends State<Myapp>
{
  @override
  Widget build(BuildContext context) {
    Widget img_carousel=new Container(
    height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('Images/fl1.jpg'),
          AssetImage('Images/mg.jpg'),
          AssetImage('Images/fru1.jpg'),
          AssetImage('Images/fl2.jpg'),
          AssetImage('Images/med1.jpg'),

        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title:new Text('Greeniya'),
        actions: [
          new IconButton(icon: new Icon(Icons.search,color: Colors.white), onPressed: (){}),
          new IconButton(icon: new Icon(Icons.shopping_cart,color: Colors.white), onPressed: (){}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
             new UserAccountsDrawerHeader(
                 accountName: new Text('Kirupakaran'),
                 accountEmail: new Text('Kirupakaran094@gmail.com'),
                 currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: new Icon(Icons.person,color: Colors.white,)
                  ),
                 ),
               decoration: new BoxDecoration(
                 color: Colors.lightGreen
               ),
             ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: new Text('Home'),
                leading: new Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: new Text('My Account'),
                leading: new Icon(Icons.person),
              ),
            ),
            InkWell(
                onTap: (){},
              child: ListTile(
                title: new Text('My Orders'),
                leading: new Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
                onTap: (){},
              child: ListTile(
                title: new Text('Categories'),
                leading: new Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: new Text('Settings'),
                leading: new Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: new Text('Exit'),
                leading: new Icon(Icons.exit_to_app),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: [
          img_carousel,
          new Padding(padding: const EdgeInsets.all(8.0),child: new Text('Categories'),),
          HorizontelList(),
          new Padding(padding: const EdgeInsets.all(8.0),child: new Text('Recent Items'),),
          Container(
            height: 280,
            child: ItemList(),
          ),
        ],
      ),
    );
  }

}