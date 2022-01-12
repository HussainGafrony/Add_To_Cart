import 'package:flutter/cupertino.dart';

class SetvalueProvider extends ChangeNotifier {
  var namevalue;
  var lastvalue;

  lisenervalue(val1, val2) {
    namevalue = val1;
    lastvalue = val2;

    print(namevalue);
    print(lastvalue);
    notifyListeners();
  }
}
