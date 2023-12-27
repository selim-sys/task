import 'package:flutter/material.dart';
import 'package:task/view/constants/colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key, required this.text, this.onPressed, required this.w, required this.h,
  });
  final String text;
  final void Function()? onPressed;

  final double w,h;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text,style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.black
      ),),
      style: ElevatedButton.styleFrom(
          elevation: 4,
          backgroundColor: AppColors.yellowColor,
          minimumSize: Size(w, h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32)
          )
      ),
    );
  }
}