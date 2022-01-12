import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/provider/cartshopping.dart';

class Shoppingpage extends StatefulWidget {
  @override
  _ShoppingpageState createState() => _ShoppingpageState();
}

class _ShoppingpageState extends State<Shoppingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping'),
      ),
      body: ListView.builder(
        itemCount: Provider.of<CartShoppingprovider>(context).card.length,
        itemBuilder: (BuildContext context, int index) => Card(
          elevation: 8,
          margin: EdgeInsets.only(top: index == 0 ? 25 : 15),
          child: ListTile(
            leading: Text(
                '${Provider.of<CartShoppingprovider>(context).card[index]['price']}'),
            title: Text(
                '${Provider.of<CartShoppingprovider>(context).card[index]['title']}'),
            subtitle: Text(
                '${Provider.of<CartShoppingprovider>(context).card[index]['description']}'),
          ),
        ),
      ),
    );
  }
}
