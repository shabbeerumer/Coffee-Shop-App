import 'package:coffee_shop_app/utlls/colors.dart';
import 'package:flutter/material.dart';
import 'mytext.dart';

class ordersbutton3 extends StatefulWidget {
  double height;
  double width;
  String text;
  Color color;
  Color textcolor;

  ordersbutton3({super.key , required this.text , required this.color , required this.height , required this.width , required this.textcolor});

  @override
  State<ordersbutton3> createState() => _ordersbutton2State();
}

class _ordersbutton2State extends State<ordersbutton3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(color: widget.color,borderRadius: BorderRadius.circular(10)),
      child: Center(child: mytext(data: widget.text ,textAlign: TextAlign.center, color: widget.textcolor,)),
    );
  }
}
