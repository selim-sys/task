import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/view/constants/colors.dart';
import 'package:task/view/screens/home-page.dart';
import 'package:task/view/screens/login-screen.dart';
import 'package:task/view_model/cubits/login_cubit/login_cubit.dart';
import 'package:task/view_model/network/dio-helper.dart';

void main() {
  DioHelper.init();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => LoginCubit(),),
    ],
      child:  HelmetFacilityApp()));
}
class HelmetFacilityApp extends StatelessWidget {
  const HelmetFacilityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(brightness: Brightness.dark,primarySwatch: Colors.amber,primaryColor: AppColors.yellowColor),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

