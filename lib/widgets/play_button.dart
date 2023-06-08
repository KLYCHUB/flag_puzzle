// contanier_button.dart
import 'package:flutter/material.dart';

import '../pages/high_score.dart';
import '../thema.dart';
import '../utils/constants.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
    required this.buttonText,
  });

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const HighScoreScreen();
          },
        ));
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
