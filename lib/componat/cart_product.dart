import 'package:flutter/material.dart';

class Cart_product extends StatefulWidget {
  @override
  _Cart_productState createState() => _Cart_productState();
}

class _Cart_productState extends State<Cart_product> {

  var Products_on_the_cart = [
      {
        "name": "chimise",
        "picture":"images/product/11.jpg",
        "price":85,
        "size": "M",
        "color": "Red",
        "quantity" : 1,
      },
      {
        "name": "blazer",
        "picture":"images/product/18.jpg",
        "price":50,
        "size": "7",
        "color": "black",
        "quantity" : 1,
      }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index){
        return new Single_cart_product(
          cart_product_name: Products_on_the_cart[index]["name"],
          cart_prod_color: Products_on_the_cart[index]["color"],
          cart_prod_gty: Products_on_the_cart[index]["quantity"],
          cart_product_size: Products_on_the_cart[index]["size"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_picture: Products_on_the_cart[index]["picture"],
        );
      }
      );
  }
}

class Single_cart_product extends StatelessWidget {

  final cart_product_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_product_size;
  final cart_prod_color;
  final cart_prod_gty;

  Single_cart_product({
    this.cart_prod_color,
    this.cart_prod_gty,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_product_name,
    this.cart_product_size

  });
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // Leading section
        leading: new Image.asset(cart_prod_picture, width: 50.0,),

        // Title section
        title: new Text(cart_product_name),

        // Subtitle section
        subtitle: new Column(
          children: <Widget>[
            // row inside the column
            new Row(
              children: <Widget>[
                // this section is for this size of the product
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_product_size, style: TextStyle(color: Colors.red),),
                ),

                // This section is for the product color
                new Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                  child: new Text("Color"),
                  ),

                  Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: new Text(cart_prod_color, style: TextStyle(color: Colors.red),),
                ),

              ],
            ),

            // This section is for the product price
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}", 
              style: TextStyle(fontSize: 17.0,
              fontWeight: FontWeight.bold,
              color: Colors.red
              ),),
            )
          ],
        ),

// un probleme ici dabord
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            new Text("$cart_prod_gty"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
          ],
        ),
      ),
    );
  }
}