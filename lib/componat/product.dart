import 'package:flutter/material.dart';
import 'package:e_commerce/pages/product_detail.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
      {
        "name": "red",
        "picture":"images/product/11.jpg",
        "old_price":120,
        "price":85,
      },
      {
        "name": "blue",
        "picture":"images/product/12.jpg",
        "old_price":100,
        "price":50,
      }
      ,
      {
        "name": "gray",
        "picture":"images/product/14.jpg",
        "old_price":30,
        "price":10,
      }
      ,
      {
        "name": "white",
        "picture":"images/product/15.jpg",
        "old_price":100,
        "price":50,
      }
      ,
      {
        "name": "gray",
        "picture":"images/product/16.jpg",
        "old_price":30,
        "price":13,
      }
      ,
      {
        "name": "white",
        "picture":"images/product/17.jpg",
        "old_price":100,
        "price":50,
      }
      ,
      {
        "name": "white",
        "picture":"images/product/18.jpg",
        "old_price":100,
        "price":60,
      }
      ,
      {
        "name": "black",
        "picture":"images/product/19.jpg",
        "old_price":80,
        "price":18,
      }
      ,
      {
        "name": "red",
        "picture":"images/product/20.jpg",
        "old_price":65,
        "price":22,
      }

      ,
      {
        "name": "green",
        "picture":"images/product/21.jpg",
        "old_price":100,
        "price":90,
      }

      ,
      {
        "name": "black",
        "picture":"images/product/22.jpg",
        "old_price":30,
        "price":12,
      }

      ,
      {
        "name": "black",
        "picture":"images/product/23.jpg",
        "old_price":65,
        "price":30,
      }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Single_prod(
          product_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {

  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
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