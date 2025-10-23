import 'package:coffee_shop_app/utlls/colors.dart';
import 'package:flutter/material.dart';

class OrdersButton2 extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const OrdersButton2({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.blackcolor, width: 1.5),
        ),
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: 22,
          color: AppColors.blackcolor,
        ),
      ),
    );
  }
}
