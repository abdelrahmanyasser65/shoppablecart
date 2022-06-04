import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'account_trackorder.dart';
class Iterniray extends StatelessWidget {
  const Iterniray({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 35,
                right: 16,
                left: 16),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountTrackOrder()));
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                    )),
                const SizedBox(
                  width: 72,
                ),
                const Text(
                  "OD - 424923192 - N",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
               const Spacer(),
                const Image(image: AssetImage('assets/images/Map_View.png'))
              ],
            ),
          ),
          const  SizedBox(height: 33,),
          Container(
            padding:const EdgeInsets.only(left: 16),
            child: SizedBox(
              height:533,width: 280 ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 buildItems(
                     '20/8'
                     , '10:00 AM',
                     'Order Signed',
                     'Lagos State, Nigeria',
                     true),
                  buildDiv(true),
                  buildItems(
                      '21/8'
                      , '12:00 AM',
                      'Order Processed',
                      'Lagos State, Nigeria',
                      true),
                  buildDiv(true),
                  buildItems(
                      '21/8'
                      , '04:00 AM',
                      'Shipped',
                      'Lagos State, Nigeria',
                      true),
                  buildDiv(false),
                  buildItems(
                      ''
                      , '',
                      'Out for delivery',
                      'Edo State, Nigeria',
                      false),
                  buildDiv(false),
                  buildItems(
                      ''
                      , '',
                      'Delivered',
                      'Edo State, Negeria',
                      false),



                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
  Widget buildItems(
      date,time,stats,address,done
      )=>Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(date,style:const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300
          ),),
          const  SizedBox(height: 2,),
          Text(time,style:
          const  TextStyle(fontWeight: FontWeight.w300,fontSize: 11),)
        ],
      ),
      SizedBox(width:done? 30:75,),
      Container(
        height: 35,width: 35,
        padding:const EdgeInsets.all(5),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: Colors.grey,
                width: 1
            )
        ),
        child:done? Container(
          height: 16,width: 16,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: HexColor('#092547')
          ),
        ):null,
      ),
      const  SizedBox(width: 47,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(stats,style:
          const  TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
          const  SizedBox(height: 4,),
          Text(address,
            style:const TextStyle(fontSize: 12),)
        ],
      ),
    ],
  );
  Widget buildDiv(done)=>Row(
    children: [
      const SizedBox(width:93,),
      SizedBox(
        width: 1.5,
        child: Container(
          height: 85,
          color:done? HexColor('#092547'):HexColor('#DDDDDD'),
        ),
      )
    ],
  );
}
