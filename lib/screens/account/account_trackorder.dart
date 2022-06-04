import 'package:flutter/material.dart';
import 'package:shoppablecart/components/components.dart';
import 'package:shoppablecart/screens/home_screens/home_layout.dart';
import '../home_screens/cart_screen.dart';
import '../home_screens/home_screen.dart';
import 'account_track_iterinary.dart';
class AccountTrackOrddr extends StatefulWidget {
  const AccountTrackOrddr({Key? key}) : super(key: key);

  @override
  State<AccountTrackOrddr> createState() => _AccountTrackOrddrState();
}

class _AccountTrackOrddrState extends State<AccountTrackOrddr> {
  int index=2;
  List Images=[
    'assets/images/Icon_Explore.png',
    'assets/images/Icon_Cart.png',
    'assets/images/Icon_User.png'
  ];

List<Widget>body=[
  const HomeScreen(),
  const CartScreen(),
  AccountTrackOrder(),
];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: body[index],
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
class AccountTrackOrder extends StatelessWidget {
  List images=[
    'assets/images/ac1.png',
    'assets/images/ac2.png',
    'assets/images/ac3.png',
    'assets/images/ac1.png',
  ];
  List titles=[
    'OD - 2425092340 - N',
    'OD - 2425092340 - N',
    'OD - 2425092340 - N',
    'OD - 2425092340 - N',
  ];
  List price=[
    '\$4394',
    '\$224',
    '\$1000',
    '\$1000',
  ];

  AccountTrackOrder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(255, 255, 255, 0.05),
      body: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 35, right: 16, left: 16),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeLayout(2)));
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                    )),
                const SizedBox(
                  width: 112,
                ),
                const Text(
                  "Track Order",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Container(
            height: 550,
            padding: const EdgeInsets.only(
              left: 16,right: 16
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const  Text("sept 23, 2018",style:
                    TextStyle(fontSize:15,fontWeight: FontWeight.w300 ),),
                  const SizedBox(height: 15,),
                  buildItems(0, false,(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Iterniray()));
                  }),
                  const  SizedBox(height: 30,),
                  const  Text("sept 23, 2018",style:
                  TextStyle(fontSize:15,fontWeight: FontWeight.w300 ),),
                  const SizedBox(height: 15,),
                  buildItems(1, true,(){}),
                  buildItems(2, true,(){}),
                  buildItems(3, true,(){})
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget buildItems(index,isDelivered,onpressed)=>Container(
    padding:const EdgeInsets.only(
        top: 18,bottom: 17,right: 26,left: 21
    ),
    height: 150,
    color: Colors.white,
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(titles[index],style:
             const TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
            const SizedBox(height: 8,),
            Text(price[index],style:
            TextStyle(fontSize: 14,
            color: isDelivered?Colors.green:Colors.black
            ),),
            const  SizedBox(height: 24,),
            EElevatedButton(
                text: isDelivered?'Delivered':'In Transit',
                prColor: isDelivered?'#00C569':'#FFB900',
                textColor: Colors.white,
                onPressed: onpressed,
                radius: 2,
                width: 80,
                height: 30)

          ],
        ),
        const SizedBox(width: 28,),
        Image(image: AssetImage(images[index]),height: 105,width: 105,),
      ],
    ),
  );
}

