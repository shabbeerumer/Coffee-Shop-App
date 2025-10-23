import 'package:coffee_shop_app/component/mysizedbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mytext.dart';

class ordersbutton extends StatelessWidget {
  IconData? icon;
  String data;
   ordersbutton({super.key , required this.icon , required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 130,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: Colors.black
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon , size: 14,),
            mysizedbox(width: 5,),
            mytext(data: data ,fontSize: 14,),
          ],
        )
    );
  }
}
