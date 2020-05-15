import 'package:flutter/material.dart';


class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/imagesCategories/7.jpg',
            image_caption: 'shirt',
          ),

          Category(
            image_location: 'images/imagesCategories/9.jpg',
            image_caption: 'trousers',
          ),

          Category(
            image_location: 'images/imagesCategories/10.jpg',
            image_caption: 'sleeve',
          ), 

          Category(
            image_location: 'images/imagesCategories/13.jpg',
            image_caption: 'shirt',
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
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: () {},
    child: Container(
      width: 100.0,
          child: ListTile(
        title: Image.asset(image_location,
        width: 100.0,
        height: 80.0,
        ),
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(image_caption),
        )
      ),
    ),
    ),
    );
  }
}