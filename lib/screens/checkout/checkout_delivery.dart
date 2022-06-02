import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shoppablecart/components/components.dart';
import 'package:shoppablecart/screens/checkout/checkot_address.dart';
class CheckoutDelivery extends StatefulWidget {
  const CheckoutDelivery({Key? key}) : super(key: key);

  @override
  State<CheckoutDelivery> createState() => _CheckoutDeliveryState();
}

class _CheckoutDeliveryState extends State<CheckoutDelivery> {
 List<String>titles=[
   'Standard Delivery',
   'Next Day Delivery',
   'Nominated Delivery'
 ];
List description=[
  'Order will be delivered between 3 - 5\n business days',
  'Place your order before 6pm and your items \n will be delivered the next day',
  'Pick a particular date from the calendar and\n order will be delivered on selected date'
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Container(
           height: 130,width: double.infinity,
           padding:const  EdgeInsets.only(
             top:35,right: 16 ,left: 16
           ),
           child: Row(
             children: [
               InkWell(
                   onTap:(){},
                   child:const Icon(Icons.arrow_back_ios,size: 18,)),
               const  SizedBox(width:112 ,),
               const Text("Checkout",style:
                 TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
             ],
           ),
         ),
          const SizedBox(height: 28,),
          Container(
            height: 460,width: double.infinity,
           padding:const EdgeInsets.only(
             left: 16,right: 16
           ),
           child: Column(
             children: [
               Row(
                 children: [
                  buildCir1(true) ,
                   buildDiveder(122),
                   buildCir1(false),
                   buildDiveder(110),
                   buildCir1(false),
                 ],
               ),
               const SizedBox(height: 12,),
               Row(
                 children:const [
                   Expanded(
                     child: Text("Delivery",style:
                       TextStyle(fontSize: 12,fontWeight:FontWeight.w400),),
                   ),
                   SizedBox(width: 100,),
                  Expanded(child:  Text("Address",style:
                  TextStyle(fontSize: 12,fontWeight: FontWeight.w300),)),
                   SizedBox(width:90 ,),
                  Expanded(child:  Text("Summer",style:
                  TextStyle(fontSize: 12,fontWeight: FontWeight.w300),))
                 ],
               ),
               const SizedBox(height: 38,),
               buildItems(0, true),
               const  SizedBox(height: 38,),
               buildItems(1, false),
               const SizedBox(height: 38,),
               buildItems(2, false),

             ],
           ),
          ),
          const  SizedBox(height: 85,),
          Container(
            height: 95,width: double.infinity,
            padding:const EdgeInsets.only(
              left: 30,right: 30,top: 17
            ),
            child:Row(
              children: [
                const Spacer(),
                EElevatedButton(
                    text: 'NEXT',
                    prColor: '#092547',
                    textColor: Colors.white,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const CheckoutAddress()));
                    },
                    radius: 3,
                    width: 145,
                    height: 50)
              ],
            ) ,
          ),
        ],
      ),
    );

  }
  Widget buildCir1(boolin)=>Container(
    height: 30,width: 30,
    padding:const EdgeInsets.all(4),
    decoration: BoxDecoration(
        border: Border.all(
            color: HexColor('#DDDDDD'),
            width: 1
        ),
        shape: BoxShape.circle
    ),
    child:boolin? Container(
      width: 16,height: 16,
      decoration:const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black
      ),
    ):null,
  );
  Widget buildDiveder(double val)=>SizedBox(
    width: val,
    child: Container(
      height: 1,color: HexColor('#DDDDDD'),
    ),

  );
  Widget buildItems(index,booll)=>SizedBox(
    width: double.infinity,
    height: 95,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titles[index],style:
        const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        const SizedBox(height: 19,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(description[index],
              style:const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,height:1.5),),
            const Spacer(),
            Container(
              padding:const EdgeInsets.all(3),
              width: 20,height: 20,
              decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black12
              ),
              child:booll? Container(
                height: 14,width: 14,
                decoration: BoxDecoration(
                    color: HexColor('#092547'),
                    shape: BoxShape.circle
                ),
              ):null,
            )
          ],
        ),
      ],
    ),
  );
}
