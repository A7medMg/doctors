
import 'package:doctors/features/singup/data/models/sing_up_request_body.dart';
import 'package:doctors/features/singup/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_result.dart';
import '../data/repos/sign_up_repo.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;

  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignUpState() async {
    emit(const SignUpState.loading());
    var response = await _signUpRepo.signUp(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (data) {
        emit(SignUpState.success(data));
      },
      failure: (error) {
        emit(
          SignUpState.failure(
            error: error.apiErrorModel.message ?? "Something went wrong",
          ),
        );
      },
    );
  }
}
