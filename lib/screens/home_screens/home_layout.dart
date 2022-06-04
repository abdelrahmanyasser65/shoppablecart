import 'package:flutter/material.dart';
import 'package:shoppablecart/screens/account/account_screen.dart';
import 'package:shoppablecart/screens/home_screens/cart_screen.dart';
import 'package:shoppablecart/screens/home_screens/home_screen.dart';
class HomeLayout extends StatefulWidget {
int index;
HomeLayout(this.index, {Key? key}) : super(key: key);
  @override
  State<HomeLayout> createState() => _HomeLayoutState(index);
}

class _HomeLayoutState extends State<HomeLayout> {
  int index;
  List<String> Images=[
    'assets/images/Icon_Explore.png',
    'assets/images/Icon_Cart.png',
    'assets/images/Icon_User.png'
  ];

  _HomeLayoutState(this.index);
  List<Widget>body=[
    const HomeScreen(),
    const CartScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:body[index] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:index ,
        elevation: 2,backgroundColor: Colors.white,
        onTap: (val){
          setState((){
            index=val;
          });
        },

        items: [
          BottomNavigationBarItem(
              icon: index==0?Container(
                height: 60,width: 49,
                padding:const EdgeInsets.only(
                    top: 27
                ),
                child: Column(
                  children: [
                    const Text('Explore',style:
                    TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    const  SizedBox(height: 4,),
                    Container(
                      decoration:const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle
                      ),
                      height: 3,width: 3,
                    ),
                  ],
                ),
              ):Image(image: AssetImage(
                Images[0],
              ),),
              label: ''),
          BottomNavigationBarItem(
              icon: index==1?Container(
                height: 60,width: 49,
                padding:const EdgeInsets.only(
                    top: 27
                ),
                child: Column(
                  children: [
                    const  Text('Cart',style:
                    TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    const  SizedBox(height: 4,),
                    Container(
                      decoration:const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle
                      ),
                      height: 3,width: 3,
                    ),
                  ],
                ),
              ):Image(image: AssetImage(
                Images[1],
              ),),
              label: ''),
          BottomNavigationBarItem(
              icon: index==2?Container(
                height: 60,width: 60,
                padding:const EdgeInsets.only(
                    top: 27
                ),
                child: Column(
                  children: [
                    const  Text('Account',style:
                    TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 4,),
                    Container(
                      decoration:const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle
                      ),
                      height: 3,width: 3,
                    ),
                  ],
                ),
              ):Image(image: AssetImage(
                Images[2],
              ),),
              label: ''),

        ],
      ),
    );
  }
}
