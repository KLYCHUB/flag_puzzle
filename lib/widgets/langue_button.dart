// contanier_button.dart
import 'package:flutter/material.dart';

import '../localization_checker.dart';
import '../thema.dart';
import '../utils/constants.dart';

class LangueButton extends StatelessWidget {
  const LangueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        LocalizationChecker.changeLanguge(context);
      },
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      child: Container(
        width: buttonWidth / 3,
        height: buttonHeight,
        decoration: buttonDecoration,
        child: const Center(child: Icon(Icons.translate)),
      ),
    );
  }
}
