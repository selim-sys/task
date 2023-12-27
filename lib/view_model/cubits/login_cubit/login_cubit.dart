import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../network/dio-helper.dart';
import '../../network/endpoints.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());
  LoginCubit get(context) => BlocProvider.of(context);
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
}
void login({
  required String email,
  required String password
})async{
  // emit(LoginLoadingState());
  var data = {
    'email' : email,
    'password' : password
  };
  await DioHelper.postData(endPoint: EndPoints.loginEndpoint,
      data: data)
      .then((value) {
    debugPrint(value.data.toString());
    var userAccessToken = value.data['token'].toString();
    debugPrint('Token ----> $userAccessToken');
    debugPrint('SUCCESS');
    // emit(LoginSuccessState());
  }).catchError((e){
    // debugPrint(onError.toString());
    debugPrint('FAIL');
    // emit(LoginFailureState(e));
  });

}