import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../thema.dart';
import '../utils/constants.dart';
import '../widgets/high_score_button.dart';
import '../widgets/langue_button.dart';
import '../widgets/logo.dart';
import '../widgets/play_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Logo(),
              smallSpace,
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [gradientColor1, gradientColor2],
                ).createShader(bounds),
                child: Text(
                  'welcomeLang'.tr(),
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 2,
                      ),
                ),
              ),
              midSpace,
              PlayButton(buttonText: 'play'.tr()),
              smallSpace,
              HighscoreButton(buttonText: 'high_score'.tr()),
              smallSpace,
              const LangueButton(),
            ],
          ),
        ),
      ),
    );
  }
}
