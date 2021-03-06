import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shoppablecart/components/components.dart';
class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color:Colors.white24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 205,
              width: 375,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Image(image:
                  AssetImage(
                      'assets/images/prodet.png'),),
                  Container(
                    padding:const EdgeInsets.symmetric(
                      horizontal: 16
                    ),
                 child: Row(
                   children:  [
                     InkWell(
                       child:const Icon(Icons.arrow_back_ios,
                         color: Colors.black,size: 20,),
                       onTap: (){},
                     ),
                     const Spacer(),
                     InkWell(
                       onTap: (){},
                       child: Container(
                         height: 40,width: 40,
                         decoration:const BoxDecoration(
                           color: Colors.white,
                           shape: BoxShape.circle
                         ),
                         child:const Icon(
                           Icons.star_border,
                           color: Colors.black,size: 25,
                         ),
                       ),
                     ),
                   ],
                 ),
                  ),


                ],
              ),
            ),
            Container(
              padding:const EdgeInsets.only(
                top: 5,left: 16,right: 16
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Nike Dri-FIT Long Sleeve",style:
                    TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                  const SizedBox(height:25,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding:const EdgeInsets.symmetric(
                            horizontal: 20,vertical: 10
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color:Colors.grey,width: 1),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          height: 40,width: 160,
                          child: Row(
                            children:const [
                              Text("Size",style:
                              TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),),
                              Spacer(),
                              Text("XL",style:
                                TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                      const  SizedBox(width: 23,),
                      Expanded(
                        child: Container(
                          padding:const EdgeInsets.symmetric(
                            horizontal: 20,vertical: 7
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color:Colors.grey,width: 1),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          height: 40,width: 160,
                          child: Row(
                            children: [
                              const Text("Colour",style:
                              TextStyle(fontWeight:FontWeight.w400,fontSize: 14),),
                              const Spacer(),
                              Container(
                                height: 25,width: 25,
                                decoration: BoxDecoration(
                                  color: HexColor('#31407B'),
                                  borderRadius: BorderRadius.circular(7)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 33,),
                  const Text('Details',style:
                    TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  const SizedBox(height: 15,),
                 const SizedBox(
                    width: 343,height: 240,
                    child: Text("Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.\n Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer. \n Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer"
                    ,style: TextStyle(fontSize: 13,height: 2,fontWeight: FontWeight.w400),

                    ),
                  ),


                ],
              ),
            ),
            const  Spacer(),
            Container(
              padding:const EdgeInsets.symmetric(
                 horizontal: 30,vertical: 17
              ),
              height: 85,width: 375,color: Colors.white,
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                      Text("PRICE",style:
                        TextStyle(fontSize:12,fontWeight:FontWeight.w400,color: Colors.grey ),),
                      SizedBox(height: 1,),
                      Text('\$1500',style:
                        TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18),)
                    ],
                  ),
                  const Spacer(),
                  EElevatedButton(
                    onPressed: (){},
                    width: 145,
                    radius: 3,
                    text: 'ADD',
                    prColor: '#092547',
                    textColor: Colors.white,
                    height: 50,

                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
