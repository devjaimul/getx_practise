import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/constant/app_colors.dart';
import 'package:getx_practise/utils/text_style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData? icon;
  final Color? color;
  const CustomButton({super.key, required this.onPressed, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: color ?? Colors.green,
    ),
        child: Icon(
          icon ??Icons.add,
          color: Colors.white,
        ),
    );
  }
}

class CustomButtonTwo extends StatelessWidget {
  final VoidCallback onPressed;
  final String data;
  final Color? color;
  const CustomButtonTwo({super.key, required this.onPressed, this.color, required this.data});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? AppColors.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        child: HeadingTwo(data: data,fontSize: Get.height*.022,),
      ),
    );
  }
}