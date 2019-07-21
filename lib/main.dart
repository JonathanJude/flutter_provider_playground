import 'package:flutter/material.dart';
import 'package:flutter_provider_play_ground/cart_notifier.dart';
import 'package:flutter_provider_play_ground/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartNotifier>(
        builder: (_) => CartNotifier(),
          child: MaterialApp(
        title: 'Cart',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MyHome(),
      ),
    );
  }
}

