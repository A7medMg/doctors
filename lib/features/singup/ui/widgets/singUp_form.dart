
import 'package:doctors/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing_helper.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../logic/sign_up_cubit.dart';

class SingUpForm extends StatefulWidget {
  const SingUpForm({super.key});

  @override
  State<SingUpForm> createState() => _SingUpForm();
}

class _SingUpForm extends State<SingUpForm> {
  late TextEditingController passwordController;


  bool _isObscure = true;
  bool _isObscure2 = true;
  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;
  @override
  void initState() {
    // TODO: implement initState
    passwordController=context.read<SignUpCubit>().passwordController;
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
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            validator: (v){
              if(v==null || v.isEmpty){
                return "name is required";
              }
            },
            controller: context.read<SignUpCubit>().nameController,
            hintText: "Name",
          ),
          verticalSpacing(18),
          AppTextFormField(
            validator: (v){
              if(v==null || v.isEmpty||!AppRegex.isEmailValid(v)){
                return "Email is required";
              }
            },
            controller: context.read<SignUpCubit>().emailController,
            hintText: "Email",
          ),
          verticalSpacing(18),
          AppTextFormField(
            validator: (v){
              if(v==null || v.isEmpty){
                return "Phone is required";
              }
            },
            controller: context.read<SignUpCubit>().phoneController,
            hintText: "Phone",
          ),

          verticalSpacing(18),
          AppTextFormField(
            validator: (value){
              if (value == null || value.isEmpty ) {
                return 'Please enter a valid password';
              }
            },
            controller: context.read<SignUpCubit>().passwordController,
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
          verticalSpacing(18),
          AppTextFormField(
            validator: (value){
              if (value == null || value.isEmpty||value!=context.read<SignUpCubit>().passwordController.text ) {
                return 'please confirm password';
              }
            },
            controller: context.read<SignUpCubit>().confirmPasswordController,
            hintText: "confirm Password",
            obscureText: _isObscure2 ,
            suffixIcon: GestureDetector(
                onTap: (){
                  setState(() {
                    _isObscure2 = !_isObscure2;
                  });
                },
                child: Icon(_isObscure2?CupertinoIcons.eye_slash_fill:CupertinoIcons.eye_fill)),
          ),
          verticalSpacing(18),
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
