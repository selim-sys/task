import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/view/constants/colors.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.isPassword,
      this.suffixIcon,
      this.validator,
      required this.textInputType,
      this.textEditingController,
      this.suffixPressed,
      required this.hint});
  final String hint;
  IconData? suffixIcon = CupertinoIcons.eye_slash;
  String? Function(String?)? validator;
  final TextInputType textInputType;
  TextEditingController? textEditingController;
  bool isPassword;
  VoidCallback? suffixPressed;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: AppColors.whiteColor),
      cursorColor: Color(0xff40413E),
      obscureText: isPassword,
      controller: textEditingController,
      keyboardType: textInputType,
      validator: validator,
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.blackColor,
          hintText: hint,
          hintStyle: TextStyle(color: Color(0xff40413E)),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0XFF9D9FA0)),
            borderRadius: BorderRadius.circular(12),
          ),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0XFF9D9FA0)),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(12),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 14, horizontal: 22),
          suffixIcon: IconButton(
            onPressed: suffixPressed,
            icon: Icon(suffixIcon),
          ),
      ),
    );
  }
}
