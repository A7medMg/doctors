import 'package:doctors/core/helpers/spacing_helper.dart';
import 'package:doctors/core/theming/colors.dart';
import 'package:doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context,index){
          return Padding(
            padding: EdgeInsetsDirectional.only(
              start:index==0 ? 0:24.w,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.lightBlue,
                  child: SvgPicture.asset("assets/svg/general_speciality.svg",height: 40.h,width: 40.w,),
                ),
                verticalSpacing(8),
                Text("General",style: TextStyles.font11GrayRegular)


              ],
            ),

          );
        }),
      
    );
  }
}