import 'package:coffee_shop_app/pages/cart.dart';
import 'package:coffee_shop_app/pages/homepage.dart';
import 'package:coffee_shop_app/utlls/colors.dart';
import 'package:flutter/material.dart';

class mybottomNavigationBar extends StatefulWidget {
  const mybottomNavigationBar({super.key});

  @override
  State<mybottomNavigationBar> createState() => _mybottomNavigationBarState();
}

class _mybottomNavigationBarState extends State<mybottomNavigationBar> {
  @override
  int bottomnav = 0;

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColors.browncolor,
      unselectedItemColor: AppColors.graycolor,
      showSelectedLabels: true,
      onTap: (value) {
        bottomnav = value;

        switch(value){
          case 0:
            Navigator.push(context, MaterialPageRoute(builder: (context)=> homepage()));
            break;
          case 1:
            Navigator.push(context, MaterialPageRoute(builder: (context) => cart()));
        }

        setState(() {});
        print(bottomnav);
      },
      currentIndex: bottomnav,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'shopping'),
      ],
    );
  }
}
