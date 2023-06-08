// contanier_button.dart
import 'package:flutter/material.dart';

import '../localization_checker.dart';
import '../thema.dart';
import '../utils/constants.dart';

class LangueButton extends StatelessWidget {
  const LangueButton({
    super.key,
    required this.buttonText,
  });

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        LocalizationChecker.changeLanguge(context);
      },
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: buttonDecoration,
        child: Center(
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2,
                ),
          ),
        ),
      ),
    );
  }
}
