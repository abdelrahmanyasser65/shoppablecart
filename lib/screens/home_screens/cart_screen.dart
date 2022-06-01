import 'package:flutter/material.dart';
import 'package:shoppablecart/components/components.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);


  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
List<String>images=[
  'assets/images/cart1.png',
  'assets/images/cart3.png',
  'assets/images/cate1.png',
  'assets/images/cate2.png',
  'assets/images/cart1.png',
  'assets/images/cart3.png',
  'assets/images/cate1.png',
  'assets/images/cate2.png',
];

List<String>titles=[
  'Tag Heuer Wristwatch',
  'BeoPlay Speaker',
  'Electric Kettle',
  'Bang & Olufsen Case',
  'Tag Heuer Wristwatch',
  'BeoPlay Speaker',
  'Electric Kettle',
  'Bang & Olufsen Case',
];

List<String>price=[
  '\$1100',
  '\$304',
  '\$200',
  '\$120',
  '\$1100',
  '\$304',
  '\$200',
  '\$120',
];
List favi=[];
int counter=0;
DismissDirection ?dir;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: double.infinity,width: double.infinity,
            child: SingleChildScrollView(
              padding:const EdgeInsets.only(
                  top: 30,left: 16,right: 16
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 590,
                    child:ListView.separated(
                        itemBuilder: (context,index)=>buildCart(index),
                        separatorBuilder: (context,index)=>const SizedBox(height: 16,),
                        itemCount:titles.length),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 85,width: double.infinity,
            color: Colors.white,
            padding:const EdgeInsets.only(
              right: 30,left: 30,top: 17,bottom: 17
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const [
                    Text("TOTAL",style:
                      TextStyle(fontSize: 12,color: Colors.grey),),
                    SizedBox(height: 2,),
                    Text("\$4500",style:
                      TextStyle(fontSize: 18,fontWeight:FontWeight.bold),)
                  ],
                ),
                const Spacer(),
                EElevatedButton(
                    text: 'CHECKOUT',
                    prColor: '#092547',
                    textColor: Colors.white,
                    onPressed: (){},
                    radius: 3,
                    width: 110,
                    height: 50)
              ],
            ),
          ),
        ],
      ),

    );
  }

  Widget buildCart(index)=>Dismissible(
    key: Key(titles[index]),
    onDismissed:(DismissDirection dir){
      setState((){
         if(dir==DismissDirection.endToStart){
           titles.removeAt(index);
           images.removeAt(index);
           price.removeAt(index);
         }
         if(dir==DismissDirection.startToEnd){
           titles.removeAt(index);
           images.removeAt(index);
           price.removeAt(index);
         }
        dir=dir;
      });
    } ,
    background:Container(
      color: Colors.yellow,
      padding:const EdgeInsets.all(25),
      alignment: Alignment.centerLeft,
      child:const Image(image:
      AssetImage(
          'assets/images/Icon_Wishlist.png'
      ),width: 45,height: 45,color: Colors.white,),
    ),
    secondaryBackground: Container(
      color: Colors.red,
      padding:const EdgeInsets.all(25),
      alignment: Alignment.centerRight,
      child:const Image(image:
      AssetImage(
          'assets/images/Icon_Delete.png'
      ),width: 45,height: 45,color: Colors.white,),

    ),
    child: SizedBox(
      width: double.infinity,
      height: 120,
      child:Row(

        children: [
          Image(image:
          AssetImage(
            images[index],
          ),fit: BoxFit.cover,width: 120,),
          const SizedBox(width:30 ,),
          Container(
            padding:const EdgeInsets.symmetric(
                vertical: 15
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titles[index],style:
                const TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                const SizedBox(height: 3,),
                Text(price[index],style:
                const TextStyle(fontWeight:FontWeight.w400,fontSize: 16),),
                const SizedBox(height: 16,),
                Container(
                  height: 30,width: 115,
                  padding:const EdgeInsets.only(
                      top: 5,left:10,right:10
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child:const Icon(Icons.add,size:20 ,)
                        ,onTap: (){

                         setState((){
                           ++counter;
                         });
                      },
                      ),
                      const  SizedBox(width: 16,),
                      Text("$counter",style:
                      const TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      const SizedBox(width: 16,),
                      InkWell(
                        child:const Icon(Icons.remove,size: 20,),
                        onTap: (){
                          setState((){
                            if(counter >0){
                              --counter;
                            }
                          });
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
