import 'package:doctors/features/login/logic/login_cubit.dart';
import 'package:doctors/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing_helper.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  late TextEditingController passwordController;


  bool _isObscure = true;
  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;
  @override
  void initState() {
    // TODO: implement initState
    passwordController=context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
    super.initState();
  }
  setupPasswordControllerListener(){
    passwordController.addListener((){
      setState(() {
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialChar = AppRegex.hasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }
  @override
  void dispose() {
   passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            validator: (v){
              if(v==null || v.isEmpty||!AppRegex.isEmailValid(v)){
                return "Email is required";
              }
            },
            controller: context.read<LoginCubit>().emailController,
            hintText: "Email",
          ),
          verticalSpacing(18),
          AppTextFormField(
            validator: (value){
              if (value == null || value.isEmpty ) {
                return 'Please enter a valid password';
              }
            },
            controller: context.read<LoginCubit>().passwordController,
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
          PasswordValidation(
            hasUppercase: hasUppercase,
            hasLowercase: hasLowercase,
            hasNumber: hasNumber,
            hasSpecialChar: hasSpecialChar,
            hasMinLength: hasMinLength,

          ),

        ],
      ),
    );
  }
}
