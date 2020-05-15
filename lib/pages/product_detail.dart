import 'package:flutter/material.dart';
import 'package:e_commerce/main.dart';
import 'home.dart';

class ProductDetail extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetail({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
  });

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage() ));},
          child: Text('Fashapp')),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: () {},),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("\$${widget.product_detail_old_price}",
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),
                        ),
                      ),

                      Expanded(
                        child: Text("\$${widget.product_detail_new_price}",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),


          // ------------the first button-------------------
          Row(
            children: <Widget>[

              // ----------te size button--------------------
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Size"),
                      content: new Text("Choose the size"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("close"),
                        )
                      ],
                    );
                  }
                  );
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Size"),
                    ),

                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
                ),
              ),

              // ----------te size button--------------------
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Colors"),
                      content: new Text("Choose a color"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("close"),
                        )
                      ],
                    );
                  }
                  );
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Col"),
                    ),

                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
                ),
              ),

              // ----------te size button--------------------
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Quantity"),
                      content: new Text("Choose the quantity"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("close"),
                        )
                      ],
                    );
                  }
                  );
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Qty"),
                    ),

                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
                ),
              )
            ],
          ),

          // ------------the first button-------------------
          Row(
            children: <Widget>[

              // ----------te size button--------------------
              Expanded(
                child: MaterialButton(onPressed: () {},
                color: Colors.red,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("Buy now")
                ),
              ),

              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: () {}),
              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: () {})

            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Welcome to our page, this product is a new brand in very good quality and fashionable."),
          ), 

          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product name", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name),
              )
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product brand", style: TextStyle(color: Colors.grey),),
              ),

              // Remember to reate the product brand
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("Brand X"),
              )
            ],
          ),
          
          // Add the product condition
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product condition", style: TextStyle(color: Colors.grey),),
              ),

              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("New"),
              )
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar products"),
            ),
          //Similar product section
          Container(
            height: 360.0,
            child: Similar_product(),
          )
        ],
      ),
    );
  }
}

class Similar_product extends StatefulWidget {
  @override
  _Similar_productState createState() => _Similar_productState();
}

class _Similar_productState extends State<Similar_product> {
  var product_list = [
      {
        "name": "white",
        "picture":"images/product/17.jpg",
        "old_price":50,
        "price":25,
      }
      ,
      {
        "name": "red",
        "picture":"images/product/18.jpg",
        "old_price":30,
        "price":15,
      }
      ,
      {
        "name": "yellow",
        "picture":"images/product/19.jpg",
        "old_price":50,
        "price":10,
      }
      ,
      {
        "name": "blue",
        "picture":"images/product/20.jpg",
        "old_price":18,
        "price":8,
      }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Similar_single_prod(
          product_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Similar_single_prod extends StatelessWidget {

  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_old_price,
    this.prod_picture,
    this.prod_price,
    this.product_name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
          tag: new Text("hero 1"), 
          child: Material(
            child: InkWell(
              onTap: () =>Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => ProductDetail(

                  //here we are pssing the value of the product to the product detail
                  product_detail_name: product_name,
                  product_detail_new_price: prod_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_picture: prod_picture
                ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)
                        ),
                        Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                    ],
                  )
                ),
                child: Image.asset(
                  prod_picture,
                fit: BoxFit.cover,
                ),
              ),
              ),),),
    );
  }
}