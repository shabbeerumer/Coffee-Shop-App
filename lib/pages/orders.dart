import 'package:coffee_shop_app/component/mysizedbox.dart';
import 'package:coffee_shop_app/component/mytext.dart';
import 'package:coffee_shop_app/component/ordersbutton3.dart';
import 'package:coffee_shop_app/utlls/colors.dart';
import 'package:flutter/material.dart';
import '../component/ordersbutton.dart';
import '../component/ordersbutton2.dart';

class orders extends StatefulWidget {
  const orders({super.key});

  @override
  State<orders> createState() => _ordersState();
}

class _ordersState extends State<orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Orders')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mysizedbox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ordersbutton3(text: 'Deliver', height: 40, width: 150, color: AppColors.browncolor, textcolor: AppColors.whitecolor,),

                ordersbutton3(text: 'Pick Up', height: 40, width: 150, color: AppColors.graycolor, textcolor: AppColors.blackcolor,)

              ],
            ),
            mysizedbox(height: 15,),


            mytext(data: 'Delivery Address' , fontSize: 16, fontWeight: FontWeight.bold,),
            mysizedbox(height: 10,),
            mytext(data: 'Jl. Kpg Sutoyo' , fontSize: 14, fontWeight: FontWeight.bold,),
            mysizedbox(height: 15),

            mytext(data: 'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.' , fontSize: 12,),
            mysizedbox(height: 15),

            Row(
              children: [
                ordersbutton(icon: Icons.email, data: 'Edit Address' , ),
                mysizedbox(width: 15),
                ordersbutton(icon: Icons.note, data: 'Add Note'),
              ],
            ),
            mysizedbox(height: 15),

            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('images/1Image.png', height: 100, width: 100),
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: AppColors.blackcolor, height: 1.4),
                    children: [
                      TextSpan(text: 'Caffe Mocha \n' , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,)),
                      TextSpan(text: 'Deep Foam' , style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                OrdersButton2(icon: Icons.remove),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.blackcolor),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: mytext(data: '1' , fontSize: 14, fontWeight: FontWeight.bold,),
                  ),
                ),
                OrdersButton2(icon: Icons.add),
              ],
            ),
            mysizedbox(height: 15),

            Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.blackcolor
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.discount),
                    mytext(data: '1 Discount is Applies'  , fontSize: 14, fontWeight: FontWeight.bold,),
                  ],
                ),

                Icon(Icons.arrow_right),

              ],
            ),
          ),
            mysizedbox(height: 15),

            mytext(data: 'Payment Summary' , fontSize: 16, fontWeight: FontWeight.bold,),
            mysizedbox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                mytext(data: 'Price' , fontSize: 14, ),
                mytext(data: '4.53' , fontSize: 14, fontWeight: FontWeight.bold,),
              ],
            ),
            mysizedbox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                mytext(data: 'Delivery Fee' , fontSize: 14),
                RichText(text: TextSpan(
                    style: TextStyle(color: AppColors.blackcolor ,fontSize: 14 , fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(text: '2.0' , style: TextStyle(decoration: TextDecoration.lineThrough)),
                  TextSpan(text: '   1.0' )
                ]))
              ],
            ),
            mysizedbox(height: 15),

            Container(

             height: 40,
             width: double.infinity,
             decoration: BoxDecoration(
               color: AppColors.browncolor,
               borderRadius: BorderRadius.circular(10)
             ),
             child: Center(child: mytext(data: 'Order' , color: AppColors.whitecolor,)),
           )


          ],
        ),
      ),
    );
  }
}
