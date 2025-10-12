import 'package:flutter/material.dart';
import '../utlls/colors.dart';

class detail_page_boxes1 extends StatelessWidget {
  IconData? icon;
   detail_page_boxes1({super.key , required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Color(0xffEDEDED),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Icon(icon , color: AppColors.browncolor,),
    );
  }
}
