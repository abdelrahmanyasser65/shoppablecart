import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shoppablecart/components/components.dart';
import 'package:shoppablecart/screens/home_screens/home_layout.dart';
import '../home_screens/cart_screen.dart';
import '../home_screens/home_screen.dart';
class AccountAddress extends StatefulWidget {
  const AccountAddress({Key? key}) : super(key: key);

  @override
  State<AccountAddress> createState() => _AccountAddress();
}

class _AccountAddress extends State<AccountAddress> {
  int index=2;
  List Images=[
    'assets/images/Icon_Explore.png',
    'assets/images/Icon_Cart.png',
    'assets/images/Icon_User.png'
  ];

  List<Widget>body=[
    const HomeScreen(),
    const CartScreen(),
    const ShippingAddress(),
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
class ShippingAddress extends StatelessWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  width: 77,
                ),
                const Text(
                  "Shopping Address",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
            Container(
              height: 265,
              padding:const EdgeInsets.symmetric(
                horizontal:16 ,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Row(
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:const [
                         Text("Home Address",style:
                         TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),
                          SizedBox(height: 19,),
                         Text("21, Alex Davidson Avenue, Opposite\n Omegatron, Vicent Smith Quarters, Victoria\n Island, Lagos, Nigeria",style:
                           TextStyle(fontSize: 14),)
                       ],
                     ),
                     const  SizedBox(width: 33,),
                     Container(

                       height: 24,width: 24,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color: HexColor('#092547')
                         ),child:const Center(child: Icon(Icons.check,color: Colors.white,size: 18,)),
                     )
                   ],
                 ),
                  const SizedBox(height: 48,),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const[
                          Text("Work Address",style:
                          TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),
                          SizedBox(height: 19,),
                          Text("19, Martins Crescent, Bank of Nigeria, Abuja,\n Nigeria",style:
                          TextStyle(fontSize: 14),)
                        ],
                      ),
                      const  SizedBox(width: 28,),
                      Container(

                        height: 24,width: 24,
                        decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            color:Colors.black12
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
          const Spacer(),
          Container(
            height: 84,padding:const EdgeInsets.only(
            top: 17,bottom: 17,left: 200,right: 30
          ),
            child: EElevatedButton(
                text: "NEW",
                prColor: '#092547',
                textColor: Colors.white,
                onPressed: (){},
                radius: 2,
                width: 146,
                height: 50),
          )
        ],
      ),
    );
  }

}

