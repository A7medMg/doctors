import 'package:doctors/core/theming/colors.dart';
import 'package:doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? hintStyle;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextStyle? style;
  final Color? fillColor;

  const AppTextFormField({
    super.key,
    this.fillColor,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.hintStyle,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor:fillColor?? ColorsManager.moreLighterGray,
        filled: true,
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorsManager.lighterGray,
                width: 1.3,
              ),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorsManager.primaryColor,
                width: 1.3,
              ),
            ),
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText ?? false,
      style: style ?? TextStyles.font14DarkBlueMedium,
    );
  }
}
