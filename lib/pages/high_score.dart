import 'package:easy_localization/easy_localization.dart';
import 'package:flag_puzzle/thema.dart';
import 'package:flutter/material.dart';

import '../widgets/high_score_card.dart';

class HighScoreScreen extends StatefulWidget {
  const HighScoreScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HighScoreScreenState createState() => _HighScoreScreenState();
}

class _HighScoreScreenState extends State<HighScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backgroundColor,
        foregroundColor: Colors.amber,
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
            onPressed: () {},
            iconSize: 24.0,
            color: Colors.white,
          ),
        ),
        title: ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [gradientColor1, gradientColor2],
          ).createShader(bounds),
          child: Text(
            'high_score'.tr(),
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
            HighScoreCard(
              soruSayiyi: 'score30'.tr(),
              score: '150',
            ),
            HighScoreCard(
              soruSayiyi: 'score60'.tr(),
              score: '300',
            ),
            HighScoreCard(
              soruSayiyi: 'score120'.tr(),
              score: '600',
            ),
          ],
        ),
      ),
    );
  }
}
