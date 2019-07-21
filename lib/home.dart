import 'package:flutter/material.dart';
import 'package:flutter_provider_play_ground/badge_icon_button.dart';
import 'package:flutter_provider_play_ground/cart.dart';
import 'package:flutter_provider_play_ground/cart_notifier.dart';
import 'package:flutter_provider_play_ground/model.dart';
import 'package:flutter_provider_play_ground/shop_item.dart';
import 'package:provider/provider.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping"),
        centerTitle: true,
        actions: <Widget>[
          Consumer<CartNotifier>(
            builder: (context, cart, __){
              return BadgeIconButton(
                itemCount: cart.cartData.length,
                badgeColor: Colors.black,
              onPressed: (){
                Navigator
                .of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                return new CartScreen();
                }));
              },
              icon: Icon(Icons.shopping_cart),
            );
            }
          )
        ],
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          children: shoppingDatas.map((data){
            return ShopItem(data: data);
          }).toList(),
        ),
    );
  }
}