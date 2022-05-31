import 'package:flutter/material.dart';
import 'package:shoppablecart/screens/auth_screens/register_screen.dart';
import 'package:shoppablecart/screens/home_screens/home_layout.dart';
import 'package:shoppablecart/screens/home_screens/home_screen.dart';
import 'package:shoppablecart/screens/home_screens/product_details.dart';

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
      home:  HomeScreen(),

    );
  }
}
