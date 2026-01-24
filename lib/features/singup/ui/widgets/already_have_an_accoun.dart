import 'package:flutter/cupertino.dart';

import '../../../../core/theming/styles.dart';

class SigUpAlreadyHaveAnAccount extends StatelessWidget {
  const SigUpAlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Already have an account ? ',
        style: TextStyles.font12BlackMedium,
        children: <TextSpan>[
          TextSpan(text: 'Login', style: TextStyles.font13BlueSemiBold  ),


        ],
      ),
    );
  }
}
