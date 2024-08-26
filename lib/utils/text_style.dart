import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../constant/app_colors.dart';

class HeadingTwo extends StatelessWidget {
  final String data ;
  final Color? color;
  final double? fontSize;

  const HeadingTwo({super.key, required this.data, this.color, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(data,style: TextStyle(
      color:color?? AppColors.textColor ,
      fontSize:fontSize?? Get.height *.03,
      fontWeight: FontWeight.w600
    ),);
  }
}
