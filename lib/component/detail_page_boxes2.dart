import 'package:coffee_shop_app/utlls/colors.dart';
import 'package:flutter/material.dart';
import 'mytext.dart';

class detail_page_boxes2 extends StatefulWidget {
  String size;
  Function()? onTap;
  bool isSelected;
  detail_page_boxes2({super.key , required this.size , required this.onTap , required this.isSelected});

  @override
  State<detail_page_boxes2> createState() => _detail_page_boxes2State();
}

class _detail_page_boxes2State extends State<detail_page_boxes2> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onTap,
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
            border: Border.all(
                color: widget.isSelected  ? AppColors.browncolor : AppColors.graycolor
            ),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: mytext(data: widget.size , textAlign: TextAlign.center,)),
      ),
    );
  }
}
