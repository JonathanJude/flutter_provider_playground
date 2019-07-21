import 'package:flutter/material.dart';
import 'package:flutter_provider_play_ground/cart_notifier.dart';
import 'package:flutter_provider_play_ground/model.dart';
import 'package:provider/provider.dart';

class ShopItem extends StatelessWidget {
  const ShopItem({Key key, this.data}) : super(key: key);

  final ShopData data;

  @override
  Widget build(BuildContext context) {
    return Consumer<CartNotifier>(
      builder: (context, cart, child){
        return ListTile(
        leading: Icon(Icons.person),
        title: Text(data.itemName, style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold,)),
        subtitle: Text(data.price, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.grey)),
        onLongPress: 
        (){
          //remove from cart 
          cart.remove(data);
        },
        onTap: (){
          //add to cart from here
          cart.add(data);
        },
      );
      }
    );
  }
}