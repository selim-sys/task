import 'package:flutter/material.dart';
import 'package:task/view/constants/colors.dart';
import 'package:task/view/widgets/custom-textformfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                    fontSize: 17),
              ),
              SizedBox(
                height: 4,
              ),
              CustomTextFormField(
                  hint: 'email here',
                  isPassword: false,
                  textInputType: TextInputType.emailAddress),
              SizedBox(
                height: 16,
              ),
              Text(
                'Password',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                    fontSize: 17),
              ),
              SizedBox(
                height: 4,
              ),
              CustomTextFormField(
                  hint: 'password here',
                  isPassword: false,
                  textInputType: TextInputType.emailAddress),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'FORGET PASSWORD !',
                    style: TextStyle(
                      color: AppColors.blackColor.withOpacity(0.8),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
