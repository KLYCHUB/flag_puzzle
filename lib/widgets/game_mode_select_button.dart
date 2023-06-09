import 'package:flag_puzzle/pages/game_screen.dart';
import 'package:flutter/material.dart';

import '../thema.dart';
import '../utils/constants.dart';

class GameModSellectButton extends StatelessWidget {
  const GameModSellectButton({
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
            return const GameScreen();
          },
        ));
      },
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      child: Container(
        width: gameSelcetButtonHeight,
        height: gameSelcetButtonWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          gradient: const LinearGradient(
            colors: [
              gradientColor1,
              gradientColor2,
            ],
          ),
        ),
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
