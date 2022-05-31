
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class CategoryResult extends StatefulWidget {

  const CategoryResult({Key? key}) : super(key: key);

  @override
  State<CategoryResult> createState() => _CategoryResultState();
}

class _CategoryResultState extends State<CategoryResult> {
List<String>images=[
  'assets/images/product1.png',
  'assets/images/cate1.png',
  'assets/images/cate2.png',
  'assets/images/cate3.png',
  'assets/images/product1.png',
  'assets/images/cate1.png',
  'assets/images/cate2.png',
  'assets/images/cate3.png',
];

List<String>titles=[
  'BeoPlay Speaker',
  'B&o Desk Lamp',
  'BeoPlay Stand Speaker',
  'B&O Phone Case',
      'BeoPlay Speaker',
  'B&o Desk Lamp',
  'BeoPlay Stand Speaker',
  'B&O Phone Case'
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding:const EdgeInsets.only(
          top: 95,left: 16,right: 16
          ),
          width: double.infinity,
          child: SingleChildScrollView(
            padding:const EdgeInsets.only(
              bottom: 10
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: (){},
                        child:const Icon(Icons.arrow_back_ios,size: 20,)),
                    const SizedBox(width: 135,),
                    const Text("Men",style:
                      TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
                  ],
                ),
               // SizedBox(height: 24,),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics:const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1/1.96,
                  children: List.generate(8, (index) =>
                      buildCate(index)),

                ),

              ],
            ),
          ),
        ),
    );
  }

  Widget buildCate(index)=>Stack(
    alignment: AlignmentDirectional.topEnd,
    children: [
      SizedBox(
        height: 320,width: 165,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image:
            AssetImage(
                images[index]
            ),fit: BoxFit.cover,width: double.infinity,),
            const SizedBox(height: 10,),
            Text(titles[index],style:
            const  TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
              maxLines: 1,overflow: TextOverflow.ellipsis,),
            const  SizedBox(height: 3,),
            const Text("Bang and Olufsen",style:
            TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
            const SizedBox(height: 3,),
            const Text("\$755",style:
            TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)
          ],
        ),
      ),
      if(index==2||index==6)
        Container(
          padding:const EdgeInsets.all(8),
          child: Container(
            padding:const EdgeInsets.symmetric(
              horizontal: 13,vertical: 5
            ),
            height: 25,width: 55,
            decoration: BoxDecoration(
              color: HexColor('#E80057'),
              borderRadius: BorderRadius.circular(5)
            ),
            child:const Text("New",style:
              TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
          ),
        ),
    ],
  );
}
