import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../thema.dart';
import '../widgets/game_mode_select_button.dart';

class GameModeScreen extends StatelessWidget {
  const GameModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backgroundColor,
        leading: ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              colors: [gradientColor1, gradientColor2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds);
          },
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 24.0,
            color: Colors.white,
          ),
        ),
        title: ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [gradientColor1, gradientColor2],
          ).createShader(bounds),
          child: Text(
            'game_mode_select'.tr(),
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2,
                ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            Expanded(
                child: GameModSellectButton(buttonText: 'questions30'.tr())),
            const Spacer(flex: 1),
            Expanded(
                child: GameModSellectButton(buttonText: 'questions60'.tr())),
            const Spacer(flex: 1),
            Expanded(
                child: GameModSellectButton(buttonText: 'questions120'.tr())),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
