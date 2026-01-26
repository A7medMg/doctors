import 'package:doctors/core/helpers/spacing_helper.dart';
import 'package:doctors/core/theming/colors.dart';
import 'package:doctors/core/theming/styles.dart';
import 'package:doctors/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecializationItemListView extends StatelessWidget {
  final int curentIndex;
  final SpecializationsData specializationsData;

  const SpecializationItemListView({super.key, required this.curentIndex, required this.specializationsData});

  @override
  Widget build(BuildContext context) {
  return  Padding(
            padding: EdgeInsetsDirectional.only(
              start:curentIndex==0 ? 0:24.w,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.lightBlue,
                  child: SvgPicture.asset("assets/svg/general_speciality.svg",height: 40.h,width: 40.w,),
                ),
                verticalSpacing(8),
                Text(specializationsData.name??"Specality",style: TextStyles.font11GrayRegular)


              ],
            ),

          );
  }
}