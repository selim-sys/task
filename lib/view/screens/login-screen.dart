import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/view/constants/assets.dart';
import 'package:task/view/constants/colors.dart';
import 'package:task/view/screens/home-page.dart';
import 'package:task/view/widgets/custom-button.dart';
import 'package:task/view/widgets/custom-textformfield.dart';

import '../../view_model/cubits/login_cubit/login_cubit.dart';
import '../constants/data.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = BlocProvider.of<LoginCubit>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Form(
            key: loginCubit.formKey,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 330,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppAssets.background))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 50),
                  child: Column(
                    children: [
                      Column(
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
                              textEditingController: loginCubit.emailController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'enter your e-mail';
                                } else if (!RegExp(validationEmail)
                                    .hasMatch(val.trim())) {
                                  return 'email is not valid!';
                                } else {
                                  return null;
                                }
                              },
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
                              textEditingController:
                                  loginCubit.passwordController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'enter your password';
                                } else if (!RegExp(validationPassword)
                                    .hasMatch(val.trim())) {
                                  return 'password is not valid!';
                                } else {
                                  return null;
                                }
                              },
                              hint: 'password here',
                              isPassword: true,
                              textInputType: TextInputType.text),
                          Align(
                            alignment: Alignment.topRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'FORGET PASSWORD !',
                                style: TextStyle(
                                  color: AppColors.blackColor.withOpacity(0.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        w: 230,
                        h: 55,
                        text: 'LOGIN',
                        onPressed: () {
                          if (loginCubit.formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          }
                        },
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
