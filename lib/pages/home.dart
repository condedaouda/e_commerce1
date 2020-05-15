import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_commerce/pages/card.dart';


// my own import
import 'package:e_commerce/componat/horizontal_listview.dart';
import 'package:e_commerce/componat/product.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.contain,
        images: [
          AssetImage('images/scroll/1.jpg'),
          AssetImage('images/scroll/2.jpg'),
          AssetImage('images/scroll/3.jpg'),
          AssetImage('images/scroll/4.jpg'),
          AssetImage('images/scroll/5.jpg'),
          AssetImage('images/scroll/6.jpg'),
          AssetImage('images/scroll/7.jpg'),
          AssetImage('images/scroll/8.jpg'),
          AssetImage('images/scroll/9.jpg'),
          AssetImage('images/scroll/10.jpg'),
        ],
        autoplay: true,

        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Fashapp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: () {},),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), 
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart() ));
          })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(
              accountName: Text('Conde daouda'), 
              accountEmail: Text('coursavaya@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),

              decoration: new BoxDecoration(
                color: Colors.red
              ),
              
              ),
            //body

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new HomePage()));
              },
                  child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {},
                  child: ListTile(
                title: Text('My compte'),
                leading: Icon(Icons.person, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {},
                  child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
                  child: ListTile(
                title: Text('shopping cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {},
                  child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
                  child: ListTile(
                title: Text('setting'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: () {},
                  child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),

          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,

          // padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categorie'),
          ),

           // horizontal list view begins here
            HorizontalList(),

            // padding widget
          new Padding(padding: const EdgeInsets.all(20.0),
          child: new Text('Recents products'),
          ),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
      );
  }
}