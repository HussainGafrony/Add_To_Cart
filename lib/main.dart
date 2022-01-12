import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/card.dart';
import 'package:statemanagement/cardIcon.dart';
import 'package:statemanagement/homeScreen.dart';
import 'package:statemanagement/provider/cartshopping.dart';
import 'package:statemanagement/provider/setvalue.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SetvalueProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CartShoppingprovider(),
        ),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Cardpage()),
    );
  }
}
