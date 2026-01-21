import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing_helper.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../widgets/already_have_an_accoun.dart';
import '../widgets/terms_and_conditions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
   bool _isObscure = true;
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
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AppTextFormField(
                      hintText: "Email",
                      ),
                      verticalSpacing(18),
                      AppTextFormField(
                        hintText: "Password",
                        obscureText: _isObscure ,
                        suffixIcon: GestureDetector(
                            onTap: (){
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            child: Icon(_isObscure?CupertinoIcons.eye_slash_fill:CupertinoIcons.eye_fill)),
                      ),
                      verticalSpacing(24),
                      Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text("Forgot Password?",style: TextStyles.font13BlueRegular,)),
                      verticalSpacing(40),
                      AppTextButton(buttonText: 'Login', textStyle: TextStyles.font16WhiteSemiBold, onPressed: () {  },),
                      verticalSpacing(16),
                     const TermsAndConditions(),
                      verticalSpacing(60),
                      AlreadyHaveAnAccount(),



                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}