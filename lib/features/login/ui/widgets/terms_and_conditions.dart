import 'package:flutter/cupertino.dart';

import '../../../../core/theming/styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return  RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By logging, you agree to our ',
        style: TextStyles.font12GrayRegular,
        children: <TextSpan>[
          TextSpan(text: 'Terms & Conditions ', style: TextStyles.font12BlackMedium),
          TextSpan(text: 'and\n', style:  TextStyles.font12GrayRegular),
          TextSpan(
              text: 'Privacy Policy.', style:  TextStyles.font12BlackMedium.copyWith(height: 1.5)),

        ],
      ),
    );
  }
}
