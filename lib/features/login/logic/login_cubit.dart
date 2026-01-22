

import 'package:doctors/features/login/data/repos/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_result.dart';
import '../data/models/login_request_body.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    var response = await _loginRepo.login(loginRequestBody);
    response.when(success: (data) {
      emit(LoginState.success(data));
    }, failure: (error) {
      emit(LoginState.failure(
          error: error.apiErrorModel.message ?? "Something went wrong"));
    });
  }
}