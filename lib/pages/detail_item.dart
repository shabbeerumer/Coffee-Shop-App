import 'package:coffee_shop_app/component/detail_page_boxes1.dart';
import 'package:coffee_shop_app/component/mysizedbox.dart';
import 'package:coffee_shop_app/component/mytext.dart';
import 'package:coffee_shop_app/component/ordersbutton3.dart';
import 'package:coffee_shop_app/utlls/colors.dart';
import 'package:flutter/material.dart';
import '../component/detail_page_boxes2.dart';
import 'orders.dart';

class detail_item extends StatefulWidget {
  const detail_item({super.key});

  @override
  State<detail_item> createState() => _detail_itemState();
}

class _detail_itemState extends State<detail_item> {
  int selectedSize = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsetsGeometry.only(right: 2),
        centerTitle: true,
        title: mytext(data: 'Detail'),
        actions: [
          Icon(Icons.favorite_border),
        ]
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('images/1Image.png')),
                mysizedbox(
                  height: 10,
                ),
                mytext(data: 'Caffe Mocha' , fontSize: 20, fontWeight: FontWeight.bold,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    mytext(data: 'Ice/Hot' , fontSize: 12,),

                   Row(

                     children: [
                       detail_page_boxes1(icon: Icons.delivery_dining,),
                       mysizedbox(width: 5,),
                       detail_page_boxes1(icon: Icons.coffee,),
                       mysizedbox(width: 5,),
                       detail_page_boxes1(icon: Icons.local_drink,),

                     ],
                   ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star , color: Colors.orange,),
                    mytext(data: '4.8' , fontSize: 20, fontWeight: FontWeight.bold,),
                    mytext(data: '(230)' , fontSize: 12,color: AppColors.graycolor,),

                  ],
                ),
                Divider(),
                mysizedbox(
                  height: 10,
                ),
                mytext(data: 'Description', fontSize: 24, fontWeight: FontWeight.bold,),
                mysizedbox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(
                        style: TextStyle(color: AppColors.graycolor),
                        text: 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..') , TextSpan(text: 'Read More' , style: TextStyle(color: AppColors.browncolor))]
                )),

               mysizedbox(
                 height: 10,
               ),
                mytext(data: 'Size' , fontSize: 24, fontWeight: FontWeight.bold,),
                mysizedbox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    detail_page_boxes2(
                      size: 'S',
                      isSelected: selectedSize == 0,
                      onTap: () {
                        setState(() => selectedSize = 0);
                      },
                    ),
                    detail_page_boxes2(
                      size: 'M',
                      isSelected: selectedSize == 1,
                      onTap: () {
                        setState(() => selectedSize = 1);
                      },
                    ),
                    detail_page_boxes2(
                      size: 'L',
                      isSelected: selectedSize == 2,
                      onTap: () {
                        setState(() => selectedSize = 2);
                      },
                    ),
                  ],
                ),
                mysizedbox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                          text: TextSpan(
                            children: [TextSpan(text: 'Price \n' , style: TextStyle(fontSize: 14 , color: AppColors.graycolor)) , TextSpan(text: "\$ 4.53" , style: TextStyle(color: AppColors.browncolor , fontSize: 18))]
                          )),

                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => orders() ));
                        },
                    child:
                    ordersbutton3(text: 'Buy Now', height: 50, width: 200, color: AppColors.browncolor, textcolor: AppColors.whitecolor,)
                        // Container(
                        //   height: 50,
                        //   width: 200,
                        //   decoration: BoxDecoration(color: AppColors.browncolor,borderRadius: BorderRadius.circular(10)),
                        //   child: Center(child: mytext(data: 'Buy Now' ,textAlign: TextAlign.center, color: AppColors.whitecolor,)),
                        // ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
