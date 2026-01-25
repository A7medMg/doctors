import 'package:doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityAndSeeAll extends StatelessWidget {
  const DoctorSpecialityAndSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Doctor speciality",style: TextStyles.font18DarkBlueSemiBold,),
        const Spacer(),
        Text("See all",style: TextStyles.font12BlueRegular,),
      ],
    );
  }
}