import 'package:doctors/core/helpers/extensions.dart';
import 'package:doctors/core/routing/routes.dart';
import 'package:doctors/core/theming/colors.dart';
import 'package:doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){
      context.pushReplacementNamed(Routes.loginScreen);
    }, 
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(ColorsManager.primaryColor),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      minimumSize: WidgetStateProperty.all(Size(double.infinity, 56)),
      shape: MaterialStateProperty.all(
       RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(16)
       )
      )
      
    ),
    child: Text(
      "Get Started",
      style: TextStyles.font16WhiteSemiBold
    ));
  }
}