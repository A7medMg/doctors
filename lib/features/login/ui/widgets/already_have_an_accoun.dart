import 'package:flutter/cupertino.dart';

import '../../../../core/theming/styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Already have an account yet? ',
        style: TextStyles.font12BlackMedium,
        children: <TextSpan>[
          TextSpan(text: 'Sing Up', style: TextStyles.font13BlueSemiBold  ),


        ],
      ),
    );
  }
}
