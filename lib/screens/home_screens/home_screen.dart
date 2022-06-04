import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shoppablecart/screens/home_screens/category_result.dart';
import 'package:shoppablecart/screens/home_screens/product_details.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 var searchController=TextEditingController();
 List<String>images=[
   'assets/images/Icon_Mens Shoe.png',
   'assets/images/Icon_Womens Shoe.png',
   'assets/images/Icon_Devices.png',
   'assets/images/Icon_Gadgets.png',
   'assets/images/Icon_Gaming.png',
 ];
 List<String>imagesitems=[
   'assets/images/product1.png',
   'assets/images/product2.png',
   'assets/images/cate1.png',
   'assets/images/cate2.png',
   'assets/images/cate3.png',
   'assets/images/product2.png',
 ];
 List<String>titlesItems=[
   'BeoPlay Speaker',
   'Leather Wristwatch',
   'BeoPlay Speaker',
   'Leather Wristwatch',
   'BeoPlay Speaker',
   'Leather Wristwatch',
 ];
 List<String>descrption=[
   'Bang and Olufsen',
   'Tag Heuer',
   'Bang and Olufsen',
   'Tag Heuer',
   'Bang and Olufsen',
   'Tag Heuer',
 ];
 List<String>titles=[
   'Men','Women','Devices','Gadgets','Gaming'
 ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color.fromRGBO(255, 255, 255, 0),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              padding:const EdgeInsets.only(
                  left: 15,right: 15,bottom: 15,top: 60
              ),

              child: TextFormField(
                controller: searchController,
                keyboardType: TextInputType.text,
                style:const TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                cursorColor:Colors.black,cursorHeight: 24,
                decoration: InputDecoration(
                    prefixIcon:const Icon(Icons.search,color: Colors.black87,size: 30,),
                    filled: true,
                    fillColor:const Color.fromRGBO(0, 0, 0, 0.05),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: HexColor('#F4F5F7'),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: HexColor('#F4F5F7'),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    )
                ),

              ),


            ),
            const SizedBox(height:20 ,),
             Expanded(

               child: SingleChildScrollView(
                 padding:const EdgeInsets.only(
                   bottom: 10
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Container(
                      padding:const EdgeInsets.only(
                        left: 16,top: 10
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const Text('Categories',style:
                          TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.bold ),),
                         const SizedBox(height: 19,),
                          SizedBox(
                            height: 90,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index)=>buidlcategories(index),
                                separatorBuilder:(context,index)=> const SizedBox(width: 18,),
                                itemCount: 5),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 50,),
                     Container(
                         padding:const EdgeInsets.only(
                           left: 16
                         ),
                         child:const Text("Best Selling",style:
                           TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                    const  SizedBox(height: 15,),
                      Container(
                        padding:const EdgeInsets.only(
                          left: 16,right: 16
                        ),
                        child: GridView.count(
                            crossAxisCount: 2,
                        shrinkWrap: true,
                          physics:const NeverScrollableScrollPhysics(),
                          mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                          childAspectRatio: 1/1.9,
                          children: List.generate(6, (index) =>
                          builditems(index)),

                        ),
                      )

                   ],
                 ),
               ),
             ),
          ],
        ),
      
    );
  }
  Widget buidlcategories(index)=>InkWell(
    onTap: (){
      index==0?
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetails())):null;
          index==2? Navigator.push(context, MaterialPageRoute(builder: (context)=>const CategoryResult())):null;
    },
    child: SizedBox(

      height:89 ,width:60 ,
      child: Column(
        children: [
          Container(
            decoration:const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
            ),
            height: 60,width: 60,
            child:Image(image:AssetImage(images[index]),),

          ),
          const SizedBox(height: 13,),
          Text(titles[index],style:const
          TextStyle(fontWeight:FontWeight.w400,
              fontSize: 14),)
        ],
      ),
    ),
  );
  Widget builditems(index)=>Container(
    color:const Color.fromRGBO(255, 255, 255,0.5),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(imagesitems[index]),
          fit: BoxFit.cover,width: double.infinity,),
       const SizedBox(height: 10,),
        Text(titlesItems[index],style:
        const  TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
      const  SizedBox(height: 3,),
        Text(descrption[index],maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style:const TextStyle(
          fontSize:12 ,fontWeight:FontWeight.w300 ,color: Colors.grey
        ),),
       const SizedBox(height:3 ,),
       const Text('\$''755',style:
          TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)
      ],
    ),
  );
}
