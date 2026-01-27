
import 'package:doctors/core/helpers/shared_pref_constans.dart';
import 'package:doctors/core/helpers/shared_pref_helper.dart';
import 'package:doctors/core/networking/dio_factory.dart';
import 'package:doctors/features/login/data/repos/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_result.dart';
import '../data/models/login_request_body.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
final formKey = GlobalKey<FormState>();
  void emitLoginState(LoginRequestBody loginRequestBody) async {
  
    emit(const LoginState.loading());
    var response = await _loginRepo.login(loginRequestBody);
    response.when(success: (data) async{
      await saveUserToken(data.userData?.token??"");
      
    
      
      emit(LoginState.success(data));
    }, failure: (error) {
      emit(LoginState.failure(
          error: error.apiErrorModel.message ?? "Something went wrong"));
    });
  }
  Future <void> saveUserToken(String token)async{
    await SharedPrefHelper.setData(SharedPrefConstans.saveToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  
  }

}