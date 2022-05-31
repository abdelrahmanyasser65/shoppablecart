import 'package:flutter/material.dart';
import 'package:shoppablecart/screens/home_screens/account_screen.dart';
import 'package:shoppablecart/screens/home_screens/cart_screen.dart';
import 'package:shoppablecart/screens/home_screens/home_screen.dart';
class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget>body=[
    HomeScreen(),
    CartScreen(),
    AccountScreen(),
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255,
          255, 255, 0.97),
      body:body[currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentIndex ,
        elevation: 1,backgroundColor: Colors.white,
        onTap: (val){
          setState((){
            currentIndex=val;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ad_units,size: 50,),label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.ad_units),label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.ad_units),
              label: 'sdkdk ',),

        ],
      ),
    );
  }
}
