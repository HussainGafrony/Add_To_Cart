import 'package:flutter/cupertino.dart';

class CartShoppingprovider extends ChangeNotifier {
  List card = [];
  cardvalui(product) {
    card.add(product);
    print('product with this name : ${product['title']} was added to cart');
    notifyListeners();
  }

  checkIFProductToCard(productID) {
    if (card.length > 0) {
      var result = card.where((element) => element['id'] == productID);
      if (result.isEmpty) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

  deleteproductfromCart(productId) {
    card.removeWhere((element) => element['id'] == productId);
    print(card.toString());
    notifyListeners();
  }
}
