import 'package:flutter/material.dart';
void main(){
  runApp(ShopApp());
}
class ShopApp extends StatelessWidget {
  const ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,

    );
  }
}
