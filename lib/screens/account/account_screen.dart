import 'package:flutter/material.dart';
import 'package:shoppablecart/screens/account/account_trackorder.dart';

import 'account_address.dart';
class AccountScreen extends StatelessWidget {
  List titles=[
    'Edit Profile',
    'Shipping Address',
    'Order History',
    'Cards',
    'Notifications',
    'Log Out'
  ];
  List images=[
    'assets/images/Icon_Edit-Profile.png',
    'assets/images/Icon_Location.png',
    'assets/images/Icon_History.png',
    'assets/images/Icon_Payment.png',
    'assets/images/Icon_Alert.png',
    'assets/images/Icon_Exit.png',
  ];

  AccountScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.only(
          left: 21,top: 58,right:35
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const  Image(image:
                AssetImage(
                    'assets/images/Avatar.png'
                )
                  ,height: 120,width: 120,),
                const   SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const [
                      Text("David Spade",style:
                      TextStyle(fontSize:23,fontWeight: FontWeight.w400 ),),
                    SizedBox(height: 6,),
                    Text("iamdavid@gmail.com",style:
                      TextStyle(fontSize: 14),)
                  ],
                )
              ],
            ),
            const SizedBox(height: 112,),
            buildItimes(images[0], titles[0], (){}),
            const SizedBox(height: 20,),
            buildItimes(images[1], titles[1], (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const AccountAddress()));

            }),
            const   SizedBox(height: 20,),
            buildItimes(images[2], titles[2], (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const AccountTrackOrddr()));
            }),
            const SizedBox(height: 20,),
            buildItimes(images[3], titles[3], (){}),
            const SizedBox(height: 20,),
            buildItimes(images[4], titles[4], (){}),
            const  SizedBox(height: 20,),
            buildItimes(images[5], titles[5], (){}),
          ],
        ),
      ),
    );
  }
  Widget buildItimes(image,titel,function)=>InkWell(
    onTap: function,
    child: SizedBox(
      height: 50,
      child: Row(
        children: [
          Image(image: AssetImage(
              image
          ),),
          const   SizedBox(width: 15,),
          Text(titel,style:
          const   TextStyle(fontSize: 18),),
          const  Spacer(),
          InkWell(
              onTap:function,
              child:const Icon(Icons.arrow_forward_ios,size: 17,))
        ],
      ),
    ),
  );
}
