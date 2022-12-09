import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'Images/category/plant.png',
            image_caption: 'Plants'
          ),
          Category(
            image_location: 'Images/category/seeds.png',
            image_caption: 'Seeds'
          ),
          Category(
              image_location: 'Images/category/pots.png',
              image_caption: 'Pots'
          ),
          Category(
              image_location: 'Images/category/fertilizer.png',
              image_caption: 'Fertilizers'
          ),
        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({
    this.image_caption,
    this.image_location
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,
            width: 100.0,
            height: 80.0,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: new Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}

