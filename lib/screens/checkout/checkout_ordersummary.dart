import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shoppablecart/screens/checkout/checkot_address.dart';

import '../../components/components.dart';
class CheckoutOrderSummary extends StatefulWidget {
  const CheckoutOrderSummary({Key? key}) : super(key: key);

  @override
  State<CheckoutOrderSummary> createState() => _CheckoutOrderSummaryState();
}

class _CheckoutOrderSummaryState extends State<CheckoutOrderSummary> {
  List<String>images=[
    'assets/images/cart1.png',
    'assets/images/cart3.png',
    'assets/images/cate1.png',
    'assets/images/cate2.png',
  ];

  List<String>titles=[
    'Tag Heuer Wristwatch',
    'BeoPlay Speaker ',
    'Electric Kettle',
    'Bang & Olufsen Case',
  ];

  List<String>price=[
    '\$1100',
    '\$304',
    '\$200',
    '\$120',
  ];
  bool isCheck=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 35, right: 16, left: 16),
            child: Row(
              children: [
                InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                    )),
                const SizedBox(
                  width: 112,
                ),
                const Text(
                  "Summary",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          SizedBox(

            height: 406,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               SizedBox(
                 height: 176,
                 child:  ListView.separated(
                   itemBuilder: (context,index)=>buildItems(index),
                   separatorBuilder: (context,index)=>const SizedBox(width:15 ,),
                   itemCount: 4,
                   scrollDirection: Axis.horizontal,
                 ),
               ),
                const SizedBox(height: 25,),
                Container(
                  color: HexColor('#BDC4CC'),
                  height: 1,
                ),
                const SizedBox(height: 22,),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Shipping Address",style:
                        TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 19,),
                      Row(children: [
                        const Text("21, Alex Davidson Avenue, Opposite\n Omegatron, Vicent Smith Quarters, \nVictoria Island, Lagos, Nigeria",
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isCheck = !isCheck;
                            });
                          },
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                isCheck ? HexColor('#092547') : Colors.white,
                                border: Border.all(
                                  color: HexColor('#092547'),
                                )),
                            child: isCheck
                                ? const Center(
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 20,
                                ))
                                : null,
                          ),
                        ),
                      ],),
                      const SizedBox(height: 10,),
                      TextButton(
                          onPressed: (){},
                          child: const Text("change",style:
                            TextStyle(fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),))
                    ],
                  ),
                ),
                const SizedBox(height: 12,),
                Container(
                  color: HexColor('#BDC4CC'),
                  height: 1,
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 84,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 30, right: 30, top: 17,bottom: 17),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                              side: BorderSide(
                                color: HexColor('092547'),
                                width: 1.5
                              ))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const CheckoutAddress()));
                      },
                      child: const SizedBox(
                        width: 146,
                        height: 50,
                        child: Center(
                          child: Text(
                            "BACK",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  width: 23,
                ),
                Expanded(
                    child: EElevatedButton(
                        text: 'Deliver',
                        prColor: '#092547',
                        textColor: Colors.white,
                        onPressed: () {

                        },
                        radius: 3,
                        width: 145,
                        height: 50))
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget buildItems(index)=>Container(
    height: 176,width: 120,
    padding: const EdgeInsets.only(
      left: 16
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(
          images[index],
        ),fit: BoxFit.cover,height: 120,width: 120,),
        const SizedBox(height: 10,),
        Text(titles[index],style:
        const TextStyle(fontSize: 16,fontWeight: FontWeight.w300,),overflow: TextOverflow.ellipsis,),
        const SizedBox(height: 3,),
        Text(price[index],style:
        const TextStyle(fontSize: 16,fontWeight: FontWeight.w300),)
      ],
    ),
  );
}
