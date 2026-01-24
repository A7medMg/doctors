
import 'package:doctors/core/theming/colors.dart';
import 'package:doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing_helper.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinLength;

  const PasswordValidation({
    super.key,
    required this.hasUppercase,
    required this.hasLowercase,
    required this.hasNumber,
    required this.hasSpecialChar,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      buildValidationRow("At least 1 uppercase letter", hasUppercase),
      verticalSpacing(2),
      buildValidationRow("At least 1 lowercase letter", hasLowercase),
      verticalSpacing(2),
      buildValidationRow("At least 1 number", hasNumber),
      verticalSpacing(2),
      buildValidationRow("At least 1 special character", hasSpecialChar),
      verticalSpacing(2),
      buildValidationRow("At least 8 characters", hasMinLength),

    ]);
  }

 Widget buildValidationRow(String text, bool hasValidation) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.greyColor,

        ),
        horizontalSpacing(6),
        Text(text, style:TextStyles.font12DarkBlueRegular.copyWith(
          decoration: hasValidation? TextDecoration.lineThrough:null,
          decorationColor: Colors.green,
          decorationThickness: 2,
          color: hasValidation?ColorsManager.gray:ColorsManager.darkBlue
        )),
      ],
    );
 }
}
