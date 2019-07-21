import 'package:flutter/foundation.dart';
import 'package:flutter_provider_play_ground/model.dart';

class CartNotifier extends ChangeNotifier {

  List<ShopData> _items = [];

  List<ShopData> get cartData => _items;

  //add to cart
  void add(ShopData item){
    _items.add(item);
    notifyListeners();
  }

  //remove from cart
  void remove(ShopData item){
    _items.remove(item);
    //_items.removeAt(index);
    notifyListeners();
  }

}