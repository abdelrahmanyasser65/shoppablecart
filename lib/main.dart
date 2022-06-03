import 'package:flutter/material.dart';
import 'package:shoppablecart/screens/checkout/checkot_address.dart';
import 'package:shoppablecart/screens/checkout/checkout_delivery.dart';
import 'package:shoppablecart/screens/checkout/checkout_ordersummary.dart';
import 'package:shoppablecart/screens/home_screens/home_layout.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.grey,

      ),
      home:  CheckoutOrderSummary(),

    );
  }
}
