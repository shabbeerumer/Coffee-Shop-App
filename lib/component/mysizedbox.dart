import 'package:flutter/material.dart';

class mysizedbox extends StatelessWidget {
  double height;
  double width;
   mysizedbox({super.key , this.height = 0 , this.width = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
