import 'package:doctors/core/helpers/extensions.dart';
import 'package:doctors/core/routing/routes.dart';
import 'package:doctors/features/login/ui/widgets/email_and_password.dart';
import 'package:doctors/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing_helper.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';

import '../data/models/login_request_body.dart';
import '../logic/login_cubit.dart';
import 'widgets/already_have_an_accoun.dart';
import 'widgets/terms_and_conditions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back",style: TextStyles.font24BlueBold,),
                verticalSpacing(8),
                Text("We're excited to have you back,"
                    " can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font12GrayRegular,),
                verticalSpacing(36),
                Column(
                  children: [
                   EmailAndPassword(),
                    verticalSpacing(24),

                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text("Forgot Password?",style: TextStyles.font13BlueRegular,)),
                    verticalSpacing(40),
                    AppTextButton(buttonText: 'Login', textStyle: TextStyles.font16WhiteSemiBold, onPressed: () {
                      validateThenLogin(context);
                    },),
                    verticalSpacing(16),
                   const TermsAndConditions(),
                    verticalSpacing(60),
                    GestureDetector(
                        onTap: (){
                          context.pushNamed(Routes.singUpScreen);
                        },
                        child: AlreadyHaveAnAccount()),
                    LoginBlocListener(),




                  ],
                )
              ],
            ),
          ),
        ),
      ),

    );
  }

  void validateThenLogin(BuildContext context) {
    if(context.read<LoginCubit>().formKey.currentState!.validate()){
      context.read<LoginCubit>().emitLoginState(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text
        )
      );
    }
  }
}