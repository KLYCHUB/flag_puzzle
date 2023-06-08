import 'package:flutter/material.dart';

import '../thema.dart';
import '../utils/constants.dart';

class HighScoreCard extends StatelessWidget {
  const HighScoreCard({
    super.key,
    required this.soruSayiyi,
    required this.score,
  });

  final String soruSayiyi;

  final String score;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: highScoreHorizontal,
        vertical: highScoreVertical,
      ),
      child: Card(
        child: Container(
          // Container için bir BoxDecoration tanımlayalım
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [gradientColor1, gradientColor2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(highScoreCardCircular),
          ),
          child: ListTile(
            leading: const Icon(Icons.timer),
            title: Text(soruSayiyi),
            trailing: Text(score),
            // ListTile için de bir şekil verelim
            contentPadding: const EdgeInsets.all(highScoreCardEdgeInsetsAll),
            tileColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(highScoreCardBorderRadius),
            ),
          ),
        ),
      ),
    );
  }
}
