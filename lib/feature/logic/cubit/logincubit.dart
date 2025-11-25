import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_chatapp/feature/logic/cubit/loginstate.dart';

class Logincubit extends Cubit<Loginstate> {
  Logincubit() : super(LoginTabChange(isLogin: true));
  //لو المستخدم مسجل قبل كدا
  void setsigninnActive() {
    emit(LoginTabChange(isLogin: true));
  }

  //لو مش مسجل قبل كدا
  void setsignupActive() {
    emit(LoginTabChange(isLogin: false));
  }
//للذهاب الي صفحة التحقق
  void gotoVerificationScreen() {
    emit(GoToVerificationScreen());
  }
//للذهاب الي الصفحة الرئيسية
  void gotoHomeScreen() {
    emit(GoToHomeScreen());
  }
}
