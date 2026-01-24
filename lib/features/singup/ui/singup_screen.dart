import 'package:doctors/features/singup/ui/widgets/already_have_an_accoun.dart';
import 'package:doctors/features/singup/ui/widgets/signup_bloc_listener.dart';
import 'package:doctors/features/singup/ui/widgets/singUp_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/spacing_helper.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../logic/sign_up_cubit.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
            Text("Create Account",style: TextStyles.font24BlueBold,),
              verticalSpacing(8),
              Text("Sign up now and start exploring all that"
                  " our app has to offer. We're excited to welcome you to our community!",
                style: TextStyles.font12GrayRegular,),
              verticalSpacing(36),
              Column(
                children: [
                  SingUpForm(),
                  verticalSpacing(24),
                  AppTextButton(buttonText: 'SignUp', textStyle: TextStyles.font16WhiteSemiBold, onPressed: () {
                    validateThenSignUp(context);

                  },),
                  verticalSpacing(16),
                  GestureDetector(
                      onTap: (){
                        context.pushNamed(Routes.loginScreen);
                      },
                      child: SigUpAlreadyHaveAnAccount()),
                  SignupBlocListener(),

          
          
          



          
          
          
                ],
              )
          
          
          ],),
        ),
      )),

    );
  }

  void validateThenSignUp(BuildContext context) {
    if(context.read<SignUpCubit>().formKey.currentState!.validate()){
      context.read<SignUpCubit>().emitSignUpState(
      );
    }
  }
}
