import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/cardIcon.dart';
import 'package:statemanagement/provider/cartshopping.dart';

class Cardpage extends StatefulWidget {
  @override
  _CardpageState createState() => _CardpageState();
}

class _CardpageState extends State<Cardpage> {
  @override
  List products = [
    {
      'id': 1,
      'title': 'product 1',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price': '20₺',
    },
    {
      'id': 2,
      'title': 'product 2',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price': '30₺',
    },
    {
      'id': 3,
      'title': 'product 3',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price': '78₺',
    },
    {
      'id': 4,
      'title': 'product 4',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price': '35₺',
    },
    {
      'id': 5,
      'title': 'product 5',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price': '26₺',
    },
    {
      'id': 6,
      'title': 'product 6',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price': '75₺',
    },
    {
      'id': 7,
      'title': 'product 7',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price': '25₺',
    },
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardScreen'),
        centerTitle: true,
        actions: [
          Stack(clipBehavior: Clip.none, children: [
            IconButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Shoppingpage(),
                    )),
                icon: Icon(Icons.shopping_cart_outlined)),
            Positioned(
              top: 1,
              right: 30,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Text(
                  '${Provider.of<CartShoppingprovider>(context).card.length}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ]),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => Card(
          elevation: 8,
          margin: EdgeInsets.only(top: index == 0 ? 25 : 15),
          child: ListTile(
            leading: Text('${products[index]['price']}'),
            title: Text('${products[index]['title']}'),
            subtitle: Text('${products[index]['description']}'),
            trailing: Provider.of<CartShoppingprovider>(context)
                    .checkIFProductToCard(products[index]['id'])
                ? GestureDetector(
                    child: Icon(Icons.delete),
                    onTap: () {
                      print('delete');
                      Provider.of<CartShoppingprovider>(context, listen: false)
                          .deleteproductfromCart(products[index]['id']);
                    })
                : GestureDetector(
                    child: Icon(Icons.shopping_cart),
                    onTap: () {
                      Provider.of<CartShoppingprovider>(context, listen: false)
                          .cardvalui(products[index]);
                    }),
          ),
        ),
      ),
    );
  }
}
