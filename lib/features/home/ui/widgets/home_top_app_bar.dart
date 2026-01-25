import 'package:doctors/core/theming/colors.dart';
import 'package:doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopAppBar extends StatelessWidget {
  const HomeTopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Ahmed!",style: TextStyles.font18DarkBlueBold,),
            Text("How are you today?",style: TextStyles.font11GrayRegular,),


          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManager.moreLighterGray,
          child: SvgPicture.asset("assets/svg/notification.svg"),
        )

      ],
    );
  }
}