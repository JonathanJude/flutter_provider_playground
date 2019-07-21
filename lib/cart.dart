import 'package:flutter/material.dart';
import 'package:flutter_provider_play_ground/cart_notifier.dart';
import 'package:flutter_provider_play_ground/model.dart';
import 'package:flutter_provider_play_ground/shop_item.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: Consumer<CartNotifier>(
        builder: (context, cart, child){
            return ListView(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          children: cart.cartData.map((data){
            return ShopItem(data: data);
          }).toList(),
            );
        }
        ),
    );
  }
}