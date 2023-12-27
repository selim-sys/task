part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitialState extends LoginState {}
class LoginSuccessState extends LoginState {}
class LoginLoadingState extends LoginState {}
class LoginFailureState extends LoginState {
  final String errMsg;
  LoginFailureState(this.errMsg);
}
class LoginChangePasswordVisibility extends LoginState{}


