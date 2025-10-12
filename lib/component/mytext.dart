import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mytext extends StatelessWidget {
  String data;
  TextAlign? textAlign;
  Color? color;
  FontWeight? fontWeight;
  double? fontSize;
   mytext({super.key , this.textAlign , this.color , this.fontWeight , this.fontSize , required this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      data
      ,textAlign: textAlign,
      style: TextStyle(
          color: color ,
          fontWeight: fontWeight ,
          fontSize: fontSize),);
  }
}
